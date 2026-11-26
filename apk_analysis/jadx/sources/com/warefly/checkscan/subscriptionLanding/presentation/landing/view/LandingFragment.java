package com.warefly.checkscan.subscriptionLanding.presentation.landing.view;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.subscriptionLanding.databinding.FragmentSubscriptionLandingBinding;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.presenter.LandingPresenter;
import defpackage.aa4;
import defpackage.bi4;
import defpackage.bs6;
import defpackage.ci4;
import defpackage.ck4;
import defpackage.e;
import defpackage.eu1;
import defpackage.jk4;
import defpackage.kk4;
import defpackage.m2;
import defpackage.m73;
import defpackage.ol4;
import defpackage.pz3;
import defpackage.uh4;
import defpackage.uj4;
import defpackage.vj4;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zj4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class LandingFragment extends BaseFragment<FragmentSubscriptionLandingBinding> implements LandingView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_subscription_landing;
    public final ol4 g = new ol4(FragmentSubscriptionLandingBinding.class);
    public eu1 h;
    public LandingPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(LandingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/subscriptionLanding/databinding/FragmentSubscriptionLandingBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = ((FragmentSubscriptionLandingBinding) this.g.getValue(this, j[0])).rvContent;
        kk4 kk4Var = new kk4(jk4.c, 0);
        vj4 vj4Var = new vj4(uj4.c);
        ci4 ci4Var = new ci4(bi4.c);
        ck4 ck4Var = new ck4(zj4.c);
        LandingPresenter landingPresenter = this.presenter;
        if (landingPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        eu1 eu1Var = new eu1(kk4Var, vj4Var, ci4Var, ck4Var, new uh4(landingPresenter));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setItemAnimator(null);
    }

    public final LandingPresenter providePresenter() {
        return new LandingPresenter((m73) m2.c(m73.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
