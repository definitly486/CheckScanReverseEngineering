package com.warefly.checkscan.auth.presentation.callVerification.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentPhoneMethodVerificationBinding;
import com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bs6;
import defpackage.c84;
import defpackage.e;
import defpackage.e4;
import defpackage.f4;
import defpackage.g06;
import defpackage.gx7;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mx7;
import defpackage.n2;
import defpackage.oa;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.qe;
import defpackage.r7;
import defpackage.u96;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationCallFragment extends BaseFragment<FragmentPhoneMethodVerificationBinding> implements VerificationCallView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_phone_method_verification;
    public final ol4 g = new ol4(FragmentPhoneMethodVerificationBinding.class);
    public g06 h;
    public LoadingDialog i;
    public VerificationCallPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(VerificationCallFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void clearOtp() {
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.a();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.i;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
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

    public final FragmentPhoneMethodVerificationBinding n() {
        return (FragmentPhoneMethodVerificationBinding) this.g.getValue(this, k[0]);
    }

    public final VerificationCallPresenter o() {
        VerificationCallPresenter verificationCallPresenter = this.presenter;
        if (verificationCallPresenter != null) {
            return verificationCallPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.h = null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentPhoneMethodVerificationBinding fragmentPhoneMethodVerificationBindingN = n();
        List listI = u96.i(fragmentPhoneMethodVerificationBindingN.etCodeOneCall, fragmentPhoneMethodVerificationBindingN.etCodeTwoCall, fragmentPhoneMethodVerificationBindingN.etCodeThreeCall, fragmentPhoneMethodVerificationBindingN.etCodeFourCall);
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.a();
        }
        g06 g06Var2 = new g06(o(), listI);
        this.h = g06Var2;
        g06Var2.b();
        g06 g06Var3 = this.h;
        if (g06Var3 != null) {
            g06Var3.c();
        }
        n().etCodeOneCall.requestFocus();
        FragmentPhoneMethodVerificationBinding fragmentPhoneMethodVerificationBindingN2 = n();
        ImageView imageView = fragmentPhoneMethodVerificationBindingN2.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new oa(this, 2)));
        TextView textView = fragmentPhoneMethodVerificationBindingN2.btnCallAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new e4(this, 1)));
        TextView textView2 = fragmentPhoneMethodVerificationBindingN2.btnChangeVerification;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new f4(this, 1)));
    }

    public final VerificationCallPresenter providePresenter() {
        String string = requireArguments().getString("PHONE_KEY");
        if (string != null) {
            return new VerificationCallPresenter(string, (uf3) n2.c(uf3.class, e.e(this), j(), null), (mx7) m2.c(mx7.class, e.e(this), null, null), (gx7) m2.c(gx7.class, e.e(this), null, null), (qe) m2.c(qe.class, e.e(this), null, null));
        }
        ah.f("Phone can not be null");
        return null;
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void setPhoneTyped(String str) {
        str.getClass();
        n().tvPhoneCall.setText(str);
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void setTimer(long j2) {
        n().tvTimerPhone.setText(getString(R.string.verification_phone_timer_format, c84.h(j2)));
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.i;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.i = loadingDialogB;
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showOtpError(boolean z) {
        TextView textView = n().tvOtpError;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.d(z);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showSendAgainButton(boolean z) {
        TextView textView = n().btnCallAgain;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showTimer(boolean z) {
        TextView textView = n().tvTimerPhone;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showTrySmsButton(boolean z) {
        TextView textView = n().btnChangeVerification;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void showUnknownError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.auth_error_default, view);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView
    public final void vibrateError() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
    }
}
