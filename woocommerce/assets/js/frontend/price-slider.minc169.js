jQuery(function(e) {
	function r() {
		e("input#min_price, input#max_price").hide(), e(
				".price_slider, .price_label").show();
		var r = e(".price_slider_amount #min_price").data("min"), i = e(
				".price_slider_amount #max_price").data("max"), c = e(
				".price_slider_amount #min_price").val(), o = e(
				".price_slider_amount #max_price").val();
		e(".price_slider:not(.ui-slider)").slider(
				{
					range : !0,
					animate : !0,
					min : r,
					max : i,
					values : [ c, o ],
					create : function() {
						e(".price_slider_amount #min_price").val(c), e(
								".price_slider_amount #max_price").val(o), e(
								document.body).trigger("price_slider_create",
								[ c, o ])
					},
					slide : function(r, i) {
						e("input#min_price").val(i.values[0]), e(
								"input#max_price").val(i.values[1]), e(
								document.body).trigger("price_slider_slide",
								[ i.values[0], i.values[1] ])
					},
					change : function(r, i) {
						e(document.body).trigger("price_slider_change",
								[ i.values[0], i.values[1] ])
					}
				})
	}
	if ("undefined" == typeof woocommerce_price_slider_params)
		return !1;
			e(document.body)
					.bind(
							"price_slider_create price_slider_slide",
							function(r, i, c) {
										e(".price_slider_amount span.from")
												.html(
														accounting
																.formatMoney(
																		i,
																		{
																			symbol : woocommerce_price_slider_params.currency_format_symbol,
																			decimal : woocommerce_price_slider_params.currency_format_decimal_sep,
																			thousand : woocommerce_price_slider_params.currency_format_thousand_sep,
																			precision : woocommerce_price_slider_params.currency_format_num_decimals,
																			format : woocommerce_price_slider_params.currency_format
																		})),
										e(".price_slider_amount span.to")
												.html(
														accounting
																.formatMoney(
																		c,
																		{
																			symbol : woocommerce_price_slider_params.currency_format_symbol,
																			decimal : woocommerce_price_slider_params.currency_format_decimal_sep,
																			thousand : woocommerce_price_slider_params.currency_format_thousand_sep,
																			precision : woocommerce_price_slider_params.currency_format_num_decimals,
																			format : woocommerce_price_slider_params.currency_format
																		})), e(
												document.body).trigger(
												"price_slider_updated",
												[ i, c ])
							}), r(), "undefined" != typeof wp
					&& wp.customize
					&& wp.customize.selectiveRefresh
					&& wp.customize.widgetsPreview
					&& wp.customize.widgetsPreview.WidgetPartial
					&& wp.customize.selectiveRefresh.bind(
							"partial-content-rendered", function() {
								r()
							})
});