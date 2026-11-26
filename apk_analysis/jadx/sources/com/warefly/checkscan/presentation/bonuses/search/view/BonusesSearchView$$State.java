package com.warefly.checkscan.presentation.bonuses.search.view;

import defpackage.b06;
import defpackage.cs0;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BonusesSearchView$$State extends kh5<BonusesSearchView> implements BonusesSearchView {
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
            ((BonusesSearchView) it.next()).openUrl(str);
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
            ((BonusesSearchView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public void setQueryInSearchView(String str) {
        SetQueryInSearchViewCommand setQueryInSearchViewCommand = new SetQueryInSearchViewCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setQueryInSearchViewCommand).b(xd9Var.a, setQueryInSearchViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesSearchView) it.next()).setQueryInSearchView(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setQueryInSearchViewCommand).a(xd9Var2.a, setQueryInSearchViewCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public void setSearchView() {
        SetSearchViewCommand setSearchViewCommand = new SetSearchViewCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSearchViewCommand).b(xd9Var.a, setSearchViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesSearchView) it.next()).setSearchView();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSearchViewCommand).a(xd9Var2.a, setSearchViewCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public void showContent(List<? extends cs0> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesSearchView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public void showFavouriteStatusChanged(boolean z) {
        ShowFavouriteStatusChangedCommand showFavouriteStatusChangedCommand = new ShowFavouriteStatusChangedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavouriteStatusChangedCommand).b(xd9Var.a, showFavouriteStatusChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesSearchView) it.next()).showFavouriteStatusChanged(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavouriteStatusChangedCommand).a(xd9Var2.a, showFavouriteStatusChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public void showOrdBottomSheet(b06 b06Var) {
        ShowOrdBottomSheetCommand showOrdBottomSheetCommand = new ShowOrdBottomSheetCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdBottomSheetCommand).b(xd9Var.a, showOrdBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesSearchView) it.next()).showOrdBottomSheet(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdBottomSheetCommand).a(xd9Var2.a, showOrdBottomSheetCommand);
    }

    public class OpenUrlCommand extends wd9<BonusesSearchView> {
        public final String arg0;

        public OpenUrlCommand(BonusesSearchView$$State bonusesSearchView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BonusesSearchView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BonusesSearchView$$State bonusesSearchView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetQueryInSearchViewCommand extends wd9<BonusesSearchView> {
        public final String query;

        public SetQueryInSearchViewCommand(BonusesSearchView$$State bonusesSearchView$$State, String str) {
            super("setQueryInSearchView", hx5.class);
            this.query = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.setQueryInSearchView(this.query);
        }
    }

    public class SetSearchViewCommand extends wd9<BonusesSearchView> {
        public SetSearchViewCommand(BonusesSearchView$$State bonusesSearchView$$State) {
            super("setSearchView", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.setSearchView();
        }
    }

    public class ShowContentCommand extends wd9<BonusesSearchView> {
        public final List<? extends cs0> data;

        public ShowContentCommand(BonusesSearchView$$State bonusesSearchView$$State, List<? extends cs0> list) {
            super("showContent", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.showContent(this.data);
        }
    }

    public class ShowFavouriteStatusChangedCommand extends wd9<BonusesSearchView> {
        public final boolean favourite;

        public ShowFavouriteStatusChangedCommand(BonusesSearchView$$State bonusesSearchView$$State, boolean z) {
            super("showFavouriteStatusChanged", hx5.class);
            this.favourite = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.showFavouriteStatusChanged(this.favourite);
        }
    }

    public class ShowOrdBottomSheetCommand extends wd9<BonusesSearchView> {
        public final b06 data;

        public ShowOrdBottomSheetCommand(BonusesSearchView$$State bonusesSearchView$$State, b06 b06Var) {
            super("showOrdBottomSheet", hx5.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusesSearchView bonusesSearchView) {
            bonusesSearchView.showOrdBottomSheet(this.data);
        }
    }
}
