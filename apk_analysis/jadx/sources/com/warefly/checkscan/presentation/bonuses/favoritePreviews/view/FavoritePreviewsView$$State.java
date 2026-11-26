package com.warefly.checkscan.presentation.bonuses.favoritePreviews.view;

import defpackage.b06;
import defpackage.cs0;
import defpackage.hx5;
import defpackage.j9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FavoritePreviewsView$$State extends kh5<FavoritePreviewsView> implements FavoritePreviewsView {
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
            ((FavoritePreviewsView) it.next()).openUrl(str);
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
            ((FavoritePreviewsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoritePreviewsView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public void showData(List<? extends cs0> list) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoritePreviewsView) it.next()).showData(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public void showFavouriteStatusChanged(boolean z) {
        ShowFavouriteStatusChangedCommand showFavouriteStatusChangedCommand = new ShowFavouriteStatusChangedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavouriteStatusChangedCommand).b(xd9Var.a, showFavouriteStatusChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoritePreviewsView) it.next()).showFavouriteStatusChanged(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavouriteStatusChangedCommand).a(xd9Var2.a, showFavouriteStatusChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoritePreviewsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public void showOrdBottomSheet(b06 b06Var) {
        ShowOrdBottomSheetCommand showOrdBottomSheetCommand = new ShowOrdBottomSheetCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdBottomSheetCommand).b(xd9Var.a, showOrdBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((FavoritePreviewsView) it.next()).showOrdBottomSheet(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdBottomSheetCommand).a(xd9Var2.a, showOrdBottomSheetCommand);
    }

    public class OpenUrlCommand extends wd9<FavoritePreviewsView> {
        public final String arg0;

        public OpenUrlCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<FavoritePreviewsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetToolbarTitleCommand extends wd9<FavoritePreviewsView> {
        public final String title;

        public SetToolbarTitleCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, String str) {
            super("setToolbarTitle", j9.class);
            this.title = str;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.setToolbarTitle(this.title);
        }
    }

    public class ShowDataCommand extends wd9<FavoritePreviewsView> {
        public final List<? extends cs0> items;

        public ShowDataCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, List<? extends cs0> list) {
            super("showData", j9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.showData(this.items);
        }
    }

    public class ShowFavouriteStatusChangedCommand extends wd9<FavoritePreviewsView> {
        public final boolean favourite;

        public ShowFavouriteStatusChangedCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, boolean z) {
            super("showFavouriteStatusChanged", hx5.class);
            this.favourite = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.showFavouriteStatusChanged(this.favourite);
        }
    }

    public class ShowLoadingCommand extends wd9<FavoritePreviewsView> {
        public final boolean show;

        public ShowLoadingCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.showLoading(this.show);
        }
    }

    public class ShowOrdBottomSheetCommand extends wd9<FavoritePreviewsView> {
        public final b06 data;

        public ShowOrdBottomSheetCommand(FavoritePreviewsView$$State favoritePreviewsView$$State, b06 b06Var) {
            super("showOrdBottomSheet", hx5.class);
            this.data = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(FavoritePreviewsView favoritePreviewsView) {
            favoritePreviewsView.showOrdBottomSheet(this.data);
        }
    }
}
