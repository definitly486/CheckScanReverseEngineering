package com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.hx3;
import defpackage.kd;
import defpackage.ll3;
import defpackage.s47;
import defpackage.u96;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class HowGetMoreCashbackPresenter extends BasePresenter<HowGetMoreCashbackView> {
    private final String data;
    private final cl4 listItems$delegate;
    private final s47 resourceProvider;
    private final long shopId;

    public static final class a extends gh4 implements ll3<List<? extends hx3>> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final List<? extends hx3> invoke() {
            HowGetMoreCashbackPresenter howGetMoreCashbackPresenter = HowGetMoreCashbackPresenter.this;
            return u96.i(new hx3(howGetMoreCashbackPresenter.resourceProvider.getString(R.string.how_get_more_cashback_term_one), howGetMoreCashbackPresenter.resourceProvider.a(R.drawable.image_how_get_cashback_one)), new hx3(howGetMoreCashbackPresenter.resourceProvider.getString(R.string.how_get_more_cashback_term_two), howGetMoreCashbackPresenter.resourceProvider.getString(R.string.how_get_more_cashback_term_two_description), howGetMoreCashbackPresenter.resourceProvider.a(R.drawable.image_how_get_cashback_two)), new hx3(howGetMoreCashbackPresenter.resourceProvider.getString(R.string.how_get_more_cashback_term_three), howGetMoreCashbackPresenter.resourceProvider.a(R.drawable.image_how_get_cashback_three)));
        }
    }

    public HowGetMoreCashbackPresenter(s47 s47Var, String str, long j) {
        s47Var.getClass();
        str.getClass();
        this.resourceProvider = s47Var;
        this.data = str;
        this.shopId = j;
        this.listItems$delegate = new fh8(new a());
    }

    private final List<hx3> getListItems() {
        return (List) this.listItems$delegate.getValue();
    }

    public final void onButtonActionClick() {
        HowGetMoreCashbackView howGetMoreCashbackView = (HowGetMoreCashbackView) getViewState();
        if (howGetMoreCashbackView != null) {
            howGetMoreCashbackView.openUrl(this.data);
        }
        Map mapSingletonMap = Collections.singletonMap("Tap_card_button_banner_cta", Long.valueOf(this.shopId));
        mapSingletonMap.getClass();
        new kd.e.d.k(mapSingletonMap).a();
        HowGetMoreCashbackView howGetMoreCashbackView2 = (HowGetMoreCashbackView) getViewState();
        if (howGetMoreCashbackView2 != null) {
            howGetMoreCashbackView2.closeDialog();
        }
    }

    public final void onCloseClick() {
        Map mapSingletonMap = Collections.singletonMap("Card_button_banner_close", Long.valueOf(this.shopId));
        mapSingletonMap.getClass();
        new kd.e.d.b(mapSingletonMap).a();
        HowGetMoreCashbackView howGetMoreCashbackView = (HowGetMoreCashbackView) getViewState();
        if (howGetMoreCashbackView != null) {
            howGetMoreCashbackView.closeDialog();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        HowGetMoreCashbackView howGetMoreCashbackView = (HowGetMoreCashbackView) getViewState();
        if (howGetMoreCashbackView != null) {
            howGetMoreCashbackView.showContent(getListItems());
        }
    }
}
