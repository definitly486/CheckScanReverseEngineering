package com.warefly.checkscan.auth.presentation.main.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.Group;
import androidx.core.graphics.Insets;
import androidx.core.os.BundleKt;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentPhoneSignUpBinding;
import com.warefly.checkscan.auth.presentation.main.dialogs.AgreementDialog;
import com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.d12;
import defpackage.eu1;
import defpackage.fh8;
import defpackage.fx;
import defpackage.gh4;
import defpackage.hr7;
import defpackage.i30;
import defpackage.ix7;
import defpackage.j30;
import defpackage.j59;
import defpackage.ka4;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.mk3;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ob;
import defpackage.ol4;
import defpackage.p76;
import defpackage.pl2;
import defpackage.pm;
import defpackage.q76;
import defpackage.r7;
import defpackage.rj1;
import defpackage.s76;
import defpackage.s83;
import defpackage.t76;
import defpackage.t83;
import defpackage.u76;
import defpackage.ub;
import defpackage.uf3;
import defpackage.v05;
import defpackage.v76;
import defpackage.w05;
import defpackage.w76;
import defpackage.x07;
import defpackage.x76;
import defpackage.z99;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PhoneSignUpFragment extends BaseFragment<FragmentPhoneSignUpBinding> implements PhoneSignUpView {
    public static final a l;
    public static final /* synthetic */ ze4<Object>[] m;
    public final int f = R.layout.fragment_phone_sign_up;
    public final ol4 g = new ol4(FragmentPhoneSignUpBinding.class);
    public final fh8 h = new fh8(new b());
    public eu1 i;
    public LoadingDialog j;
    public AgreementDialog k;
    public PhoneSignUpPresenter presenter;

    public static final class a {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b extends gh4 implements ll3<v05> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final v05 invoke() {
            PhoneSignUpFragment phoneSignUpFragment = PhoneSignUpFragment.this;
            w05 w05Var = new w05(phoneSignUpFragment.requireContext());
            d12 d12Var = new d12();
            ArrayList arrayList = w05Var.b;
            arrayList.add(d12Var);
            arrayList.add(new d12());
            arrayList.add(new com.warefly.checkscan.auth.presentation.main.view.a(phoneSignUpFragment));
            return w05Var.a();
        }
    }

    public static final class c extends gh4 implements bm3<Boolean, Insets, j59> {
        public c() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(Boolean bool, Insets insets) {
            boolean zBooleanValue = bool.booleanValue();
            Insets insets2 = insets;
            insets2.getClass();
            FragmentPhoneSignUpBinding fragmentPhoneSignUpBindingN = PhoneSignUpFragment.this.n();
            NestedScrollView nestedScrollView = fragmentPhoneSignUpBindingN.nestedScrolledView;
            if (zBooleanValue) {
                nestedScrollView.getClass();
                nestedScrollView.setPadding(nestedScrollView.getPaddingLeft(), nestedScrollView.getPaddingTop(), nestedScrollView.getPaddingRight(), insets2.bottom - pl2.e(44));
                fragmentPhoneSignUpBindingN.nestedScrolledView.setTranslationY(pl2.d(-44.0f));
            } else {
                nestedScrollView.getClass();
                nestedScrollView.setPadding(nestedScrollView.getPaddingLeft(), nestedScrollView.getPaddingTop(), nestedScrollView.getPaddingRight(), 0);
                fragmentPhoneSignUpBindingN.nestedScrolledView.setTranslationY(0.0f);
            }
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
            PhoneSignUpFragment.this.o().onSkipRegistrationClicked();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ z99 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(z99 z99Var) {
            super(1);
            this.g = z99Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PhoneSignUpFragment.this.o().onOpenLinkWebViewClicked(this.g.b);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PhoneSignUpFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
        l = new a();
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.j;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void flashAgreementsError() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
        RecyclerView recyclerView = n().rvAgreements;
        recyclerView.getClass();
        pm.a(recyclerView, AppCompatResources.getDrawable(requireContext(), R.drawable.background_red_10_radius_8));
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClicked();
        return false;
    }

    public final FragmentPhoneSignUpBinding n() {
        return (FragmentPhoneSignUpBinding) this.g.getValue(this, m[0]);
    }

    public final PhoneSignUpPresenter o() {
        PhoneSignUpPresenter phoneSignUpPresenter = this.presenter;
        if (phoneSignUpPresenter != null) {
            return phoneSignUpPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentPhoneSignUpBinding fragmentPhoneSignUpBindingN = n();
        TextView textView = fragmentPhoneSignUpBindingN.btnShowInviteCode;
        textView.getClass();
        int i = 1;
        textView.setOnClickListener(new lb7(new i30(this, i)));
        ImageView imageView = fragmentPhoneSignUpBindingN.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new j30(this, i)));
        TextView textView2 = fragmentPhoneSignUpBindingN.btnSupport;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new u76(this)));
        TextView textView3 = fragmentPhoneSignUpBindingN.btnSupportBottom;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new v76(this)));
        TextView textView4 = fragmentPhoneSignUpBindingN.btnNext;
        textView4.getClass();
        textView4.setOnClickListener(new lb7(new rj1(this, 1)));
        FragmentPhoneSignUpBinding fragmentPhoneSignUpBindingN2 = n();
        fragmentPhoneSignUpBindingN2.etPhone.addTextChangedListener(new p76(10, "### ### ## ##", new w76(this, 0)));
        fragmentPhoneSignUpBindingN2.etInviteCode.addTextChangedListener(new x76(this));
        fragmentPhoneSignUpBindingN2.etPhone.postDelayed(new s76(fragmentPhoneSignUpBindingN2, 0), 50L);
        n().nestedScrolledView.setOnTouchListener(new t76());
        RecyclerView recyclerView = n().rvAgreements;
        v05 v05Var = (v05) this.h.getValue();
        v05Var.getClass();
        eu1 eu1Var = new eu1(new ob(v05Var, o()));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        getViewLifecycleOwner().getLifecycle().addObserver(new mk3(requireActivity().getWindow(), this, new c()));
    }

    public final PhoneSignUpPresenter providePresenter() {
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null);
        fx fxVar = (fx) m2.c(fx.class, defpackage.e.e(this), null, null);
        Bundle arguments = getArguments();
        return new PhoneSignUpPresenter(uf3Var, fxVar, arguments != null ? arguments.getString("INVITE_CODE_KEY") : null, (q76) m2.c(q76.class, defpackage.e.e(this), null, null), (t83) m2.c(t83.class, defpackage.e.e(this), null, null), (s83) m2.c(s83.class, defpackage.e.e(this), null, null), (ix7) m2.c(ix7.class, defpackage.e.e(this), null, null), (ka4) m2.c(ka4.class, defpackage.e.e(this), null, null), (hr7) m2.c(hr7.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void setInviteCodeFiled(String str) {
        str.getClass();
        n().etInviteCode.setText(str);
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showAgreementBottomSheet(String str) {
        str.getClass();
        AgreementDialog agreementDialog = this.k;
        if (agreementDialog != null) {
            agreementDialog.dismiss();
        }
        AgreementDialog.d.getClass();
        AgreementDialog agreementDialog2 = new AgreementDialog();
        agreementDialog2.setArguments(BundleKt.bundleOf(new b36("URL_KEY", str)));
        m(agreementDialog2);
        this.k = agreementDialog2;
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showAgreements(List<ub> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showInviteCodeField() {
        FragmentPhoneSignUpBinding fragmentPhoneSignUpBindingN = n();
        TextView textView = fragmentPhoneSignUpBindingN.btnShowInviteCode;
        textView.getClass();
        textView.setVisibility(8);
        Group group = fragmentPhoneSignUpBindingN.groupInviteCode;
        group.getClass();
        group.setVisibility(0);
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showInviteCodeFieldError(boolean z) {
        TextInputLayout textInputLayout = n().tilInviteCode;
        textInputLayout.setErrorEnabled(z);
        textInputLayout.setError(z ? getString(R.string.auth_invite_code_field_error) : null);
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.j;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.j = loadingDialogB;
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showPhoneFieldError(boolean z) {
        TextInputLayout textInputLayout = n().tilPhone;
        textInputLayout.setErrorEnabled(z);
        textInputLayout.setError(z ? getString(R.string.auth_phone_field_error_text) : null);
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showSkipButton() {
        FragmentPhoneSignUpBinding fragmentPhoneSignUpBindingN = n();
        fragmentPhoneSignUpBindingN.btnSupport.setText(getString(R.string.auth_phone_sign_in_skip_button));
        TextView textView = fragmentPhoneSignUpBindingN.btnSupport;
        textView.getClass();
        textView.setOnClickListener(new lb7(new d()));
        TextView textView2 = fragmentPhoneSignUpBindingN.btnSupportBottom;
        textView2.getClass();
        textView2.setVisibility(0);
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showUnknownError() {
        Toast.makeText(requireContext(), R.string.auth_error_default, 0).show();
    }

    @Override // com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView
    public final void showUserPolicy(z99 z99Var) {
        z99Var.getClass();
        TextView textView = n().btnPersonalDataPolicy;
        textView.setText(z99Var.a);
        textView.setOnClickListener(new lb7(new e(z99Var)));
    }
}
