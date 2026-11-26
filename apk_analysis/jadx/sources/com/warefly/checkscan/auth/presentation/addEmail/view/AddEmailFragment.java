package com.warefly.checkscan.auth.presentation.addEmail.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FragmentAddEmailBinding;
import com.warefly.checkscan.auth.presentation.addEmail.dialogs.AddEmailSuccessBottomSheet;
import com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.iw2;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.u8;
import defpackage.uf3;
import defpackage.v8;
import defpackage.w8;
import defpackage.x07;
import defpackage.x8;
import defpackage.z8;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class AddEmailFragment extends BaseFragment<FragmentAddEmailBinding> implements AddEmailView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_add_email;
    public final ol4 g = new ol4(FragmentAddEmailBinding.class);
    public AddEmailSuccessBottomSheet h;
    public AddEmailPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(AddEmailFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentAddEmailBinding;", 0);
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
        AddEmailPresenter addEmailPresenter = this.presenter;
        if (addEmailPresenter != null) {
            addEmailPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    public final FragmentAddEmailBinding n() {
        return (FragmentAddEmailBinding) this.g.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentAddEmailBinding fragmentAddEmailBindingN = n();
        int i2 = 0;
        fragmentAddEmailBindingN.etEmail.addTextChangedListener(new x8(this, 0));
        fragmentAddEmailBindingN.etEmail.postDelayed(new u8(fragmentAddEmailBindingN, 0), 50L);
        FragmentAddEmailBinding fragmentAddEmailBindingN2 = n();
        ImageView imageView = fragmentAddEmailBindingN2.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new v8(this, i2)));
        LoadingButton loadingButton = fragmentAddEmailBindingN2.btnConfirm;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new w8(this, i2)));
    }

    public final AddEmailPresenter providePresenter() {
        return new AddEmailPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (iw2) m2.c(iw2.class, e.e(this), null, null), (z8) m2.c(z8.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showButtonLoading(boolean z) {
        n().btnConfirm.setLoading(z);
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showEmailFormatError(boolean z) {
        TextInputLayout textInputLayout = n().tilEmail;
        textInputLayout.setErrorEnabled(z);
        textInputLayout.setError(z ? getString(R.string.add_email_error) : null);
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showEmailPlacedError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.add_email_conflict, view);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showEmailSuccess() {
        AddEmailSuccessBottomSheet addEmailSuccessBottomSheet = this.h;
        if (addEmailSuccessBottomSheet != null) {
            addEmailSuccessBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            AddEmailSuccessBottomSheet addEmailSuccessBottomSheet2 = new AddEmailSuccessBottomSheet(context);
            this.h = addEmailSuccessBottomSheet2;
            addEmailSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showEmailTimeoutError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.add_email_timeout_error, view);
        }
    }

    @Override // com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView
    public final void showEmailUnknownError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.auth_error_default, view);
        }
    }
}
