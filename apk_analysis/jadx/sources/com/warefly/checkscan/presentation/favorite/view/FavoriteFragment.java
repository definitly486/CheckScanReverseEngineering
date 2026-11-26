package com.warefly.checkscan.presentation.favorite.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentKt;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentFavoriteBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.favorite.presenter.FavoritePresenter;
import com.warefly.checkscan.presentation.favorite.presenter.FavoriteView;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bm0;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.bw8;
import defpackage.c9;
import defpackage.cs0;
import defpackage.dq6;
import defpackage.dv7;
import defpackage.dw7;
import defpackage.e;
import defpackage.en1;
import defpackage.eu1;
import defpackage.fw5;
import defpackage.gh4;
import defpackage.gy8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.na;
import defpackage.o42;
import defpackage.ol4;
import defpackage.pa;
import defpackage.pz3;
import defpackage.q86;
import defpackage.r53;
import defpackage.t53;
import defpackage.u53;
import defpackage.uf3;
import defpackage.v53;
import defpackage.w53;
import defpackage.x07;
import defpackage.x53;
import defpackage.xv0;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoriteFragment extends BaseFragment<FragmentFavoriteBinding> implements FavoriteView {
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_favorite;
    public final ol4 g = new ol4(FragmentFavoriteBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(x53.class), new b());
    public OrdAdInfoDialog i;
    public eu1 j;
    public eu1 k;
    public FavoritePresenter presenter;

    public static final class a extends gh4 implements bm3<String, Bundle, j59> {
        public a() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            str2.getClass();
            bundle.getClass();
            FavoriteFragment favoriteFragment = FavoriteFragment.this;
            FragmentKt.clearFragmentResult(favoriteFragment, str2);
            favoriteFragment.o().refreshPromocodes();
            return j59.a;
        }
    }

    public static final class b implements ll3<Bundle> {
        public b() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            FavoriteFragment favoriteFragment = FavoriteFragment.this;
            Bundle arguments = favoriteFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(favoriteFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(FavoriteFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentFavoriteBinding n() {
        return (FragmentFavoriteBinding) this.g.getValue(this, l[0]);
    }

    public final FavoritePresenter o() {
        FavoritePresenter favoritePresenter = this.presenter;
        if (favoritePresenter != null) {
            return favoritePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.k = null;
        this.j = null;
        super.onDestroyView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = n().toolbar;
        layoutToolbarSimpleTitleBinding.tvTitle.setText(getString(((x53) this.h.getValue()).a ? R.string.favorite_toolbar_title : R.string.history_toolbar_title));
        layoutToolbarSimpleTitleBinding.ivBtnBack.setOnClickListener(new r53(this, 0));
        n().btnBackMain.setOnClickListener(new View.OnClickListener() { // from class: s53
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr = FavoriteFragment.l;
                this.b.o().onBackPressed();
            }
        });
        RecyclerView recyclerView = n().rvPromocodes;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 2);
        gridLayoutManager.setSpanSizeLookup(new t53(this));
        recyclerView.setLayoutManager(gridLayoutManager);
        eu1 eu1Var = new eu1(new bw8(0), new dq6(new u53(this), new o42(this, 2)), new xv0(new v53(this)));
        this.k = eu1Var;
        recyclerView.setAdapter(eu1Var);
        RecyclerView recyclerView2 = n().rvShops;
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext(), 1, false));
        eu1 eu1Var2 = new eu1(new bw8(0), new dv7(o()), new dw7(o()), new na(o()), new q86());
        this.j = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        recyclerView2.setItemAnimator(null);
        n().scrollView.setOnScrollChangeListener(new fw5(new w53(this)));
        FragmentKt.setFragmentResultListener(this, "FAVORITE_PROMOCODES_UPDATED", new a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FavoritePresenter providePresenter() {
        return new FavoritePresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (bm0) m2.c(bm0.class, e.e(this), null, null), ((x53) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void setShopsEmpty(boolean z) {
        o().setShopsEmpty(z);
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showData(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.j;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvShops;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        eu1 eu1Var2 = this.j;
        int iD = eu1Var2 != null ? eu1Var2.i.d(en1.class) : Integer.MIN_VALUE;
        eu1 eu1Var3 = this.j;
        recyclerView.addItemDecoration(new gy8(new int[]{iD, eu1Var3 != null ? eu1Var3.i.d(pa.class) : Integer.MIN_VALUE}), 0);
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showFavouriteStatusChanged(boolean z) {
        Context context = getContext();
        if (context != null) {
            if (z) {
                new AddedToFavesDialog(context, true).show();
            } else {
                new RemovedFromFavesDialog(context, true).show();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showNoShops(boolean z) {
        n().tvNoShops.setText(getString(((x53) this.h.getValue()).a ? R.string.favorite_no_shops : R.string.history_no_shops));
        Group group = n().groupNoShops;
        group.getClass();
        group.setVisibility((z && o().getArePromocodesEmpty()) ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showOrdBottomSheet(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.i;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.i = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showPromocodes(List<? extends cs0> list) {
        list.getClass();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.favorite.presenter.FavoriteView
    public final void showShopsTitle(boolean z) {
        TextView textView = n().tvShopsTitle;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }
}
