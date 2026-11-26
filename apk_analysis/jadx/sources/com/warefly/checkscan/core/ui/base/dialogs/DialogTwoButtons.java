package com.warefly.checkscan.core.ui.base.dialogs;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.DialogTwoButtonsBinding;
import defpackage.b36;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class DialogTwoButtons extends BaseDialogFragment<DialogTwoButtonsBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;

    public static final class a {
        public static DialogTwoButtons a(String str, String str2, String str3, String str4, String str5) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            DialogTwoButtons dialogTwoButtons = new DialogTwoButtons();
            dialogTwoButtons.setArguments(BundleKt.bundleOf(new b36("TITLE_ARG", str), new b36("DESCRIPTION_ARG", str2), new b36("TOP_BUTTON_TITLE_ARG", str3), new b36("BOTTOM_BUTTON_TITLE_ARG", str4), new b36("DIALOG_TAG", str5)));
            return dialogTwoButtons;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            a aVar = DialogTwoButtons.d;
            DialogTwoButtons.this.d(false);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            a aVar = DialogTwoButtons.d;
            DialogTwoButtons.this.d(true);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(DialogTwoButtons.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public DialogTwoButtons() {
        super(R.layout.dialog_two_buttons);
        this.c = new gl4(DialogTwoButtonsBinding.class);
    }

    public final void d(boolean z) {
        b36 b36Var = new b36("DIALOG_TWO_BUTTONS_REQUEST_KEY", Boolean.valueOf(z));
        Bundle arguments = getArguments();
        FragmentKt.setFragmentResult(this, "DIALOG_TWO_BUTTONS_REQUEST_KEY", BundleKt.bundleOf(b36Var, new b36("DIALOG_TAG", arguments != null ? arguments.getString("DIALOG_TAG") : null)));
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogTwoButtonsBinding dialogTwoButtonsBinding = (DialogTwoButtonsBinding) this.c.getValue(this, e[0]);
        AppCompatTextView appCompatTextView = dialogTwoButtonsBinding.tvTitle;
        Bundle arguments = getArguments();
        appCompatTextView.setText(arguments != null ? arguments.getString("TITLE_ARG") : null);
        AppCompatTextView appCompatTextView2 = dialogTwoButtonsBinding.tvDescription;
        Bundle arguments2 = getArguments();
        appCompatTextView2.setText(arguments2 != null ? arguments2.getString("DESCRIPTION_ARG") : null);
        AppCompatTextView appCompatTextView3 = dialogTwoButtonsBinding.buttonTop;
        Bundle arguments3 = getArguments();
        appCompatTextView3.setText(arguments3 != null ? arguments3.getString("TOP_BUTTON_TITLE_ARG") : null);
        AppCompatTextView appCompatTextView4 = dialogTwoButtonsBinding.buttonBottom;
        Bundle arguments4 = getArguments();
        appCompatTextView4.setText(arguments4 != null ? arguments4.getString("BOTTOM_BUTTON_TITLE_ARG") : null);
        AppCompatTextView appCompatTextView5 = dialogTwoButtonsBinding.buttonTop;
        appCompatTextView5.getClass();
        appCompatTextView5.setOnClickListener(new lb7(new b()));
        AppCompatTextView appCompatTextView6 = dialogTwoButtonsBinding.buttonBottom;
        appCompatTextView6.getClass();
        appCompatTextView6.setOnClickListener(new lb7(new c()));
    }
}
