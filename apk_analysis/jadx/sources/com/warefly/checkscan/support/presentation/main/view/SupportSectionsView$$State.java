package com.warefly.checkscan.support.presentation.main.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SupportSectionsView$$State extends kh5<SupportSectionsView> implements SupportSectionsView {
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
            ((SupportSectionsView) it.next()).openUrl(str);
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
            ((SupportSectionsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportSectionsView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportSectionsView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.support.presentation.main.view.SupportSectionsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SupportSectionsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<SupportSectionsView> {
        public final String arg0;

        public OpenUrlCommand(SupportSectionsView$$State supportSectionsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportSectionsView supportSectionsView) {
            supportSectionsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<SupportSectionsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(SupportSectionsView$$State supportSectionsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SupportSectionsView supportSectionsView) {
            supportSectionsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<SupportSectionsView> {
        public final List<? extends pz3> items;

        public ShowContentCommand(SupportSectionsView$$State supportSectionsView$$State, List<? extends pz3> list) {
            super("showContent", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(SupportSectionsView supportSectionsView) {
            supportSectionsView.showContent(this.items);
        }
    }

    public class ShowErrorCommand extends wd9<SupportSectionsView> {
        public final boolean isError;

        public ShowErrorCommand(SupportSectionsView$$State supportSectionsView$$State, boolean z) {
            super("showError", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportSectionsView supportSectionsView) {
            supportSectionsView.showError(this.isError);
        }
    }

    public class ShowLoadingCommand extends wd9<SupportSectionsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(SupportSectionsView$$State supportSectionsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(SupportSectionsView supportSectionsView) {
            supportSectionsView.showLoading(this.isLoading);
        }
    }
}
