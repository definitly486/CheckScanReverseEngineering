package com.warefly.checkscan.insuranceShowcase.presentation.showcase.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class InsuranceShowcaseView$$State extends kh5<InsuranceShowcaseView> implements InsuranceShowcaseView {
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
            ((InsuranceShowcaseView) it.next()).openUrl(str);
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
            ((InsuranceShowcaseView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InsuranceShowcaseView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public void showError(boolean z) {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InsuranceShowcaseView) it.next()).showError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public void showItems(List<? extends pz3> list) {
        ShowItemsCommand showItemsCommand = new ShowItemsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showItemsCommand).b(xd9Var.a, showItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InsuranceShowcaseView) it.next()).showItems(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showItemsCommand).a(xd9Var2.a, showItemsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InsuranceShowcaseView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<InsuranceShowcaseView> {
        public final String arg0;

        public OpenUrlCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<InsuranceShowcaseView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetToolbarTitleCommand extends wd9<InsuranceShowcaseView> {
        public final String title;

        public SetToolbarTitleCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, String str) {
            super("setToolbarTitle", k9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.setToolbarTitle(this.title);
        }
    }

    public class ShowErrorCommand extends wd9<InsuranceShowcaseView> {
        public final boolean isShow;

        public ShowErrorCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, boolean z) {
            super("showError", k9.class);
            this.isShow = z;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.showError(this.isShow);
        }
    }

    public class ShowItemsCommand extends wd9<InsuranceShowcaseView> {
        public final List<? extends pz3> items;

        public ShowItemsCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, List<? extends pz3> list) {
            super("showItems", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.showItems(this.items);
        }
    }

    public class ShowLoadingCommand extends wd9<InsuranceShowcaseView> {
        public final boolean isLoading;

        public ShowLoadingCommand(InsuranceShowcaseView$$State insuranceShowcaseView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(InsuranceShowcaseView insuranceShowcaseView) {
            insuranceShowcaseView.showLoading(this.isLoading);
        }
    }
}
