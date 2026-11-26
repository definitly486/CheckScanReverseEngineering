package com.warefly.checkscan.auth.presentation.userCallVerification.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentCallVerificationBinding;
import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bs6;
import defpackage.cx7;
import defpackage.e;
import defpackage.gs5;
import defpackage.gx7;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nk1;
import defpackage.ok1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p42;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class VerificationUserCallFragment extends BaseFragment<FragmentCallVerificationBinding> implements VerificationUserCallView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_call_verification;
    public final ol4 g = new ol4(FragmentCallVerificationBinding.class);
    public LoadingDialog h;
    public VerificationUserCallPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(VerificationUserCallFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.h;
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
        VerificationUserCallPresenter verificationUserCallPresenter = this.presenter;
        if (verificationUserCallPresenter != null) {
            verificationUserCallPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    public final FragmentCallVerificationBinding n() {
        return (FragmentCallVerificationBinding) this.g.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentCallVerificationBinding fragmentCallVerificationBindingN = n();
        ImageView imageView = fragmentCallVerificationBindingN.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new p42(this, 2)));
        LoadingButton loadingButton = fragmentCallVerificationBindingN.btnVerify;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new nk1(this, 3)));
        TextView textView = fragmentCallVerificationBindingN.btnTryEmail;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ok1(this, 1)));
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void openPhoneCallApp(String str) {
        str.getClass();
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:".concat(str)));
        try {
            startActivity(intent);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    public final VerificationUserCallPresenter providePresenter() {
        String string = requireArguments().getString("PHONE_KEY");
        if (string == null) {
            ah.f("Phone can not be null");
            return null;
        }
        String string2 = requireArguments().getString("CALL_PHONE_KEY");
        if (string2 == null) {
            ah.f("Call phone can not be null");
            return null;
        }
        return new VerificationUserCallPresenter(string, string2, requireArguments().getString("EMAIL_KEY"), (uf3) n2.c(uf3.class, e.e(this), j(), null), (gx7) m2.c(gx7.class, e.e(this), null, null), (cx7) m2.c(cx7.class, e.e(this), null, null), (gs5) m2.c(gs5.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void setDescription(String str, String str2) {
        str.getClass();
        str2.getClass();
        String string = getString(R.string.verification_call_description, str2, str);
        string.getClass();
        int iK = ta8.K(string, str2, 0, false, 6);
        int length = str2.length() + iK;
        TextView textView = n().tvDescription;
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new StyleSpan(1), iK, length, 33);
        spannableString.setSpan(new AbsoluteSizeSpan(16, true), iK, length, 33);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), R.color.primary_60)), iK, length, 33);
        textView.setText(spannableString);
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void showEmailMethod(boolean z) {
        TextView textView = n().btnTryEmail;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void showLoadingButton(boolean z) {
        n().btnVerify.setLoading(z);
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.h = loadingDialogB;
    }

    @Override // com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView
    public final void showUnknownError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.auth_error_default, view);
        }
    }
}
