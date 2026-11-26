package com.warefly.checkscan.presentation.favorite.presenter;

import defpackage.b06;
import defpackage.cs0;
import defpackage.hx5;
import defpackage.j9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FavoriteView$$State extends kh5<FavoriteView> implements FavoriteView {
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
            ((FavoriteView) it.next()).openUrl(str);
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
            ((FavoriteView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void setShopsEmpty(boolean z) {
        SetShopsEmptyCommand setShopsEmptyCommand = new SetShopsEmptyCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setShopsEmptyCommand).b(xd9Var.a, setShopsEmptyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).setShopsEmpty(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setShopsEmptyCommand).a(xd9Var2.a, setShopsEmptyCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showData(List<? extends pz3> list) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showData(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showFavouriteStatusChanged(boolean z) {
        ShowFavouriteStatusChangedCommand showFavouriteStatusChangedCommand = new ShowFavouriteStatusChangedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavouriteStatusChangedCommand).b(xd9Var.a, showFavouriteStatusChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showFavouriteStatusChanged(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavouriteStatusChangedCommand).a(xd9Var2.a, showFavouriteStatusChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showNoShops(boolean z) {
        ShowNoShopsCommand showNoShopsCommand = new ShowNoShopsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoShopsCommand).b(xd9Var.a, showNoShopsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showNoShops(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoShopsCommand).a(xd9Var2.a, showNoShopsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showOrdBottomSheet(b06 b06Var) {
        ShowOrdBottomSheetCommand showOrdBottomSheetCommand = new ShowOrdBottomSheetCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdBottomSheetCommand).b(xd9Var.a, showOrdBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showOrdBottomSheet(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdBottomSheetCommand).a(xd9Var2.a, showOrdBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showPromocodes(List<? extends cs0> list) {
        ShowPromocodesCommand showPromocodesCommand = new ShowPromocodesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodesCommand).b(xd9Var.a, showPromocodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showPromocodes(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodesCommand).a(xd9Var2.a, showPromocodesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public void showShopsTitle(boolean z) {
        ShowShopsTitleCommand showShopsTitleCommand = new ShowShopsTitleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShopsTitleCommand).b(xd9Var.a, showShopsTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoriteView) it.next()).showShopsTitle(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShopsTitleCommand).a(xd9Var2.a, showShopsTitleCommand);
    }

    public class OpenUrlCommand extends wd9<FavoriteView> {
        public final String arg0;

        public OpenUrlCommand(FavoriteView$$State favoriteView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<FavoriteView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(FavoriteView$$State favoriteView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetShopsEmptyCommand extends wd9<FavoriteView> {
        public final boolean isEmpty;

        public SetShopsEmptyCommand(FavoriteView$$State favoriteView$$State, boolean z) {
            super("setShopsEmpty", k9.class);
            this.isEmpty = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.setShopsEmpty(this.isEmpty);
        }
    }

    public class ShowDataCommand extends wd9<FavoriteView> {
        public final List<? extends pz3> data;

        public ShowDataCommand(FavoriteView$$State favoriteView$$State, List<? extends pz3> list) {
            super("showData", j9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showData(this.data);
        }
    }

    public class ShowFavouriteStatusChangedCommand extends wd9<FavoriteView> {
        public final boolean favourite;

        public ShowFavouriteStatusChangedCommand(FavoriteView$$State favoriteView$$State, boolean z) {
            super("showFavouriteStatusChanged", hx5.class);
            this.favourite = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showFavouriteStatusChanged(this.favourite);
        }
    }

    public class ShowNoShopsCommand extends wd9<FavoriteView> {
        public final boolean show;

        public ShowNoShopsCommand(FavoriteView$$State favoriteView$$State, boolean z) {
            super("showNoShops", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showNoShops(this.show);
        }
    }

    public class ShowOrdBottomSheetCommand extends wd9<FavoriteView> {
        public final b06 data;

        public ShowOrdBottomSheetCommand(FavoriteView$$State favoriteView$$State, b06 b06Var) {
            super("showOrdBottomSheet", hx5.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showOrdBottomSheet(this.data);
        }
    }

    public class ShowPromocodesCommand extends wd9<FavoriteView> {
        public final List<? extends cs0> data;

        public ShowPromocodesCommand(FavoriteView$$State favoriteView$$State, List<? extends cs0> list) {
            super("showPromocodes", j9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showPromocodes(this.data);
        }
    }

    public class ShowShopsTitleCommand extends wd9<FavoriteView> {
        public final boolean show;

        public ShowShopsTitleCommand(FavoriteView$$State favoriteView$$State, boolean z) {
            super("showShopsTitle", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoriteView favoriteView) {
            favoriteView.showShopsTitle(this.show);
        }
    }
}
