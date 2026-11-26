package com.warefly.checkscan.presentation.bonuses.promocodes.view;

import android.os.Bundle;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentPromocodesBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesPresenter;
import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView;
import com.warefly.checkscan.presentation.bonuses.promocodes.view.PromocodesFragment;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.aa4;
import defpackage.bm0;
import defpackage.bs6;
import defpackage.c9;
import defpackage.dq6;
import defpackage.e;
import defpackage.er6;
import defpackage.eu1;
import defpackage.ew5;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nr6;
import defpackage.ol4;
import defpackage.or6;
import defpackage.pr6;
import defpackage.qr6;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodesFragment extends BaseFragment<FragmentPromocodesBinding> implements PromocodesView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_promocodes;
    public final ol4 g = new ol4(FragmentPromocodesBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(qr6.class), new a());
    public eu1 i;
    public PromocodesPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            PromocodesFragment promocodesFragment = PromocodesFragment.this;
            Bundle arguments = promocodesFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(promocodesFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(PromocodesFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentPromocodesBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public final void hideLoading(boolean z) {
        ShimmerFrameLayout root = ((FragmentPromocodesBinding) this.g.getValue(this, j[0])).incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        n().onBackPressed();
        return false;
    }

    public final PromocodesPresenter n() {
        PromocodesPresenter promocodesPresenter = this.presenter;
        if (promocodesPresenter != null) {
            return promocodesPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = j;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.g;
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = ((FragmentPromocodesBinding) ol4Var.getValue(this, ze4Var)).toolbar;
        layoutToolbarSimpleTitleBinding.tvTitle.setText(getString(R.string.fragment_online_shops_tv_promocodes));
        layoutToolbarSimpleTitleBinding.ivBtnBack.setOnClickListener(new View.OnClickListener() { // from class: mr6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr2 = PromocodesFragment.j;
                this.b.n().onBackPressed();
            }
        });
        RecyclerView recyclerView = ((FragmentPromocodesBinding) ol4Var.getValue(this, ze4VarArr[0])).rvPromocodes;
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 2));
        recyclerView.addOnScrollListener(new ew5(recyclerView, 10, new nr6(this)));
        eu1 eu1Var = new eu1(new dq6(new or6(2, n(), PromocodesPresenter.class, "onFavoriteClicked", "onFavoriteClicked(IZ)V", 0), new pr6(1, n(), PromocodesPresenter.class, "onPromocodeClicked", "onPromocodeClicked(I)V", 0)));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PromocodesPresenter providePresenter() {
        uf3 uf3Var = (uf3) n2.c(uf3.class, e.e(this), j(), null);
        bm0 bm0Var = (bm0) m2.c(bm0.class, e.e(this), null, null);
        NavArgsLazy navArgsLazy = this.h;
        return new PromocodesPresenter(uf3Var, bm0Var, ((qr6) navArgsLazy.getValue()).a, ((qr6) navArgsLazy.getValue()).b, ((qr6) navArgsLazy.getValue()).c);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public final void sendPromocodesUpdateResult() {
        getParentFragmentManager().setFragmentResult("FAVORITE_PROMOCODES_UPDATED", BundleKt.bundleOf());
    }

    @Override // com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView
    public final void showPromocodes(List<er6> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
