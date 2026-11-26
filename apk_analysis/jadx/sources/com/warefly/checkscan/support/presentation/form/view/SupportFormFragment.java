package com.warefly.checkscan.support.presentation.form.view;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.support.databinding.FragmentSupportFormBinding;
import com.warefly.checkscan.support.presentation.form.dialog.SupportFormFailBottomSheet;
import com.warefly.checkscan.support.presentation.form.dialog.SupportFormSuccessBottomSheet;
import com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.iw2;
import defpackage.j59;
import defpackage.j83;
import defpackage.jf6;
import defpackage.kl3;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mk3;
import defpackage.ni3;
import defpackage.oe8;
import defpackage.ol4;
import defpackage.pm;
import defpackage.q96;
import defpackage.qe8;
import defpackage.qf8;
import defpackage.r7;
import defpackage.re8;
import defpackage.s47;
import defpackage.se8;
import defpackage.v8;
import defpackage.w8;
import defpackage.we8;
import defpackage.x07;
import defpackage.x8;
import defpackage.xo7;
import defpackage.xq0;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportFormFragment extends BaseFragment<FragmentSupportFormBinding> implements SupportFormView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_support_form;
    public final ol4 g = new ol4(FragmentSupportFormBinding.class);
    public SupportFormSuccessBottomSheet h;
    public SupportFormFailBottomSheet i;
    public SupportFormPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements bm3<Boolean, Insets, j59> {
        public b() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(Boolean bool, Insets insets) {
            bool.getClass();
            Insets insets2 = insets;
            insets2.getClass();
            SupportFormFragment supportFormFragment = SupportFormFragment.this;
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(supportFormFragment.n().getRoot());
            Insets insets3 = rootWindowInsets != null ? rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()) : null;
            ConstraintLayout root = supportFormFragment.n().getRoot();
            root.getClass();
            root.setPadding(root.getPaddingLeft(), root.getPaddingTop(), root.getPaddingRight(), Math.max(insets2.bottom, insets3 != null ? insets3.bottom : 0));
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SupportFormFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void flashCheckboxError() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
        CheckBox checkBox = n().cbEmailAgreement;
        checkBox.getClass();
        pm.a(checkBox, AppCompatResources.getDrawable(requireContext(), R.drawable.background_red_10_radius_8));
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

    public final FragmentSupportFormBinding n() {
        return (FragmentSupportFormBinding) this.g.getValue(this, k[0]);
    }

    public final SupportFormPresenter o() {
        SupportFormPresenter supportFormPresenter = this.presenter;
        if (supportFormPresenter != null) {
            return supportFormPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        b bVar = new b();
        getViewLifecycleOwner().getLifecycle().addObserver(new mk3(requireActivity().getWindow(), this, bVar));
        ImageView imageView = n().ivBtnBack;
        imageView.getClass();
        int i = 1;
        imageView.setOnClickListener(new lb7(new xq0(this, i)));
        LoadingButton loadingButton = n().btnConfirm;
        loadingButton.getClass();
        int i2 = 3;
        loadingButton.setOnClickListener(new lb7(new v8(this, i2)));
        n().cbEmailAgreement.setOnClickListener(new qe8(this, 0));
        TextView textView = n().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new w8(this, i2)));
        n().etName.addTextChangedListener(new se8(this, 0));
        n().etEmail.addTextChangedListener(new re8(this));
        n().etDescription.addTextChangedListener(new x8(this, i));
    }

    public final SupportFormPresenter providePresenter() {
        return new SupportFormPresenter((iw2) m2.c(iw2.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (s47) m2.c(s47.class, e.e(this), null, null), (qf8) m2.c(qf8.class, e.e(this), null, null), (j83) m2.c(j83.class, e.e(this), null, null), (xo7) m2.c(xo7.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setButtonLoading(boolean z) {
        n().btnConfirm.setLoading(z);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setCheckbox(boolean z) {
        n().cbEmailAgreement.setChecked(z);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setDescriptionFocus() {
        TextInputEditText textInputEditText = n().etDescription;
        textInputEditText.postDelayed(new oe8(textInputEditText, 0), 50L);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setEmailField(String str) {
        str.getClass();
        n().etEmail.setText(str);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setEmailFocus() {
        TextInputEditText textInputEditText = n().etEmail;
        textInputEditText.postDelayed(new q96(textInputEditText, 2), 50L);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setNameField(String str) {
        str.getClass();
        n().etName.setText(str);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setNameFocus() {
        TextInputEditText textInputEditText = n().etName;
        textInputEditText.postDelayed(new kl3(textInputEditText, 2), 50L);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void setScreenInfo(ni3 ni3Var) {
        ni3Var.getClass();
        FragmentSupportFormBinding fragmentSupportFormBindingN = n();
        TextView textView = fragmentSupportFormBindingN.tvNameHint;
        ni3.a aVar = ni3Var.c;
        textView.setText(aVar.a);
        fragmentSupportFormBindingN.etName.setHint(aVar.b);
        TextView textView2 = fragmentSupportFormBindingN.tvEmailHint;
        ni3.a aVar2 = ni3Var.d;
        textView2.setText(aVar2.a);
        fragmentSupportFormBindingN.etEmail.setHint(aVar2.b);
        fragmentSupportFormBindingN.cbEmailAgreement.setText(ni3Var.f);
        TextView textView3 = fragmentSupportFormBindingN.tvDescriptionHint;
        ni3.a aVar3 = ni3Var.e;
        textView3.setText(aVar3.a);
        fragmentSupportFormBindingN.etDescription.setHint(aVar3.b);
        fragmentSupportFormBindingN.btnConfirm.setText(ni3Var.b);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showDescriptionError(boolean z) {
        TextInputLayout textInputLayout = n().tilDescription;
        textInputLayout.setErrorEnabled(z);
        textInputLayout.setError(z ? getString(R.string.support_form_description_error) : null);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showEmailError(boolean z) {
        TextInputLayout textInputLayout = n().tilEmail;
        textInputLayout.setErrorEnabled(z);
        textInputLayout.setError(z ? getString(R.string.support_form_email_error) : null);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showFailBottomSheet(we8 we8Var) {
        we8Var.getClass();
        SupportFormFailBottomSheet supportFormFailBottomSheet = this.i;
        if (supportFormFailBottomSheet != null) {
            supportFormFailBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            SupportFormFailBottomSheet supportFormFailBottomSheet2 = new SupportFormFailBottomSheet(context, we8Var);
            this.i = supportFormFailBottomSheet2;
            supportFormFailBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.support.presentation.form.view.SupportFormView
    public final void showSuccessBottomSheet(we8 we8Var) {
        we8Var.getClass();
        SupportFormSuccessBottomSheet supportFormSuccessBottomSheet = this.h;
        if (supportFormSuccessBottomSheet != null) {
            supportFormSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            SupportFormSuccessBottomSheet supportFormSuccessBottomSheet2 = new SupportFormSuccessBottomSheet(context, we8Var);
            this.h = supportFormSuccessBottomSheet2;
            supportFormSuccessBottomSheet2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: pe8
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    SupportFormFragment.a aVar = SupportFormFragment.j;
                    this.b.o().onBackClicked();
                }
            });
            supportFormSuccessBottomSheet2.show();
        }
    }
}
