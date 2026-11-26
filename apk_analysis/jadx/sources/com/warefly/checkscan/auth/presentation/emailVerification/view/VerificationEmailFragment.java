package com.warefly.checkscan.auth.presentation.emailVerification.view;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentEmailVerificationBinding;
import com.warefly.checkscan.auth.presentation.addEmail.dialogs.AddEmailSuccessBottomSheet;
import com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aw1;
import defpackage.bs6;
import defpackage.c84;
import defpackage.cx7;
import defpackage.e;
import defpackage.g06;
import defpackage.gx7;
import defpackage.i30;
import defpackage.jw2;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.oc9;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.qh6;
import defpackage.r7;
import defpackage.ta8;
import defpackage.u96;
import defpackage.uf3;
import defpackage.x07;
import defpackage.z8;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationEmailFragment extends BaseFragment<FragmentEmailVerificationBinding> implements VerificationEmailView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_email_verification;
    public final ol4 g = new ol4(FragmentEmailVerificationBinding.class);
    public g06 h;
    public LoadingDialog i;
    public AddEmailSuccessBottomSheet j;
    public VerificationEmailPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(VerificationEmailFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void clearOtp() {
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.a();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
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

    public final FragmentEmailVerificationBinding n() {
        return (FragmentEmailVerificationBinding) this.g.getValue(this, l[0]);
    }

    public final VerificationEmailPresenter o() {
        VerificationEmailPresenter verificationEmailPresenter = this.presenter;
        if (verificationEmailPresenter != null) {
            return verificationEmailPresenter;
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
        FragmentEmailVerificationBinding fragmentEmailVerificationBindingN = n();
        List listI = u96.i(fragmentEmailVerificationBindingN.etCodeOneCall, fragmentEmailVerificationBindingN.etCodeTwoCall, fragmentEmailVerificationBindingN.etCodeThreeCall, fragmentEmailVerificationBindingN.etCodeFourCall);
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
        FragmentEmailVerificationBinding fragmentEmailVerificationBindingN2 = n();
        ImageView imageView = fragmentEmailVerificationBindingN2.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new qh6(this, 1)));
        TextView textView = fragmentEmailVerificationBindingN2.btnSendCodeAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new oc9(this)));
        TextView textView2 = fragmentEmailVerificationBindingN2.btnVerify;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new i30(this, 2)));
    }

    public final VerificationEmailPresenter providePresenter() {
        Object serializable;
        String string = requireArguments().getString("EMAIL_KEY");
        if (string == null) {
            ah.f("Phone can not be null");
            return null;
        }
        uf3 uf3Var = (uf3) n2.c(uf3.class, e.e(this), j(), null);
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = bundleRequireArguments.getSerializable("EMAIL_VERIFICATION_REASON_KEY", jw2.class);
        } else {
            Object serializable2 = bundleRequireArguments.getSerializable("EMAIL_VERIFICATION_REASON_KEY");
            if (!(serializable2 instanceof jw2)) {
                serializable2 = null;
            }
            serializable = (jw2) serializable2;
        }
        jw2 jw2Var = (jw2) serializable;
        if (jw2Var != null) {
            return new VerificationEmailPresenter(string, uf3Var, jw2Var, (gx7) m2.c(gx7.class, e.e(this), null, null), (cx7) m2.c(cx7.class, e.e(this), null, null), (aw1) m2.c(aw1.class, e.e(this), null, null), (z8) m2.c(z8.class, e.e(this), null, null));
        }
        ah.f("Email reason can not be null");
        return null;
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void setEmailTyped(String str) {
        str.getClass();
        String string = getString(R.string.verification_email_subtitle, str);
        string.getClass();
        int iK = ta8.K(string, str, 0, false, 6);
        int length = str.length() + iK;
        TextView textView = n().tvSubtitle;
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new StyleSpan(1), iK, length, 33);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), R.color.gray_100)), iK, length, 33);
        textView.setText(spannableString);
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void setTimer(long j) {
        n().tvTimer.setText(getString(R.string.verification_timer_format, c84.h(j)));
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showEmailAddedBottomSheet() {
        AddEmailSuccessBottomSheet addEmailSuccessBottomSheet = this.j;
        if (addEmailSuccessBottomSheet != null) {
            addEmailSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            AddEmailSuccessBottomSheet addEmailSuccessBottomSheet2 = new AddEmailSuccessBottomSheet(context);
            this.j = addEmailSuccessBottomSheet2;
            addEmailSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showEmailCodeSendError() {
        n().tvOtpError.setText(getString(R.string.add_email_timeout_error));
        TextView textView = n().tvOtpError;
        textView.getClass();
        textView.setVisibility(0);
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.d(true);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showEmailPlacedError() {
        n().tvOtpError.setText(getString(R.string.add_email_conflict));
        TextView textView = n().tvOtpError;
        textView.getClass();
        textView.setVisibility(0);
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.d(true);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.i;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.i = loadingDialogB;
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showOtpError(boolean z) {
        TextView textView = n().tvOtpError;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
        g06 g06Var = this.h;
        if (g06Var != null) {
            g06Var.d(z);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showSendAgainButton(boolean z) {
        TextView textView = n().btnSendCodeAgain;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showTimer(boolean z) {
        TextView textView = n().tvTimer;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void showUnknownError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.auth_error_default, view);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView
    public final void vibrateError() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
    }
}
