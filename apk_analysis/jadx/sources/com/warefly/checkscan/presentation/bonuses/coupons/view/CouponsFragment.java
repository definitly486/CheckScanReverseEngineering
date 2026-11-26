package com.warefly.checkscan.presentation.bonuses.coupons.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentCouponsBinding;
import com.warefly.checkscan.databinding.LayoutToolbarBackFilterIconBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FiltersNewDialog;
import com.warefly.checkscan.presentation.bonuses.coupons.presenter.CouponsPresenter;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.c9;
import defpackage.e;
import defpackage.eu1;
import defpackage.g42;
import defpackage.gh4;
import defpackage.gr6;
import defpackage.j59;
import defpackage.l42;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.m42;
import defpackage.n2;
import defpackage.n42;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.q42;
import defpackage.uf3;
import defpackage.x07;
import defpackage.x9;
import defpackage.yr3;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CouponsFragment extends BaseFragment<FragmentCouponsBinding> implements CouponsView {
    public static final /* synthetic */ ze4<Object>[] m;
    public final int f = R.layout.fragment_coupons;
    public final ol4 g = new ol4(FragmentCouponsBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(n42.class), new d());
    public FiltersNewDialog i;
    public AddedToFavesDialog j;
    public RemovedFromFavesDialog k;
    public eu1 l;
    public CouponsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CouponsFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CouponsFragment.this.o().tryAgainClick();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements bm3<Integer, String, j59> {
        public static final c f = new c(2);

        @Override // defpackage.bm3
        public final j59 invoke(Integer num, String str) {
            num.intValue();
            str.getClass();
            return j59.a;
        }
    }

    public static final class d implements ll3<Bundle> {
        public d() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CouponsFragment couponsFragment = CouponsFragment.this;
            Bundle arguments = couponsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(couponsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CouponsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCouponsBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentCouponsBinding n() {
        return (FragmentCouponsBinding) this.g.getValue(this, m[0]);
    }

    public final CouponsPresenter o() {
        CouponsPresenter couponsPresenter = this.presenter;
        if (couponsPresenter != null) {
            return couponsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.l = null;
        super.onDestroyView();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().tryAgainClick();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvCoupons;
        eu1 eu1Var = new eu1(new g42(new l42(1, o(), CouponsPresenter.class, "onCouponCLick", "onCouponCLick(J)V", 0), new m42(2, o(), CouponsPresenter.class, "setFavouriteCoupon", "setFavouriteCoupon(JZ)V", 0)));
        this.l = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new yr3());
        LayoutToolbarBackFilterIconBinding layoutToolbarBackFilterIconBinding = n().toolbar;
        ImageButton imageButton = layoutToolbarBackFilterIconBinding.btnBack;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new a()));
        ImageButton imageButton2 = layoutToolbarBackFilterIconBinding.btnFilter;
        imageButton2.getClass();
        imageButton2.setVisibility(4);
        layoutToolbarBackFilterIconBinding.tvToolbarTitle.setText(getString(R.string.coupons_toolbar_title));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CouponsPresenter providePresenter() {
        return new CouponsPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), ((n42) this.h.getValue()).a, (x9) m2.c(x9.class, e.e(this), null, null), (q42) m2.c(q42.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public final void setCoupons(List<gr6> list) {
        list.getClass();
        eu1 eu1Var = this.l;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public final void showError() {
        FragmentCouponsBinding fragmentCouponsBindingN = n();
        fragmentCouponsBindingN.tvErrorDescription.setVisibility(0);
        fragmentCouponsBindingN.btnTryAgain.setVisibility(0);
        TextView textView = fragmentCouponsBindingN.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public final void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        Context context = getContext();
        if (context != null) {
            if (z2) {
                AddedToFavesDialog addedToFavesDialog = this.j;
                if (addedToFavesDialog != null) {
                    addedToFavesDialog.dismiss();
                }
                AddedToFavesDialog addedToFavesDialog2 = new AddedToFavesDialog(context, z);
                this.j = addedToFavesDialog2;
                addedToFavesDialog2.show();
                return;
            }
            RemovedFromFavesDialog removedFromFavesDialog = this.k;
            if (removedFromFavesDialog != null) {
                removedFromFavesDialog.dismiss();
            }
            RemovedFromFavesDialog removedFromFavesDialog2 = new RemovedFromFavesDialog(context, z);
            this.k = removedFromFavesDialog2;
            removedFromFavesDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public final void showFiltersDialog() {
        FiltersNewDialog filtersNewDialog = this.i;
        if (filtersNewDialog != null) {
            filtersNewDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            FiltersNewDialog filtersNewDialog2 = new FiltersNewDialog(context, c.f);
            this.i = filtersNewDialog2;
            filtersNewDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView
    public final void showLoading(boolean z) {
        FragmentCouponsBinding fragmentCouponsBindingN = n();
        ConstraintLayout root = fragmentCouponsBindingN.toolbar.getRoot();
        root.getClass();
        root.setVisibility(!z ? 0 : 8);
        FrameLayout root2 = fragmentCouponsBindingN.viewLoading.getRoot();
        root2.getClass();
        root2.setVisibility(z ? 0 : 8);
    }
}
