package com.warefly.checkscan.presentation.phoneChange.view;

import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentPhoneBinding;
import com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangePresenter;
import com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView;
import com.warefly.checkscan.presentation.phoneChange.view.PhoneChangeFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.ca0;
import defpackage.e;
import defpackage.gh4;
import defpackage.i3;
import defpackage.i76;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k76;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.s47;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class PhoneChangeFragment extends BaseFragment<FragmentPhoneBinding> implements PhoneChangeView {
    public static final /* synthetic */ ze4<Object>[] j;
    public LoadingDialog h;
    public PhoneChangePresenter phoneChangePresenter;
    public final int f = R.layout.fragment_phone;
    public final ol4 g = new ol4(FragmentPhoneBinding.class);
    public final i76 i = new View.OnFocusChangeListener() { // from class: i76
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            ze4<Object>[] ze4VarArr = PhoneChangeFragment.j;
            if (z || view.getId() != R.id.et_number_phone) {
                return;
            }
            PhoneChangeFragment phoneChangeFragment = this.b;
            Editable text = phoneChangeFragment.n().etNumberPhone.getText();
            String string = text != null ? text.toString() : null;
            if (string != null) {
                PhoneChangePresenter phoneChangePresenter = phoneChangeFragment.phoneChangePresenter;
                if (phoneChangePresenter != null) {
                    phoneChangePresenter.checkPhoneInput(string);
                } else {
                    aa4.j("phoneChangePresenter");
                    throw null;
                }
            }
        }
    };

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PhoneChangePresenter phoneChangePresenter = PhoneChangeFragment.this.phoneChangePresenter;
            if (phoneChangePresenter != null) {
                phoneChangePresenter.onBackClicked();
                return j59.a;
            }
            aa4.j("phoneChangePresenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ FragmentPhoneBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FragmentPhoneBinding fragmentPhoneBinding) {
            super(1);
            this.g = fragmentPhoneBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PhoneChangePresenter phoneChangePresenter = PhoneChangeFragment.this.phoneChangePresenter;
            if (phoneChangePresenter != null) {
                phoneChangePresenter.changePhone(this.g.etNumberPhone.getText().toString());
                return j59.a;
            }
            aa4.j("phoneChangePresenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(PhoneChangeFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentPhoneBinding n() {
        return (FragmentPhoneBinding) this.g.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void onFinish() {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        EditText editText = n().etNumberPhone;
        editText.setOnFocusChangeListener(this.i);
        editText.addTextChangedListener(new k76(this));
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: j76
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                ze4<Object>[] ze4VarArr = PhoneChangeFragment.j;
                if (i == 6 && textView != null) {
                    textView.clearFocus();
                }
                View view2 = this.b.getView();
                if (view2 == null) {
                    return false;
                }
                le9.b(view2);
                return false;
            }
        });
        FragmentPhoneBinding fragmentPhoneBindingN = n();
        ImageView imageView = fragmentPhoneBindingN.btnBackPhone;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        TextView textView = fragmentPhoneBindingN.btnGiveCode;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b(fragmentPhoneBindingN)));
    }

    public final PhoneChangePresenter providePresenter() {
        return new PhoneChangePresenter((jf6) m2.c(jf6.class, e.e(this), null, null), (i3) m2.c(i3.class, e.e(this), null, null), (ca0) m2.c(ca0.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null), (s47) m2.c(s47.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showAccountPhone(String str) {
        str.getClass();
        n().etNumberPhone.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showFailService(String str) {
        str.getClass();
        View view = getView();
        if (view != null) {
            oz1.h(view, str);
        }
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showIncorrectPhoneMessage(boolean z) {
        FragmentPhoneBinding fragmentPhoneBindingN = n();
        fragmentPhoneBindingN.btnGiveCode.setEnabled(!z);
        fragmentPhoneBindingN.etNumberPhone.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, z ? R.drawable.ic_warning : 0, 0);
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.h = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showStartPhoneChange(boolean z) {
        LoadingDialog loadingDialog = this.h;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog.a aVar = LoadingDialog.d;
            String string = getString(R.string.phone_save_new_number);
            string.getClass();
            aVar.getClass();
            LoadingDialog loadingDialogA = LoadingDialog.a.a(string);
            m(loadingDialogA);
            this.h = loadingDialogA;
        }
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showTimesNotExpired() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.lifecycle_sent_sms, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showUnEnableChangePhone() {
        View view = getView();
        if (view != null) {
            oz1.d(R.string.error_un_enable_change_phone, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public final void showWaitCode(boolean z) {
        n().pbWaitCodeElectrocheque.setVisibility(z ? 0 : 8);
    }
}
