package com.warefly.checkscan.insuranceShowcase.presentation.showcase.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.insuranceShowcase.databinding.FragmentInsuranceShowcaseBinding;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.e74;
import defpackage.g74;
import defpackage.gh4;
import defpackage.h74;
import defpackage.i58;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k73;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.pz3;
import defpackage.rb;
import defpackage.uf3;
import defpackage.x07;
import defpackage.z64;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class InsuranceShowcaseFragment extends BaseFragment<FragmentInsuranceShowcaseBinding> implements InsuranceShowcaseView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_insurance_showcase;
    public final ol4 g = new ol4(FragmentInsuranceShowcaseBinding.class);
    public i58 h;
    public InsuranceShowcasePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            InsuranceShowcaseFragment.this.o().onBackPressed();
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
            InsuranceShowcaseFragment.this.o().onTryAgainClicked();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(InsuranceShowcaseFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/insuranceShowcase/databinding/FragmentInsuranceShowcaseBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
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

    public final FragmentInsuranceShowcaseBinding n() {
        return (FragmentInsuranceShowcaseBinding) this.g.getValue(this, j[0]);
    }

    public final InsuranceShowcasePresenter o() {
        InsuranceShowcasePresenter insuranceShowcasePresenter = this.presenter;
        if (insuranceShowcasePresenter != null) {
            return insuranceShowcasePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        i58 i58Var = new i58(new e74(o()), new z64(o(), new rb(this, 3), LifecycleOwnerKt.getLifecycleScope(this)));
        this.h = i58Var;
        recyclerView.setAdapter(i58Var);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 2, 1, false);
        gridLayoutManager.setSpanSizeLookup(new g74(this));
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.addItemDecoration(new h74());
        recyclerView.setItemAnimator(null);
        ImageView imageView = n().toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
    }

    public final InsuranceShowcasePresenter providePresenter() {
        return new InsuranceShowcasePresenter((k73) m2.c(k73.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public final void setToolbarTitle(String str) {
        str.getClass();
        n().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public final void showItems(List<? extends pz3> list) {
        list.getClass();
        i58 i58Var = this.h;
        if (i58Var != null) {
            i58Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
