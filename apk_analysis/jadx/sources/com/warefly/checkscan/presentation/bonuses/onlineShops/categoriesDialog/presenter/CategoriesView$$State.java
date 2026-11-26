package com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter;

import defpackage.g81;
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
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public void checkAllCategories(boolean z) {
        CheckAllCategoriesCommand checkAllCategoriesCommand = new CheckAllCategoriesCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(checkAllCategoriesCommand).b(xd9Var.a, checkAllCategoriesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CategoriesView) it.next()).checkAllCategories(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(checkAllCategoriesCommand).a(xd9Var2.a, checkAllCategoriesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public void closeDialog() {
        CloseDialogCommand closeDialogCommand = new CloseDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(closeDialogCommand).b(xd9Var.a, closeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CategoriesView) it.next()).closeDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(closeDialogCommand).a(xd9Var2.a, closeDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public void enableButton(boolean z) {
        EnableButtonCommand enableButtonCommand = new EnableButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableButtonCommand).b(xd9Var.a, enableButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CategoriesView) it.next()).enableButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableButtonCommand).a(xd9Var2.a, enableButtonCommand);
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
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public void showCategories(List<g81> list) {
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

    public class CheckAllCategoriesCommand extends wd9<CategoriesView> {
        public final boolean isChecked;

        public CheckAllCategoriesCommand(CategoriesView$$State categoriesView$$State, boolean z) {
            super("checkAllCategories", k9.class);
            this.isChecked = z;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.checkAllCategories(this.isChecked);
        }
    }

    public class CloseDialogCommand extends wd9<CategoriesView> {
        public CloseDialogCommand(CategoriesView$$State categoriesView$$State) {
            super("closeDialog", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.closeDialog();
        }
    }

    public class EnableButtonCommand extends wd9<CategoriesView> {
        public final boolean enable;

        public EnableButtonCommand(CategoriesView$$State categoriesView$$State, boolean z) {
            super("enableButton", k9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.enableButton(this.enable);
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
        public final List<g81> categories;

        public ShowCategoriesCommand(CategoriesView$$State categoriesView$$State, List<g81> list) {
            super("showCategories", k9.class);
            this.categories = list;
        }

        @Override // defpackage.wd9
        public void apply(CategoriesView categoriesView) {
            categoriesView.showCategories(this.categories);
        }
    }
}
