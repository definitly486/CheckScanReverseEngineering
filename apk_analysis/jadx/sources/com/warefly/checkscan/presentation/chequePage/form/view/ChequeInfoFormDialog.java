package com.warefly.checkscan.presentation.chequePage.form.view;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.os.BundleKt;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogChequePersonalInfoBinding;
import com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormPresenter;
import com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.cn2;
import defpackage.fg;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.i3;
import defpackage.j59;
import defpackage.l15;
import defpackage.lb7;
import defpackage.le9;
import defpackage.m2;
import defpackage.nl3;
import defpackage.og4;
import defpackage.x07;
import defpackage.xd1;
import defpackage.ze4;
import ru.tinkoff.decoro.MaskImpl;
import ru.tinkoff.decoro.slots.Slot;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequeInfoFormDialog extends FullScreenDialog<DialogChequePersonalInfoBinding> implements ChequeInfoFormView {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;
    public ChequeInfoFormPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
        public final /* synthetic */ DialogChequePersonalInfoBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DialogChequePersonalInfoBinding dialogChequePersonalInfoBinding) {
            super(4);
            this.g = dialogChequePersonalInfoBinding;
        }

        @Override // defpackage.fm3
        public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            String string;
            CharSequence charSequence2 = charSequence;
            num.intValue();
            num2.intValue();
            num3.intValue();
            charSequence2.getClass();
            ChequeInfoFormPresenter chequeInfoFormPresenter = ChequeInfoFormDialog.this.presenter;
            if (chequeInfoFormPresenter == null) {
                aa4.j("presenter");
                throw null;
            }
            String string2 = charSequence2.toString();
            Editable text = this.g.etTransferDestination.getText();
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            chequeInfoFormPresenter.onDataChanged(string2, string);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
        public final /* synthetic */ DialogChequePersonalInfoBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DialogChequePersonalInfoBinding dialogChequePersonalInfoBinding) {
            super(4);
            this.g = dialogChequePersonalInfoBinding;
        }

        @Override // defpackage.fm3
        public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            String string;
            CharSequence charSequence2 = charSequence;
            num.intValue();
            num2.intValue();
            num3.intValue();
            charSequence2.getClass();
            ChequeInfoFormPresenter chequeInfoFormPresenter = ChequeInfoFormDialog.this.presenter;
            if (chequeInfoFormPresenter == null) {
                aa4.j("presenter");
                throw null;
            }
            Editable text = this.g.etName.getText();
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            chequeInfoFormPresenter.onDataChanged(string, charSequence2.toString());
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
            ChequeInfoFormDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ DialogChequePersonalInfoBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DialogChequePersonalInfoBinding dialogChequePersonalInfoBinding) {
            super(1);
            this.g = dialogChequePersonalInfoBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            String string;
            String string2;
            view.getClass();
            ChequeInfoFormPresenter chequeInfoFormPresenter = ChequeInfoFormDialog.this.presenter;
            if (chequeInfoFormPresenter == null) {
                aa4.j("presenter");
                throw null;
            }
            DialogChequePersonalInfoBinding dialogChequePersonalInfoBinding = this.g;
            Editable text = dialogChequePersonalInfoBinding.etName.getText();
            String str = "";
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            Editable text2 = dialogChequePersonalInfoBinding.etTransferDestination.getText();
            if (text2 != null && (string2 = text2.toString()) != null) {
                str = string2;
            }
            chequeInfoFormPresenter.onPostInfoClicked(string, str);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ChequeInfoFormDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public ChequeInfoFormDialog() {
        super(R.layout.dialog_cheque_personal_info);
        this.c = new gl4(DialogChequePersonalInfoBinding.class);
    }

    public final DialogChequePersonalInfoBinding e() {
        return (DialogChequePersonalInfoBinding) this.c.getValue(this, e[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String str;
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogChequePersonalInfoBinding dialogChequePersonalInfoBindingE = e();
        ImageView imageView = dialogChequePersonalInfoBindingE.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new d()));
        LoadingButton loadingButton = dialogChequePersonalInfoBindingE.btnPost;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new e(dialogChequePersonalInfoBindingE)));
        TextInputEditText textInputEditText = dialogChequePersonalInfoBindingE.etName;
        textInputEditText.getClass();
        le9.a(textInputEditText, new b(dialogChequePersonalInfoBindingE));
        TextInputEditText textInputEditText2 = dialogChequePersonalInfoBindingE.etTransferDestination;
        Bundle arguments = getArguments();
        if (arguments == null || (str = arguments.getString("PHONE_KEY")) == null) {
            str = new String();
        }
        textInputEditText2.setText(str);
        String string = textInputEditText2.getContext().getString(R.string.phone_slots);
        if (string == null || string.length() == 0) {
            fg.c("String representation of the mask's slots is empty");
            return;
        }
        Slot[] slotArr = new Slot[string.length()];
        for (int i = 0; i < string.length(); i++) {
            char cCharAt = string.charAt(i);
            slotArr[i] = cCharAt == '_' ? ru.tinkoff.decoro.slots.a.a() : ru.tinkoff.decoro.slots.a.b(cCharAt);
        }
        MaskImpl maskImplA = MaskImpl.a(slotArr);
        l15 l15Var = new l15();
        l15Var.b = new cn2();
        l15Var.f = false;
        l15Var.g = false;
        l15Var.h = maskImplA;
        l15Var.a();
        l15Var.e = textInputEditText2;
        textInputEditText2.removeTextChangedListener(l15Var);
        textInputEditText2.addTextChangedListener(l15Var);
        l15Var.d = null;
        l15Var.a();
        le9.a(textInputEditText2, new c(dialogChequePersonalInfoBindingE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ChequeInfoFormPresenter providePresenter() {
        Bundle arguments = getArguments();
        boolean z = this instanceof og4;
        return new ChequeInfoFormPresenter(arguments != null ? arguments.getInt("ID_KEY") : -1, (xd1) (z ? m2.c(xd1.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(xd1.class), null, null)), (i3) (z ? m2.c(i3.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(i3.class), null, null)));
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void setPostingFormEnabled(boolean z) {
        e().btnPost.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void showInvalidFullNameError(boolean z) {
        e().tilName.setError(z ? getString(R.string.cheque_info_personal_info_name_error) : null);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void showInvalidPhoneError(boolean z) {
        e().tilTransferDestination.setError(z ? getString(R.string.cheque_info_personal_info_phone_error) : null);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void showPostingForm(boolean z) {
        e().btnPost.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void showPostingFormError() {
        e().btnPost.setText(getString(R.string.try_again_btn));
    }

    @Override // com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormView
    public final void showPostingFormSuccess() {
        dismiss();
        Context context = getContext();
        if (context != null) {
            new FormPostedSuccessDialog(context).show();
        }
        getParentFragmentManager().setFragmentResult("CHEQUE_INFO_SUCCESS", BundleKt.bundleOf());
    }
}
