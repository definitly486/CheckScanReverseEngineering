package com.warefly.checkscan.presentation.bonuses.special.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentAllSpecialsBinding;
import com.warefly.checkscan.databinding.LayoutTextToolbarBinding;
import com.warefly.checkscan.databinding.LayoutTryAgainBinding;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsPresenter;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bm0;
import defpackage.bs6;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.i16;
import defpackage.j59;
import defpackage.k07;
import defpackage.k58;
import defpackage.lb7;
import defpackage.m2;
import defpackage.m8;
import defpackage.mo7;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.pl2;
import defpackage.pz3;
import defpackage.qn1;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AllSpecialsFragment extends BaseFragment<FragmentAllSpecialsBinding> implements AllSpecialsView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_all_specials;
    public final ol4 g = new ol4(FragmentAllSpecialsBinding.class);
    public k07 h;
    public eu1 i;
    public OrdAdInfoDialog j;
    public AllSpecialsPresenter presenter;

    public static final class a extends gh4 implements nl3<Integer, Object> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Object invoke(Integer num) {
            m8 m8Var;
            List<pz3> list;
            int iIntValue = num.intValue();
            eu1 eu1Var = AllSpecialsFragment.this.i;
            if (eu1Var == null || (m8Var = eu1Var.i) == null || (list = m8Var.b) == null) {
                return null;
            }
            return (pz3) qn1.W(iIntValue, list);
        }
    }

    public static final class b extends gh4 implements nl3<Integer, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            AllSpecialsFragment.this.o().onBannerShown(num.intValue());
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllSpecialsFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AllSpecialsFragment.this.o().onRefresh();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AllSpecialsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;", 0);
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

    public final FragmentAllSpecialsBinding n() {
        return (FragmentAllSpecialsBinding) this.g.getValue(this, k[0]);
    }

    public final AllSpecialsPresenter o() {
        AllSpecialsPresenter allSpecialsPresenter = this.presenter;
        if (allSpecialsPresenter != null) {
            return allSpecialsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        k07 k07Var = this.h;
        if (k07Var != null) {
            k07Var.b(z);
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvSpecials;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new k58(o()));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new i16(pl2.e(6)));
        LayoutTextToolbarBinding layoutTextToolbarBinding = n().viewToolbar;
        layoutTextToolbarBinding.tvToolbarTitle.setText(getString(R.string.catalog_specials_title));
        ImageView imageView = layoutTextToolbarBinding.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        RecyclerView recyclerView2 = n().rvSpecials;
        recyclerView2.getClass();
        k07 k07Var = new k07(recyclerView2, new a(), new b(), 0.8f);
        k07Var.b(isHidden());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        k07Var.a(viewLifecycleOwner);
        this.h = k07Var;
    }

    public final AllSpecialsPresenter providePresenter() {
        return new AllSpecialsPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (bm0) m2.c(bm0.class, e.e(this), null, null), (mo7) m2.c(mo7.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public final void showAdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.j;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.j = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public final void showCouldntLoadPage(boolean z) {
        if (z) {
            LayoutTryAgainBinding layoutTryAgainBinding = n().viewTryAgain;
            layoutTryAgainBinding.getRoot().setVisibility(0);
            layoutTryAgainBinding.tvMessage.setText(getString(R.string.partner_couldnt_load_info));
            TextView textView = layoutTryAgainBinding.btnTryAgain;
            textView.getClass();
            textView.setOnClickListener(new lb7(new d()));
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public final void showLoadingPage(boolean z) {
        FragmentAllSpecialsBinding fragmentAllSpecialsBindingN = n();
        LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding = fragmentAllSpecialsBindingN.viewLoading;
        if (!z) {
            layoutPreviewsLoadingBinding.getRoot().setVisibility(8);
        } else {
            layoutPreviewsLoadingBinding.getRoot().setVisibility(0);
            fragmentAllSpecialsBindingN.viewTryAgain.getRoot().setVisibility(8);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public final void showSpecials(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
