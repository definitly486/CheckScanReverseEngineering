package com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.vy4;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FilterNewDialogView$$State extends kh5<FilterNewDialogView> implements FilterNewDialogView {

    public class ShowSelectedFilterCategoryCommand extends wd9<FilterNewDialogView> {
        public final int id;
        public final String title;

        public ShowSelectedFilterCategoryCommand(FilterNewDialogView$$State filterNewDialogView$$State, int i, String str) {
            super("showSelectedFilterCategory", hx5.class);
            this.id = i;
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(FilterNewDialogView filterNewDialogView) {
            filterNewDialogView.showSelectedFilterCategory(this.id, this.title);
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
            ((FilterNewDialogView) it.next()).openUrl(str);
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
            ((FilterNewDialogView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public void setFiltersList(List<vy4> list) {
        SetFiltersListCommand setFiltersListCommand = new SetFiltersListCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setFiltersListCommand).b(xd9Var.a, setFiltersListCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FilterNewDialogView) it.next()).setFiltersList(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setFiltersListCommand).a(xd9Var2.a, setFiltersListCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public void setUpdatedList(List<vy4> list) {
        SetUpdatedListCommand setUpdatedListCommand = new SetUpdatedListCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpdatedListCommand).b(xd9Var.a, setUpdatedListCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FilterNewDialogView) it.next()).setUpdatedList(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpdatedListCommand).a(xd9Var2.a, setUpdatedListCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public void showSelectedFilterCategory(int i, String str) {
        ShowSelectedFilterCategoryCommand showSelectedFilterCategoryCommand = new ShowSelectedFilterCategoryCommand(this, i, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSelectedFilterCategoryCommand).b(xd9Var.a, showSelectedFilterCategoryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FilterNewDialogView) it.next()).showSelectedFilterCategory(i, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSelectedFilterCategoryCommand).a(xd9Var2.a, showSelectedFilterCategoryCommand);
    }

    public class OpenUrlCommand extends wd9<FilterNewDialogView> {
        public final String arg0;

        public OpenUrlCommand(FilterNewDialogView$$State filterNewDialogView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FilterNewDialogView filterNewDialogView) {
            filterNewDialogView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<FilterNewDialogView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(FilterNewDialogView$$State filterNewDialogView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FilterNewDialogView filterNewDialogView) {
            filterNewDialogView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetFiltersListCommand extends wd9<FilterNewDialogView> {
        public final List<vy4> filters;

        public SetFiltersListCommand(FilterNewDialogView$$State filterNewDialogView$$State, List<vy4> list) {
            super("setFiltersList", hx5.class);
            this.filters = list;
        }

        @Override // defpackage.wd9
        public void apply(FilterNewDialogView filterNewDialogView) {
            filterNewDialogView.setFiltersList(this.filters);
        }
    }

    public class SetUpdatedListCommand extends wd9<FilterNewDialogView> {
        public final List<vy4> filters;

        public SetUpdatedListCommand(FilterNewDialogView$$State filterNewDialogView$$State, List<vy4> list) {
            super("setUpdatedList", hx5.class);
            this.filters = list;
        }

        @Override // defpackage.wd9
        public void apply(FilterNewDialogView filterNewDialogView) {
            filterNewDialogView.setUpdatedList(this.filters);
        }
    }
}
