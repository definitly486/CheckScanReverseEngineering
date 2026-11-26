package com.warefly.checkscan.presentation.bonuses.favoritePreviews.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentOnlineShopsNewBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.favoritePreviews.presenter.FavoritePreviewsPresenter;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b63;
import defpackage.bm0;
import defpackage.bs6;
import defpackage.c63;
import defpackage.c9;
import defpackage.cs0;
import defpackage.dv7;
import defpackage.dw7;
import defpackage.e;
import defpackage.en1;
import defpackage.eu1;
import defpackage.ew5;
import defpackage.gh4;
import defpackage.gy8;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.na;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.pa;
import defpackage.pl2;
import defpackage.su7;
import defpackage.sw3;
import defpackage.tu7;
import defpackage.u96;
import defpackage.uf3;
import defpackage.v10;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoritePreviewsFragment extends BaseFragment<FragmentOnlineShopsNewBinding> implements FavoritePreviewsView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_online_shops_new;
    public final ol4 g = new ol4(FragmentOnlineShopsNewBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(c63.class), new b());
    public OrdAdInfoDialog i;
    public eu1 j;
    public FavoritePreviewsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            FavoritePreviewsFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class b implements ll3<Bundle> {
        public b() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            FavoritePreviewsFragment favoritePreviewsFragment = FavoritePreviewsFragment.this;
            Bundle arguments = favoritePreviewsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(favoritePreviewsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(FavoritePreviewsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
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

    public final FragmentOnlineShopsNewBinding n() {
        return (FragmentOnlineShopsNewBinding) this.g.getValue(this, k[0]);
    }

    public final FavoritePreviewsPresenter o() {
        FavoritePreviewsPresenter favoritePreviewsPresenter = this.presenter;
        if (favoritePreviewsPresenter != null) {
            return favoritePreviewsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = n().toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        RecyclerView recyclerView = n().rvAll;
        eu1 eu1Var = new eu1(new dv7(o()), new dw7(o()), new na(o()), new v10(su7.c, 1));
        this.j = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setItemAnimator(null);
        recyclerView.addOnScrollListener(new ew5(recyclerView, 5, new b63(0, o(), FavoritePreviewsPresenter.class, "onScrollEnd", "onScrollEnd()V", 0)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FavoritePreviewsPresenter providePresenter() {
        return new FavoritePreviewsPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (bm0) m2.c(bm0.class, e.e(this), null, null), (c63) this.h.getValue());
    }

    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public final void setToolbarTitle(String str) {
        str.getClass();
        n().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public final void showData(List<? extends cs0> list) {
        list.getClass();
        eu1 eu1Var = this.j;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvAll;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        int iE = pl2.e(16);
        eu1 eu1Var2 = this.j;
        Integer numValueOf = Integer.valueOf(eu1Var2 != null ? eu1Var2.i.d(pa.class) : Integer.MIN_VALUE);
        eu1 eu1Var3 = this.j;
        Integer numValueOf2 = Integer.valueOf(eu1Var3 != null ? eu1Var3.i.d(tu7.class) : Integer.MIN_VALUE);
        eu1 eu1Var4 = this.j;
        recyclerView.addItemDecoration(new sw3(iE, u96.i(numValueOf, numValueOf2, Integer.valueOf(eu1Var4 != null ? eu1Var4.i.d(en1.class) : Integer.MIN_VALUE))), 0);
        if (recyclerView.getItemDecorationCount() > 1) {
            recyclerView.removeItemDecorationAt(1);
        }
        eu1 eu1Var5 = this.j;
        int iD = eu1Var5 != null ? eu1Var5.i.d(en1.a.class) : Integer.MIN_VALUE;
        eu1 eu1Var6 = this.j;
        int iD2 = eu1Var6 != null ? eu1Var6.i.d(en1.b.class) : Integer.MIN_VALUE;
        eu1 eu1Var7 = this.j;
        int iD3 = eu1Var7 != null ? eu1Var7.i.d(pa.class) : Integer.MIN_VALUE;
        eu1 eu1Var8 = this.j;
        recyclerView.addItemDecoration(new gy8(new int[]{iD, iD2, iD3, eu1Var8 != null ? eu1Var8.i.d(tu7.class) : Integer.MIN_VALUE}), 1);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
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

    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public final void showLoading(boolean z) {
        FragmentOnlineShopsNewBinding fragmentOnlineShopsNewBindingN = n();
        RecyclerView recyclerView = fragmentOnlineShopsNewBindingN.rvAll;
        recyclerView.getClass();
        recyclerView.setVisibility(z ? 8 : 0);
        FrameLayout root = fragmentOnlineShopsNewBindingN.viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView
    public final void showOrdBottomSheet(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.i;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            ordAdInfoDialog2.show();
            this.i = ordAdInfoDialog2;
        }
    }
}
