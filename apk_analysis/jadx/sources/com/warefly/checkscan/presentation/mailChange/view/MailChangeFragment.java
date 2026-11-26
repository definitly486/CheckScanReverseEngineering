package com.warefly.checkscan.presentation.mailChange.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.androidadvance.topsnackbar.TSnackbar;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.core.ui.base.dialogs.TextDialog;
import com.warefly.checkscan.databinding.FragmentChangeEmailBinding;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangePresenter;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView;
import com.warefly.checkscan.presentation.mailChange.view.MailChangeFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c4;
import defpackage.e;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oy4;
import defpackage.oz1;
import defpackage.py4;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class MailChangeFragment extends BaseFragment<FragmentChangeEmailBinding> implements MailChangeView {
    public static final /* synthetic */ ze4<Object>[] k;
    public LoadingDialog h;
    public MailChangePresenter mailChangePresenter;
    public final int f = R.layout.fragment_change_email;
    public final ol4 g = new ol4(FragmentChangeEmailBinding.class);
    public final oy4 i = new View.OnFocusChangeListener() { // from class: oy4
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            String string;
            ze4<Object>[] ze4VarArr = MailChangeFragment.k;
            if (z || view.getId() != R.id.et_mail_change) {
                return;
            }
            MailChangeFragment mailChangeFragment = this.b;
            Editable text = mailChangeFragment.n().etMailChange.getText();
            if (text == null || (string = text.toString()) == null) {
                return;
            }
            MailChangePresenter mailChangePresenter = mailChangeFragment.mailChangePresenter;
            if (mailChangePresenter != null) {
                mailChangePresenter.checkMailInput(string);
            } else {
                aa4.j("mailChangePresenter");
                throw null;
            }
        }
    };
    public final fh8 j = new fh8(new c());

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            MailChangePresenter mailChangePresenter = MailChangeFragment.this.mailChangePresenter;
            if (mailChangePresenter != null) {
                mailChangePresenter.onBackPressed();
                return j59.a;
            }
            aa4.j("mailChangePresenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ FragmentChangeEmailBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FragmentChangeEmailBinding fragmentChangeEmailBinding) {
            super(1);
            this.g = fragmentChangeEmailBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            String string = MailChangeFragment.this.getString(R.string.email_change_mail_prohibited);
            string.getClass();
            FragmentChangeEmailBinding fragmentChangeEmailBinding = this.g;
            fragmentChangeEmailBinding.emailUpdateErrorText.setText(string);
            TextView textView = fragmentChangeEmailBinding.emailUpdateErrorText;
            textView.getClass();
            textView.setVisibility(0);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<com.warefly.checkscan.presentation.mailChange.view.a> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final com.warefly.checkscan.presentation.mailChange.view.a invoke() {
            return new com.warefly.checkscan.presentation.mailChange.view.a(MailChangeFragment.this);
        }
    }

    static {
        bs6 bs6Var = new bs6(MailChangeFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void finishChangeMail() {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentChangeEmailBinding n() {
        return (FragmentChangeEmailBinding) this.g.getValue(this, k[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        EditText editText = n().etMailChange;
        editText.setOnFocusChangeListener(this.i);
        editText.addTextChangedListener((com.warefly.checkscan.presentation.mailChange.view.a) this.j.getValue());
        FragmentChangeEmailBinding fragmentChangeEmailBindingN = n();
        ImageView imageView = fragmentChangeEmailBindingN.btnBackEmailChange;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        TextView textView = fragmentChangeEmailBindingN.btnChangeEmail;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b(fragmentChangeEmailBindingN)));
    }

    public final MailChangePresenter providePresenter() {
        return new MailChangePresenter((i3) m2.c(i3.class, e.e(this), null, null), (c4) m2.c(c4.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (py4) m2.c(py4.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void setMailAllowed(boolean z) {
        n().btnChangeEmail.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showBackendError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.backend_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showEmailSent(String str) {
        str.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        String string = getString(R.string.email_post_verification_send);
        string.getClass();
        new TextDialog(contextRequireContext, "", string).show();
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showEmailUseAlready() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.email_conflict_mail, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showIncorrectMailMessage(boolean z) {
        n().etMailChange.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, z ? R.drawable.ic_warning : 0, 0);
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showMailUser(String str) {
        str.getClass();
        n().etMailChange.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showNetworkError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.not_available_for, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showNoSuchUser() {
        View view = getView();
        if (view != null) {
            String string = getString(R.string.error_no_such_user);
            string.getClass();
            if (view.isAttachedToWindow()) {
                TSnackbar tSnackbarC = TSnackbar.c(view, string, -1);
                tSnackbarC.b.setBackgroundColor(Color.parseColor("#a6caff"));
                tSnackbarC.f();
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void showToastMessage(String str) {
        str.getClass();
        Toast.makeText(requireContext(), str, 0).show();
    }

    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public final void startChangeMail() {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog.a aVar = LoadingDialog.d;
        String string = getString(R.string.email_saving_mail);
        string.getClass();
        aVar.getClass();
        LoadingDialog loadingDialogA = LoadingDialog.a.a(string);
        m(loadingDialogA);
        this.h = loadingDialogA;
    }
}
