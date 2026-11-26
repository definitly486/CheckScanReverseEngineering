package com.warefly.checkscan.presentation.chequePage.share.cheque.presenter;

import defpackage.hd1;
import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ShareChequeView$$State extends kh5<ShareChequeView> implements ShareChequeView {

    public class ShareAsCommand extends wd9<ShareChequeView> {
        public final hd1 cheque;
        public final ShareChequeView.a option;

        public ShareAsCommand(ShareChequeView$$State shareChequeView$$State, ShareChequeView.a aVar, hd1 hd1Var) {
            super("shareAs", hx5.class);
            this.option = aVar;
            this.cheque = hd1Var;
        }

        @Override // defpackage.wd9
        public void apply(ShareChequeView shareChequeView) {
            shareChequeView.shareAs(this.option, this.cheque);
        }
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
            ((ShareChequeView) it.next()).openUrl(str);
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
            ((ShareChequeView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView
    public void shareAs(ShareChequeView.a aVar, hd1 hd1Var) {
        ShareAsCommand shareAsCommand = new ShareAsCommand(this, aVar, hd1Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareAsCommand).b(xd9Var.a, shareAsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShareChequeView) it.next()).shareAs(aVar, hd1Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareAsCommand).a(xd9Var2.a, shareAsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.chequePage.share.cheque.presenter.ShareChequeView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ShareChequeView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<ShareChequeView> {
        public final String arg0;

        public OpenUrlCommand(ShareChequeView$$State shareChequeView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ShareChequeView shareChequeView) {
            shareChequeView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ShareChequeView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ShareChequeView$$State shareChequeView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ShareChequeView shareChequeView) {
            shareChequeView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowLoadingCommand extends wd9<ShareChequeView> {
        public final boolean isLoading;

        public ShowLoadingCommand(ShareChequeView$$State shareChequeView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(ShareChequeView shareChequeView) {
            shareChequeView.showLoading(this.isLoading);
        }
    }
}
