package com.warefly.checkscan.presentation.bonuses.coupons.view;

import defpackage.gr6;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CouponsView$$State extends kh5<CouponsView> implements CouponsView {

    public class ShowFavoriteStatusIsChangedCommand extends wd9<CouponsView> {
        public final boolean isFavorite;
        public final boolean isSuccessful;

        public ShowFavoriteStatusIsChangedCommand(CouponsView$$State couponsView$$State, boolean z, boolean z2) {
            super("showFavoriteStatusIsChanged", hx5.class);
            this.isSuccessful = z;
            this.isFavorite = z2;
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.showFavoriteStatusIsChanged(this.isSuccessful, this.isFavorite);
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
            ((CouponsView) it.next()).openUrl(str);
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
            ((CouponsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public void setCoupons(List<gr6> list) {
        SetCouponsCommand setCouponsCommand = new SetCouponsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setCouponsCommand).b(xd9Var.a, setCouponsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponsView) it.next()).setCoupons(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setCouponsCommand).a(xd9Var2.a, setCouponsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponsView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        ShowFavoriteStatusIsChangedCommand showFavoriteStatusIsChangedCommand = new ShowFavoriteStatusIsChangedCommand(this, z, z2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFavoriteStatusIsChangedCommand).b(xd9Var.a, showFavoriteStatusIsChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponsView) it.next()).showFavoriteStatusIsChanged(z, z2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFavoriteStatusIsChangedCommand).a(xd9Var2.a, showFavoriteStatusIsChangedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public void showFiltersDialog() {
        ShowFiltersDialogCommand showFiltersDialogCommand = new ShowFiltersDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFiltersDialogCommand).b(xd9Var.a, showFiltersDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponsView) it.next()).showFiltersDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFiltersDialogCommand).a(xd9Var2.a, showFiltersDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CouponsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<CouponsView> {
        public final String arg0;

        public OpenUrlCommand(CouponsView$$State couponsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CouponsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CouponsView$$State couponsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetCouponsCommand extends wd9<CouponsView> {
        public final List<gr6> coupons;

        public SetCouponsCommand(CouponsView$$State couponsView$$State, List<gr6> list) {
            super("setCoupons", hx5.class);
            this.coupons = list;
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.setCoupons(this.coupons);
        }
    }

    public class ShowErrorCommand extends wd9<CouponsView> {
        public ShowErrorCommand(CouponsView$$State couponsView$$State) {
            super("showError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.showError();
        }
    }

    public class ShowFiltersDialogCommand extends wd9<CouponsView> {
        public ShowFiltersDialogCommand(CouponsView$$State couponsView$$State) {
            super("showFiltersDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.showFiltersDialog();
        }
    }

    public class ShowLoadingCommand extends wd9<CouponsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(CouponsView$$State couponsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(CouponsView couponsView) {
            couponsView.showLoading(this.isLoading);
        }
    }
}
