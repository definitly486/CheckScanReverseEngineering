package com.warefly.checkscan.presentation.bonuses.categories.presenter;

import defpackage.cs0;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CategoriesView$$State extends kh5<CategoriesView> implements CategoriesView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesView
    public void hideLoading(boolean z) {
        HideLoadingCommand hideLoadingCommand = new HideLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(hideLoadingCommand).b(xd9Var.a, hideLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CategoriesView) it.next()).hideLoading(z);
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
            ((CategoriesView) it.next()).openUrl(str);
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
            ((CategoriesView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesView
    public void showCategories(List<? extends cs0> list) {
        ShowCategoriesCommand showCategoriesCommand = new ShowCategoriesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCategoriesCommand).b(xd9Var.a, showCategoriesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CategoriesView) it.next()).showCategories(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCategoriesCommand).a(xd9Var2.a, showCategoriesCommand);
    }

    public class HideLoadingCommand extends wd9<CategoriesView> {
        public final boolean show;

        public HideLoadingCommand(CategoriesView$$State categoriesView$$State, boolean z) {
            super("hideLoading", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.hideLoading(this.show);
        }
    }

    public class OpenUrlCommand extends wd9<CategoriesView> {
        public final String arg0;

        public OpenUrlCommand(CategoriesView$$State categoriesView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CategoriesView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CategoriesView$$State categoriesView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowCategoriesCommand extends wd9<CategoriesView> {
        public final List<? extends cs0> categories;

        public ShowCategoriesCommand(CategoriesView$$State categoriesView$$State, List<? extends cs0> list) {
            super("showCategories", k9.class);
            this.categories = list;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.showCategories(this.categories);
        }
    }
}
