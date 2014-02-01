/*

    e.g.,

    $('#table').kbaseTable(
        {
            structure : {
                header : [
                    {'value' : 'a', 'sortable' : true},
                    {'value' : 'b', 'sortable' : true, style : 'color : yellow'},
                    'c',
                    'd'
                ],
                rows : [
                    {
                        'a' : 'a1',
                        'b' : 'b1',
                        'c' : 'c1',
                        'd' : 'd1'
                    },
                    {
                        'a' : 'a2',
                        'b' : 'b4',
                        'c' : 'c2',
                        'd' : 'd2'
                    },
                    {
                        'a' : 'a2',
                        'b' : { value : 'b4', colspan : 1},
                        'c' : { value : 'acc'},
                        'd' : 'd2'
                    },
                    {
                        'a' : 'a3',
                        'b' : 'b3',
                        'c' : 'c3',
                        'd' : {
                            value : 'd3',
                            style : 'font-weight : bold; color : blue',
                            class : ['blue', 'green'],
                            mouseover : function(e) {
                                $(this).css('border', '5px solid blue');
                            },
                            mouseout : function(e) {
                                $(this).css('border', '');
                            }
                        }
                    },
                ],
                footer : [
                    'f1', 'f2', 'f3', 'f4'
                ]
            }
        }
    );


*/

