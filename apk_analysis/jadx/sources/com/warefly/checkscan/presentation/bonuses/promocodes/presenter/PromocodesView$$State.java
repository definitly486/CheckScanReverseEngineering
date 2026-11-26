package com.warefly.checkscan.presentation.bonuses.promocodes.presenter;

import defpackage.er6;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PromocodesView$$State extends kh5<PromocodesView> implements PromocodesView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public void hideLoading(boolean z) {
        HideLoadingCommand hideLoadingCommand = new HideLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideLoadingCommand).b(xd9Var.a, hideLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodesView) it.next()).hideLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(hideLoadingCommand).a(xd9Var2.a, hideLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodesView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodesView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public void sendPromocodesUpdateResult() {
        SendPromocodesUpdateResultCommand sendPromocodesUpdateResultCommand = new SendPromocodesUpdateResultCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(sendPromocodesUpdateResultCommand).b(xd9Var.a, sendPromocodesUpdateResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodesView) it.next()).sendPromocodesUpdateResult();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(sendPromocodesUpdateResultCommand).a(xd9Var2.a, sendPromocodesUpdateResultCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public void showPromocodes(List<er6> list) {
        ShowPromocodesCommand showPromocodesCommand = new ShowPromocodesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodesCommand).b(xd9Var.a, showPromocodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PromocodesView) it.next()).showPromocodes(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodesCommand).a(xd9Var2.a, showPromocodesCommand);
    }

    public class HideLoadingCommand extends wd9<PromocodesView> {
        public final boolean hide;

        public HideLoadingCommand(PromocodesView$$State promocodesView$$State, boolean z) {
            super("hideLoading", k9.class);
            this.hide = z;
        }

        @Override // defpackage.wd9
        public void apply(PromocodesView promocodesView) {
            promocodesView.hideLoading(this.hide);
        }
    }

    public class OpenUrlCommand extends wd9<PromocodesView> {
        public final String arg0;

        public OpenUrlCommand(PromocodesView$$State promocodesView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodesView promocodesView) {
            promocodesView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PromocodesView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PromocodesView$$State promocodesView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PromocodesView promocodesView) {
            promocodesView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SendPromocodesUpdateResultCommand extends wd9<PromocodesView> {
        public SendPromocodesUpdateResultCommand(PromocodesView$$State promocodesView$$State) {
            super("sendPromocodesUpdateResult", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PromocodesView promocodesView) {
            promocodesView.sendPromocodesUpdateResult();
        }
    }

    public class ShowPromocodesCommand extends wd9<PromocodesView> {
        public final List<er6> promocodes;

        public ShowPromocodesCommand(PromocodesView$$State promocodesView$$State, List<er6> list) {
            super("showPromocodes", k9.class);
            this.promocodes = list;
        }

        @Override // defpackage.wd9
        public void apply(PromocodesView promocodesView) {
            promocodesView.showPromocodes(this.promocodes);
        }
    }
}
