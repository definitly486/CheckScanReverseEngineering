package com.warefly.checkscan.presentation.operations.allOperations.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.py5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class AllOperationsView$$State extends kh5<AllOperationsView> implements AllOperationsView {

    public class ShowOperationsCommand extends wd9<AllOperationsView> {
        public final List<Object> data;
        public final boolean show;

        public ShowOperationsCommand(AllOperationsView$$State allOperationsView$$State, boolean z, List<Object> list) {
            super("showOperations", k9.class);
            this.show = z;
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showOperations(this.show, this.data);
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
            ((AllOperationsView) it.next()).openUrl(str);
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
            ((AllOperationsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void removeCategory() {
        RemoveCategoryCommand removeCategoryCommand = new RemoveCategoryCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(removeCategoryCommand).b(xd9Var.a, removeCategoryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).removeCategory();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(removeCategoryCommand).a(xd9Var2.a, removeCategoryCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showAllOperationsLoaded() {
        ShowAllOperationsLoadedCommand showAllOperationsLoadedCommand = new ShowAllOperationsLoadedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAllOperationsLoadedCommand).b(xd9Var.a, showAllOperationsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showAllOperationsLoaded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAllOperationsLoadedCommand).a(xd9Var2.a, showAllOperationsLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showBeginList() {
        ShowBeginListCommand showBeginListCommand = new ShowBeginListCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBeginListCommand).b(xd9Var.a, showBeginListCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showBeginList();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBeginListCommand).a(xd9Var2.a, showBeginListCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showCategories(List<py5> list) {
        ShowCategoriesCommand showCategoriesCommand = new ShowCategoriesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCategoriesCommand).b(xd9Var.a, showCategoriesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showCategories(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCategoriesCommand).a(xd9Var2.a, showCategoriesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showCategoriesLoaded(boolean z) {
        ShowCategoriesLoadedCommand showCategoriesLoadedCommand = new ShowCategoriesLoadedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCategoriesLoadedCommand).b(xd9Var.a, showCategoriesLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showCategoriesLoaded(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCategoriesLoadedCommand).a(xd9Var2.a, showCategoriesLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showCouldntLoadCategories(boolean z) {
        ShowCouldntLoadCategoriesCommand showCouldntLoadCategoriesCommand = new ShowCouldntLoadCategoriesCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadCategoriesCommand).b(xd9Var.a, showCouldntLoadCategoriesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showCouldntLoadCategories(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadCategoriesCommand).a(xd9Var2.a, showCouldntLoadCategoriesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperations(boolean z) {
        ShowEmptyOperationsCommand showEmptyOperationsCommand = new ShowEmptyOperationsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsCommand).b(xd9Var.a, showEmptyOperationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showEmptyOperations(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsCommand).a(xd9Var2.a, showEmptyOperationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperationsError(boolean z) {
        ShowEmptyOperationsErrorCommand showEmptyOperationsErrorCommand = new ShowEmptyOperationsErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsErrorCommand).b(xd9Var.a, showEmptyOperationsErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showEmptyOperationsError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsErrorCommand).a(xd9Var2.a, showEmptyOperationsErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperationsProgress(boolean z) {
        ShowEmptyOperationsProgressCommand showEmptyOperationsProgressCommand = new ShowEmptyOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsProgressCommand).b(xd9Var.a, showEmptyOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showEmptyOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsProgressCommand).a(xd9Var2.a, showEmptyOperationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showLoadingCategories(boolean z) {
        ShowLoadingCategoriesCommand showLoadingCategoriesCommand = new ShowLoadingCategoriesCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCategoriesCommand).b(xd9Var.a, showLoadingCategoriesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showLoadingCategories(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCategoriesCommand).a(xd9Var2.a, showLoadingCategoriesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showOperations(boolean z, List<Object> list) {
        ShowOperationsCommand showOperationsCommand = new ShowOperationsCommand(this, z, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOperationsCommand).b(xd9Var.a, showOperationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showOperations(z, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOperationsCommand).a(xd9Var2.a, showOperationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showPageOfOperationsProgress(boolean z) {
        ShowPageOfOperationsProgressCommand showPageOfOperationsProgressCommand = new ShowPageOfOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPageOfOperationsProgressCommand).b(xd9Var.a, showPageOfOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showPageOfOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPageOfOperationsProgressCommand).a(xd9Var2.a, showPageOfOperationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showRefreshOperationsProgress(boolean z) {
        ShowRefreshOperationsProgressCommand showRefreshOperationsProgressCommand = new ShowRefreshOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRefreshOperationsProgressCommand).b(xd9Var.a, showRefreshOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showRefreshOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRefreshOperationsProgressCommand).a(xd9Var2.a, showRefreshOperationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView
    public void showSelectedCategory(py5 py5Var) {
        ShowSelectedCategoryCommand showSelectedCategoryCommand = new ShowSelectedCategoryCommand(this, py5Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSelectedCategoryCommand).b(xd9Var.a, showSelectedCategoryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllOperationsView) it.next()).showSelectedCategory(py5Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSelectedCategoryCommand).a(xd9Var2.a, showSelectedCategoryCommand);
    }

    public class OpenUrlCommand extends wd9<AllOperationsView> {
        public final String arg0;

        public OpenUrlCommand(AllOperationsView$$State allOperationsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AllOperationsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AllOperationsView$$State allOperationsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class RemoveCategoryCommand extends wd9<AllOperationsView> {
        public RemoveCategoryCommand(AllOperationsView$$State allOperationsView$$State) {
            super("removeCategory", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.removeCategory();
        }
    }

    public class ShowAllOperationsLoadedCommand extends wd9<AllOperationsView> {
        public ShowAllOperationsLoadedCommand(AllOperationsView$$State allOperationsView$$State) {
            super("showAllOperationsLoaded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showAllOperationsLoaded();
        }
    }

    public class ShowBeginListCommand extends wd9<AllOperationsView> {
        public ShowBeginListCommand(AllOperationsView$$State allOperationsView$$State) {
            super("showBeginList", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showBeginList();
        }
    }

    public class ShowCategoriesCommand extends wd9<AllOperationsView> {
        public final List<py5> categories;

        public ShowCategoriesCommand(AllOperationsView$$State allOperationsView$$State, List<py5> list) {
            super("showCategories", hx5.class);
            this.categories = list;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showCategories(this.categories);
        }
    }

    public class ShowCategoriesLoadedCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowCategoriesLoadedCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showCategoriesLoaded", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showCategoriesLoaded(this.show);
        }
    }

    public class ShowCouldntLoadCategoriesCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowCouldntLoadCategoriesCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showCouldntLoadCategories", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showCouldntLoadCategories(this.show);
        }
    }

    public class ShowEmptyOperationsCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowEmptyOperationsCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showEmptyOperations", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showEmptyOperations(this.show);
        }
    }

    public class ShowEmptyOperationsErrorCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowEmptyOperationsErrorCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showEmptyOperationsError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showEmptyOperationsError(this.show);
        }
    }

    public class ShowEmptyOperationsProgressCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowEmptyOperationsProgressCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showEmptyOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showEmptyOperationsProgress(this.show);
        }
    }

    public class ShowLoadingCategoriesCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowLoadingCategoriesCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showLoadingCategories", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showLoadingCategories(this.show);
        }
    }

    public class ShowPageOfOperationsProgressCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowPageOfOperationsProgressCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showPageOfOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showPageOfOperationsProgress(this.show);
        }
    }

    public class ShowRefreshOperationsProgressCommand extends wd9<AllOperationsView> {
        public final boolean show;

        public ShowRefreshOperationsProgressCommand(AllOperationsView$$State allOperationsView$$State, boolean z) {
            super("showRefreshOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showRefreshOperationsProgress(this.show);
        }
    }

    public class ShowSelectedCategoryCommand extends wd9<AllOperationsView> {
        public final py5 category;

        public ShowSelectedCategoryCommand(AllOperationsView$$State allOperationsView$$State, py5 py5Var) {
            super("showSelectedCategory", k9.class);
            this.category = py5Var;
        }

        @Override // defpackage.wd9
        public void apply(AllOperationsView allOperationsView) {
            allOperationsView.showSelectedCategory(this.category);
        }
    }
}
