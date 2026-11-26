package com.warefly.checkscan.auth.presentation.smsVerification.view;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentOtpVerificationBinding;
import com.warefly.checkscan.auth.presentation.smsVerification.presenter.VerificationSmsPresenter;
import com.warefly.checkscan.auth.services.sms.SmsReceiverImpl;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bs6;
import defpackage.c84;
import defpackage.e;
import defpackage.g06;
import defpackage.gx7;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mx7;
import defpackage.n2;
import defpackage.o42;
import defpackage.oc3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.qe;
import defpackage.r7;
import defpackage.rj1;
import defpackage.u96;
import defpackage.ud0;
import defpackage.uf3;
import defpackage.w76;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationSmsFragment extends BaseFragment<FragmentOtpVerificationBinding> implements VerificationSmsView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_otp_verification;
    public final ol4 g = new ol4(FragmentOtpVerificationBinding.class);
    public SmsReceiverImpl h;
    public g06 i;
    public LoadingDialog j;
    public VerificationSmsPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(VerificationSmsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void clearOtp() {
        g06 g06Var = this.i;
        if (g06Var != null) {
            g06Var.a();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.j;
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

    public final FragmentOtpVerificationBinding n() {
        return (FragmentOtpVerificationBinding) this.g.getValue(this, l[0]);
    }

    public final VerificationSmsPresenter o() {
        VerificationSmsPresenter verificationSmsPresenter = this.presenter;
        if (verificationSmsPresenter != null) {
            return verificationSmsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new oc3();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        SmsRetriever.getClient((Activity) fragmentActivityRequireActivity).startSmsRetriever();
        SmsReceiverImpl smsReceiverImpl = new SmsReceiverImpl();
        this.h = smsReceiverImpl;
        smsReceiverImpl.b = new ud0(this);
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.i = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.unregisterReceiver(this.h);
        }
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ContextCompat.registerReceiver(requireContext(), this.h, oc3.a, 2);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentOtpVerificationBinding fragmentOtpVerificationBindingN = n();
        List listI = u96.i(fragmentOtpVerificationBindingN.etCodeOneCall, fragmentOtpVerificationBindingN.etCodeTwoCall, fragmentOtpVerificationBindingN.etCodeThreeCall, fragmentOtpVerificationBindingN.etCodeFourCall);
        g06 g06Var = this.i;
        if (g06Var != null) {
            g06Var.a();
        }
        g06 g06Var2 = new g06(o(), listI);
        this.i = g06Var2;
        g06Var2.b();
        g06 g06Var3 = this.i;
        if (g06Var3 != null) {
            g06Var3.c();
        }
        n().etCodeOneCall.requestFocus();
        FragmentOtpVerificationBinding fragmentOtpVerificationBindingN2 = n();
        ImageView imageView = fragmentOtpVerificationBindingN2.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new rj1(this, 2)));
        TextView textView = fragmentOtpVerificationBindingN2.btnSendCodeAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new w76(this, 1)));
        TextView textView2 = fragmentOtpVerificationBindingN2.btnTryCallVerification;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new o42(this, 3)));
    }

    public final VerificationSmsPresenter providePresenter() {
        String string = requireArguments().getString("PHONE_KEY");
        if (string == null) {
            ah.f("Phone can not be null");
            return null;
        }
        return new VerificationSmsPresenter(string, (uf3) n2.c(uf3.class, e.e(this), j(), null), (mx7) m2.c(mx7.class, e.e(this), null, null), (gx7) m2.c(gx7.class, e.e(this), null, null), (qe) m2.c(qe.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void setCodeFromSms(String str) {
        str.getClass();
        g06 g06Var = this.i;
        if (g06Var != null) {
            int length = str.length();
            List<EditText> list = g06Var.b;
            if (length == list.size()) {
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        u96.o();
                        throw null;
                    }
                    EditText editText = (EditText) obj;
                    if (editText != null) {
                        editText.setText(String.valueOf(str.charAt(i)));
                    }
                    if (i == list.size() - 1 && editText != null) {
                        editText.setSelection(editText.length());
                    }
                    i = i2;
                }
            }
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void setPhoneTyped(String str) {
        str.getClass();
        n().tvPhoneTyped.setText(getString(R.string.verification_phone_typed, str));
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void setTimer(long j) {
        n().tvTimer.setText(getString(R.string.verification_timer_format, c84.h(j)));
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.j;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.j = loadingDialogB;
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showOtpError(boolean z) {
        TextView textView = n().tvOtpError;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
        g06 g06Var = this.i;
        if (g06Var != null) {
            g06Var.d(z);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showSendAgainButton(boolean z) {
        TextView textView = n().btnSendCodeAgain;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showTimer(boolean z) {
        TextView textView = n().tvTimer;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showTryPhoneButton(boolean z) {
        TextView textView = n().btnTryCallVerification;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void showUnknownError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.auth_error_default, view);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView
    public final void vibrateError() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
    }
}
