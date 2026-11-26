package com.warefly.checkscan.presentation.electrocheque.onboarding.view;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentElectrochequesOnboardingBinding;
import com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingPresenter;
import com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView;
import com.warefly.checkscan.presentation.electrocheque.onboarding.view.ElectroChequesOnboardingFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.eu1;
import defpackage.jf6;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.rv6;
import defpackage.s20;
import defpackage.t64;
import defpackage.u64;
import defpackage.uf3;
import defpackage.vv2;
import defpackage.vv6;
import defpackage.wv6;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ElectroChequesOnboardingFragment extends BaseFragment<FragmentElectrochequesOnboardingBinding> implements ElectroChequesOnBoardingView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_electrocheques_onboarding;
    public final ol4 g = new ol4(FragmentElectrochequesOnboardingBinding.class);
    public eu1 h;
    public eu1 i;
    public ElectroChequesOnBoardingPresenter presenter;

    static {
        bs6 bs6Var = new bs6(ElectroChequesOnboardingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentElectrochequesOnboardingBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public final void enableButton(boolean z) {
        n().btnConnect.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public final void enableRegisteredButton(boolean z) {
        n().btnConnect.setText(z ? getString(R.string.fragment_electrocheques_onboarding_btn_connect_registered) : getString(R.string.fragment_electrocheques_onboarding_btn_connect));
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentElectrochequesOnboardingBinding n() {
        return (FragmentElectrochequesOnboardingBinding) this.g.getValue(this, j[0]);
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ElectroChequesOnBoardingPresenter electroChequesOnBoardingPresenter = this.presenter;
        if (electroChequesOnBoardingPresenter != null) {
            electroChequesOnBoardingPresenter.checkButtonState();
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvInsctructions;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        eu1 eu1Var = new eu1(new s20(u64.c, 1));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        RecyclerView recyclerView2 = n().rvQuestions;
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        eu1 eu1Var2 = new eu1(new wv6(vv6.c));
        this.i = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        FragmentElectrochequesOnboardingBinding fragmentElectrochequesOnboardingBindingN = n();
        fragmentElectrochequesOnboardingBindingN.btnConnect.setOnClickListener(new View.OnClickListener() { // from class: mv2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr = ElectroChequesOnboardingFragment.j;
                ElectroChequesOnBoardingPresenter electroChequesOnBoardingPresenter = this.b.presenter;
                if (electroChequesOnBoardingPresenter != null) {
                    electroChequesOnBoardingPresenter.onConnectClicked();
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            }
        });
        fragmentElectrochequesOnboardingBindingN.btnBack.setOnClickListener(new View.OnClickListener() { // from class: nv2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr = ElectroChequesOnboardingFragment.j;
                ElectroChequesOnBoardingPresenter electroChequesOnBoardingPresenter = this.b.presenter;
                if (electroChequesOnBoardingPresenter != null) {
                    electroChequesOnBoardingPresenter.onBackPressed();
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            }
        });
    }

    public final ElectroChequesOnBoardingPresenter providePresenter() {
        return new ElectroChequesOnBoardingPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (jf6) m2.c(jf6.class, e.e(this), null, null), (vv2) m2.c(vv2.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public final void showInstructions(List<t64> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public final void showQuestions(List<rv6> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
