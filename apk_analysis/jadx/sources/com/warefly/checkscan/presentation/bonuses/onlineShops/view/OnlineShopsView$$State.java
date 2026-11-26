package com.warefly.checkscan.presentation.bonuses.onlineShops.view;

import defpackage.b06;
import defpackage.cs0;
import defpackage.g81;
import defpackage.hx5;
import defpackage.j9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OnlineShopsView$$State extends kh5<OnlineShopsView> implements OnlineShopsView {

    public class ShowFiltersCommand extends wd9<OnlineShopsView> {
        public final List<g81> filters;
        public final int selectedCatId;

        public ShowFiltersCommand(OnlineShopsView$$State onlineShopsView$$State, List<g81> list, int i) {
            super("showFilters", hx5.class);
            this.filters = list;
            this.selectedCatId = i;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showFilters(this.filters, this.selectedCatId);
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
            ((OnlineShopsView) it.next()).openUrl(str);
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
            ((OnlineShopsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void scrollNextSpecials(int i) {
        ScrollNextSpecialsCommand scrollNextSpecialsCommand = new ScrollNextSpecialsCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(scrollNextSpecialsCommand).b(xd9Var.a, scrollNextSpecialsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).scrollNextSpecials(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(scrollNextSpecialsCommand).a(xd9Var2.a, scrollNextSpecialsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void scrollToTop() {
        ScrollToTopCommand scrollToTopCommand = new ScrollToTopCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(scrollToTopCommand).b(xd9Var.a, scrollToTopCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).scrollToTop();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(scrollToTopCommand).a(xd9Var2.a, scrollToTopCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showAllData(List<? extends cs0> list) {
        ShowAllDataCommand showAllDataCommand = new ShowAllDataCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAllDataCommand).b(xd9Var.a, showAllDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showAllData(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAllDataCommand).a(xd9Var2.a, showAllDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showFavouriteStatusChanged(boolean z) {
        ShowFavouriteStatusChangedCommand showFavouriteStatusChangedCommand = new ShowFavouriteStatusChangedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavouriteStatusChangedCommand).b(xd9Var.a, showFavouriteStatusChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showFavouriteStatusChanged(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavouriteStatusChangedCommand).a(xd9Var2.a, showFavouriteStatusChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showFilterButton(boolean z) {
        ShowFilterButtonCommand showFilterButtonCommand = new ShowFilterButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFilterButtonCommand).b(xd9Var.a, showFilterButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showFilterButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFilterButtonCommand).a(xd9Var2.a, showFilterButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showFilters(List<g81> list, int i) {
        ShowFiltersCommand showFiltersCommand = new ShowFiltersCommand(this, list, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFiltersCommand).b(xd9Var.a, showFiltersCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showFilters(list, i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFiltersCommand).a(xd9Var2.a, showFiltersCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public void showOrdBottomSheet(b06 b06Var) {
        ShowOrdBottomSheetCommand showOrdBottomSheetCommand = new ShowOrdBottomSheetCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdBottomSheetCommand).b(xd9Var.a, showOrdBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnlineShopsView) it.next()).showOrdBottomSheet(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdBottomSheetCommand).a(xd9Var2.a, showOrdBottomSheetCommand);
    }

    public class OpenUrlCommand extends wd9<OnlineShopsView> {
        public final String arg0;

        public OpenUrlCommand(OnlineShopsView$$State onlineShopsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnlineShopsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnlineShopsView$$State onlineShopsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ScrollNextSpecialsCommand extends wd9<OnlineShopsView> {
        public final int pos;

        public ScrollNextSpecialsCommand(OnlineShopsView$$State onlineShopsView$$State, int i) {
            super("scrollNextSpecials", hx5.class);
            this.pos = i;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.scrollNextSpecials(this.pos);
        }
    }

    public class ScrollToTopCommand extends wd9<OnlineShopsView> {
        public ScrollToTopCommand(OnlineShopsView$$State onlineShopsView$$State) {
            super("scrollToTop", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.scrollToTop();
        }
    }

    public class SetToolbarTitleCommand extends wd9<OnlineShopsView> {
        public final String title;

        public SetToolbarTitleCommand(OnlineShopsView$$State onlineShopsView$$State, String str) {
            super("setToolbarTitle", j9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.setToolbarTitle(this.title);
        }
    }

    public class ShowAllDataCommand extends wd9<OnlineShopsView> {
        public final List<? extends cs0> items;

        public ShowAllDataCommand(OnlineShopsView$$State onlineShopsView$$State, List<? extends cs0> list) {
            super("showAllData", j9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showAllData(this.items);
        }
    }

    public class ShowFavouriteStatusChangedCommand extends wd9<OnlineShopsView> {
        public final boolean favourite;

        public ShowFavouriteStatusChangedCommand(OnlineShopsView$$State onlineShopsView$$State, boolean z) {
            super("showFavouriteStatusChanged", hx5.class);
            this.favourite = z;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showFavouriteStatusChanged(this.favourite);
        }
    }

    public class ShowFilterButtonCommand extends wd9<OnlineShopsView> {
        public final boolean show;

        public ShowFilterButtonCommand(OnlineShopsView$$State onlineShopsView$$State, boolean z) {
            super("showFilterButton", j9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showFilterButton(this.show);
        }
    }

    public class ShowLoadingCommand extends wd9<OnlineShopsView> {
        public final boolean show;

        public ShowLoadingCommand(OnlineShopsView$$State onlineShopsView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showLoading(this.show);
        }
    }

    public class ShowOrdBottomSheetCommand extends wd9<OnlineShopsView> {
        public final b06 data;

        public ShowOrdBottomSheetCommand(OnlineShopsView$$State onlineShopsView$$State, b06 b06Var) {
            super("showOrdBottomSheet", hx5.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(OnlineShopsView onlineShopsView) {
            onlineShopsView.showOrdBottomSheet(this.data);
        }
    }
}
