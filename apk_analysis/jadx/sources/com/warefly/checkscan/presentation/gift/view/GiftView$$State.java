package com.warefly.checkscan.presentation.gift.view;

import defpackage.hq3;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class GiftView$$State extends kh5<GiftView> implements GiftView {
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
            ((GiftView) it.next()).openUrl(str);
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
            ((GiftView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GiftView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public void showGiftInfo(hq3 hq3Var) {
        ShowGiftInfoCommand showGiftInfoCommand = new ShowGiftInfoCommand(this, hq3Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showGiftInfoCommand).b(xd9Var.a, showGiftInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GiftView) it.next()).showGiftInfo(hq3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showGiftInfoCommand).a(xd9Var2.a, showGiftInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.gift.view.GiftView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((GiftView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<GiftView> {
        public final String arg0;

        public OpenUrlCommand(GiftView$$State giftView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(GiftView giftView) {
            giftView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<GiftView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(GiftView$$State giftView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(GiftView giftView) {
            giftView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowErrorCommand extends wd9<GiftView> {
        public final boolean show;

        public ShowErrorCommand(GiftView$$State giftView$$State, boolean z) {
            super("showError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(GiftView giftView) {
            giftView.showError(this.show);
        }
    }

    public class ShowGiftInfoCommand extends wd9<GiftView> {
        public final hq3 info;

        public ShowGiftInfoCommand(GiftView$$State giftView$$State, hq3 hq3Var) {
            super("showGiftInfo", k9.class);
            this.info = hq3Var;
        }

        @Override // defpackage.wd9
        public void apply(GiftView giftView) {
            giftView.showGiftInfo(this.info);
        }
    }

    public class ShowLoadingCommand extends wd9<GiftView> {
        public final boolean show;

        public ShowLoadingCommand(GiftView$$State giftView$$State, boolean z) {
            super("showLoading", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(GiftView giftView) {
            giftView.showLoading(this.show);
        }
    }
}