define('kbaseTable',
    [
        'jquery',
        'kbwidget',
        'kbaseDeletePrompt',
        'kbaseButtonControls',
        'jqueryui',
    ],
    function ($) {



    $.KBWidget({

		  name: "kbaseTable",

        version: "1.0.0",
        _accessors : ['numRows'],
        options: {
            sortable    : false,
            striped     : true,
            hover       : true,
            bordered    : true,
            headerOptions : {},
            resizable   : false,

            header_callback : function(header) {
                if (header.label != undefined) {
                    return header.label;
                }
                else {
                    return header.value.replace(/(?:^|\s+)([a-z])/g, function(v) { return v.toUpperCase(); });
                }
            },

            row_callback : function (cell, header, row, $kb) {
                return $kb.default_row_callback(cell);
            }
        },

        default_row_callback : function (cell) {

            if (cell == undefined) {
                return cell;
            }

            if (cell.label != undefined) {
                return cell.label;
            }
            else {
                value = typeof cell != 'object'
                    ? cell
                    : cell.value;

                if (cell.type == 'th') {
                    value = value.replace(/(?:^|\s+)([a-z])/g, function(v) { return v.toUpperCase(); });
                    value += ' : ';
                }

                if (typeof cell == 'object' && cell.setup != undefined) {
                    cell.setup(value);
                }

                return value;
            }
        },

        init: function(options) {

            this._super(options);

            this.appendUI( $( this.$elem ), this.options.structure );

            return this;

        },

        appendUI : function ($elem, struct) {

            $elem.empty();

            var $tbl = $('<table></table>')
                .attr('id', 'table')
                .addClass('table');


            if (this.options.visControls) {
                $tbl.kbaseButtonControls(
                    {
                        onMouseover : true,
                        context : this,
                        controls : [
                            {
                                icon : 'fa fa-minus',
                                //'tooltip' : 'add a subdirectory',
                                callback : function(e, $tbl) {

                                    var currentVis = $tbl.options.visibleRows || 0;
                                    currentVis--;

                                    if (currentVis < 1) {
                                        currentVis = 1;
                                    }

                                    $tbl.options.visibleRows = currentVis;

                                    $tbl.displayRows();
                                },
                                id : 'addFileButton'
                            },
                            {
                                'icon' : 'fa fa-plus',
                                callback : function(e, $tbl) {
                                    var currentVis = $tbl.options.visibleRows || 0;
                                    currentVis++;

                                    if (currentVis > $tbl.options.structure.rows.length) {
                                        currentVis = $tbl.options.structure.rows.length;
                                    }

                                    $tbl.options.visibleRows = currentVis;

                                    $tbl.displayRows();
                                },

                            },
                        ]

                    }
                );

                if (this.options.visibleRows == undefined) {
                    if ($.isArray(this.options.structure.rows)) {
                        this.options.visibleRows = this.options.structure.rows.length;
                    }
                }
            }

            if (this.options.tblOptions) {
                this.addOptions($tbl, this.options.tblOptions);
            }


            if (this.options.striped) {
                $tbl.addClass('table-striped');
            }
            if (this.options.hover) {
                $tbl.addClass('table-hover');
            }
            if (this.options.bordered) {
                $tbl.addClass('table-bordered');
            }

            if (this.options.caption) {
                $tbl.append(
                    $('<caption></caption>')
                        .append(this.options.caption)
                )
            }

            if (struct.header) {
                var $thead = $('<thead></thead>')
                    .attr('id', 'thead');

                var $tr = $('<tr></tr>')
                    .attr('id', 'headerRow');

                $.each(
                    struct.header,
                    $.proxy(function (idx, header) {

                        if (typeof header == 'string') {
                            header = {value : header};
                            struct.header[idx] = header;
                        }

                        var callback = header.callback || this.options.header_callback;

                        var label = callback(header, this);
                        var h = header.value;

                        var $th = $.jqElem('th')
                            .append(label)
                        ;

                        if (this.options.resizable) {
                            $th.resizable({
                                handles: 'e'
                            });
                        }

                        this.addOptions($th, $.extend(true, {}, this.options.headerOptions, header));

                        if (header.sortable || (header.sortable == undefined && this.options.sortable)) {

                            var buttonId = header.value + '-sortButton';
                            var $buttonIcon = $('<i></i>')
                                .addClass('fa fa-sort');
                            var $button = $('<button></button>')
                                .addClass('btn btn-default btn-xs')
                                .attr('id', buttonId)
                                .css('display', 'none')
                                .css('float', 'right')
                                .append($buttonIcon)
                                .data('shouldHide', true)
                            ;
                            $button.bind('click', $.proxy(function (e) {

                                    var $lastSort = this.data('lastSort');
                                    if ($lastSort != undefined && $lastSort.get(0) != $button.get(0)) {
                                        $lastSort.children(':first').removeClass('fa fa-sort-up');
                                        $lastSort.children(':first').removeClass('fa fa-sort-down');
                                        $lastSort.children(':first').addClass('fa fa-sort');
                                        $lastSort.data('shouldHide', true);
                                        $lastSort.css('display', 'none');
                                    }

                                    this.data('lastSortHeader', h);

                                    if ($buttonIcon.hasClass('fa fa-sort')) {
                                        $buttonIcon.removeClass('fa fa-sort');
                                        $buttonIcon.addClass('fa fa-sort-up');
                                        $button.data('shouldHide', false);
                                        this.sortAndLayoutOn(h, 1);
                                        this.data('lastSortDir', 1);
                                    }
                                    else if ($buttonIcon.hasClass('fa fa-sort-up')) {
                                        $buttonIcon.removeClass('fa fa-sort-up');
                                        $buttonIcon.addClass('fa fa-sort-down');
                                        $button.data('shouldHide', false);
                                        this.sortAndLayoutOn(h, -1);
                                        this.data('lastSortDir', -1);
                                    }
                                    else if ($buttonIcon.hasClass('fa fa-sort-down')) {
                                        $buttonIcon.removeClass('fa fa-sort-down');
                                        $buttonIcon.addClass('fa fa-sort');
                                        $button.data('shouldHide', true);
                                        this.sortAndLayoutOn(undefined);
                                        this.data('lastSortHeader', undefined);
                                        this.data('lastSortDir', undefined);
                                    }

                                    this.data('lastSort', $button);

                                }, this))
                            ;

                            $th.append($button);
                            $th.bind('mouseover', $.proxy(function(e) {
                                $button.css('display', 'inline');
                            }, this));
                            $th.bind('mouseout', $.proxy(function(e) {
                                if ($button.data('shouldHide')) {
                                    $button.css('display', 'none');
                                }

                            }, this));
                        }

                        $tr.append($th);

                    }, this)
                );

                $thead.append($tr);
                $tbl.append($thead);

            }

            if (struct.rows) {

                var $tbody = this.data('tbody', $('<tbody></tbody>'));
                this.layoutRows(struct.rows, struct.header);

                $tbl.append($tbody);
            }

            if (struct.footer) {
                var $tfoot = $('<tfoot></tfoot>')
                    .attr('id', 'tfoot');

                for (var idx = 0; idx < struct.footer.length; idx++) {
                    var fcell = struct.footer[idx];

                    var value = fcell;
                    var style;
                    var colspan;

                    if (typeof fcell == 'object') {
                        value = fcell.value;
                        style = fcell.style;
                        colspan = fcell.colspan;
                    }

                    var $td = $.jqElem('td')
                        .append(value)
                    ;
                    if (style) {
                        $td.attr('style', style);
                    }
                    if (colspan) {
                        $td.attr('colspan', colspan);
                    }

                    $tfoot.append($td);
                }

                $tbl.append($tfoot);
            }


            this._rewireIds($tbl, this);

            $elem.append($tbl);

            return $elem;

        },

        refilter : function (filter) {
            this.options.filter = filter;
            this.sortAndLayoutOn(this.data('lastSortHeader'), this.data('lastSortDir'));
        },

        sortAndLayoutOn : function(h, dir) {

            var sortedRows = this.options.structure.rows;

            if (h != undefined) {

                //var h = header.value;

                sortedRows =
                    this.options.structure.rows.slice().sort(
                        function (a,b) {
                            var keyA = a[h];
                            var keyB = b[h];

                            keyA = typeof keyA == 'string' ? keyA.toLowerCase() : keyA;
                            keyB = typeof keyB == 'string' ? keyB.toLowerCase() : keyB;

                                 if (keyA < keyB) { return 0 - dir }
                            else if (keyA > keyB) { return dir }
                            else                  { return 0   }

                        }
                    )
                ;
            }

            this.layoutRows(sortedRows, this.options.structure.header);

        },

        layoutRows : function (rows, header) {

            this.data('tbody').empty();

            var numRows = 0;

            if ($.isArray(rows)) {
                for (var idx = 0; idx < rows.length; idx++) {
                    var $row = this.createRow(rows[idx], header);
                    if ($row != undefined && $row.children().length) {
                        numRows++;
                        this.data('tbody').append($row);
                    }
                }
            }
            else if (this.options.structure.keys != undefined) {
                for (var idx = 0; idx < this.options.structure.keys.length; idx++) {
                    var key = this.options.structure.keys[idx];

                    if (typeof key != 'object') {
                        key = { value : key };
                    }

                    key.type = 'th';
                    key.style = 'white-space : nowrap';

                    var $row = this.createRow(
                        {
                            key : key,
                            value : {value : rows[key.value], key : key.value},
                        },
                        [{value : 'key'}, {value : 'value'}]
                    );

                    if ($row != undefined && $row.children().length) {
                        numRows++;
                        this.data('tbody').append($row);
                    }
                }
            }

            this.displayRows();

            this.numRows(numRows);
        },

        displayRows : function() {
            this.data('tbody')
                .find('tr')
                .css('display', '');

            if (this.options.visibleRows != undefined) {
                this.data('tbody')
                    .find('tr:gt(' + (this.options.visibleRows - 1) + ')')
                    .css('display', 'none');
            }
        },

        addOptions : function ($cell, options) {

            if (typeof options == 'string' || options == undefined) {
                return;
            }

            if (options.style != undefined) {
                $cell.attr('style', options.style);
            }
            if (options.class != undefined) {
                var classes = typeof options.class == 'string'
                    ? [ options.class ]
                    : options.class;

                $.each(
                    classes,
                    $.proxy(function(idx, cl) {
                        $cell.addClass(cl);
                    }, this)
                );
            }

            var events = ['mouseover', 'mouseout', 'click'];
            $.each(
                events,
                $.proxy(function(idx, e) {
                    if (options[e] != undefined) {
                        $cell.bind(e,options[e])
                    }
                }, this)
            );

            if (options.colspan) {
                $cell.attr('colspan', options.colspan);
            }

            if (options.rowspan) {
                $cell.attr('rowspan', options.rowspan);
            }

        },


        createRow : function (rowData, headers) {

            var $tr = $.jqElem('tr');

            var callback = this.options.row_callback;

            var filterString = '';

            if ( $.isArray(rowData) ) {

                $.each(
                    rowData,
                    $.proxy( function(idx, cell) {

                        var value = typeof cell == 'object'
                            ? cell.value
                            : cell;

                        if (value == undefined) {
                            return;
                        }

                        filterString += value;

                        var $td = $.jqElem('td').append(value);

                        if (typeof cell == 'object') {

                            this.addOptions($td, cell);
                        }

                        $tr.append($td);

                    }, this)
                );
            }
            else if (headers != undefined && headers.length) {

                $.each(
                    headers,
                    $.proxy(function (hidx, header) {
                        var h = header.value;

                        var type = 'td';

                        // null is an irritating special case. Because it's not defined,
                        // but it is a type of object. frick.

                        if (rowData[h] == null) {
                            rowData[h] = undefined;
                        }
                        if (typeof rowData[h] == 'object' && rowData[h].value == null) {
                            rowData[h].value = '';
                        }

                        if (typeof rowData[h] == 'object' && rowData[h].type != undefined) {
                            type = rowData[h].type;
                        }

                        var $td = $.jqElem(type);

                        var label = callback(rowData[h], h, rowData, this);
                        filterString += rowData[h];

                        $td.append(label);

                        if (typeof rowData[h] != 'string') {
                            this.addOptions($td, rowData[h]);
                        }

                        if (label != undefined) {
                            $tr.append($td);
                        }

                    }, this)
                );
            }

            if (this.options.filter != undefined) {
                var filterRegex = new RegExp(this.options.filter, 'i');
                if (! filterString.match(filterRegex)) {
                    $tr = undefined;
                }
            }

            return $tr;

        },


        deletePrompt : function(row) {
            var $deleteModal = $('<div></div>').kbaseDeletePrompt(
                {
                    name     : row,
                    callback : this.deleteRowCallback(row),
                }
            );

            $deleteModal.openPrompt();
        },

        deleteRowCallback : function (row) {

        },

        shouldDeleteRow : function (row) { return 1; },


    });

});
