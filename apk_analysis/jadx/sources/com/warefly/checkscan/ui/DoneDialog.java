package com.warefly.checkscan.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.NewDialogDoneBinding;
import com.warefly.checkscan.ui.DoneDialog;
import defpackage.bs6;
import defpackage.gl4;
import defpackage.j59;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DoneDialog extends FullScreenDialog<NewDialogDoneBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(DoneDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/NewDialogDoneBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public DoneDialog() {
        super(R.layout.new_dialog_done);
        this.c = new gl4(NewDialogDoneBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String str;
        String str2;
        int iIntValue;
        view.getClass();
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("BUTTON_BACKGROUND_KEY")) : null;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (str = arguments2.getString("DESCRIPTION_KEY")) == null) {
            str = new String();
        }
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (str2 = arguments3.getString("BUTTON_TEXT_KEY")) == null) {
            str2 = new String();
        }
        Bundle arguments4 = getArguments();
        Integer numValueOf2 = arguments4 != null ? Integer.valueOf(arguments4.getInt("IMAGE_RESOURCE_KEY")) : null;
        Bundle arguments5 = getArguments();
        String string = arguments5 != null ? arguments5.getString("SUB_DESCRIPTION_KEY") : null;
        Bundle arguments6 = getArguments();
        final String string2 = arguments6 != null ? arguments6.getString("BUTTON_ACTION_KEY") : null;
        ze4<?>[] ze4VarArr = e;
        ze4<?> ze4Var = ze4VarArr[0];
        gl4 gl4Var = this.c;
        NewDialogDoneBinding newDialogDoneBinding = (NewDialogDoneBinding) gl4Var.getValue(this, ze4Var);
        TextView textView = newDialogDoneBinding.btnOk;
        textView.setText(str2);
        if (numValueOf != null) {
            try {
                iIntValue = numValueOf.intValue();
            } catch (Throwable unused) {
            }
        } else {
            iIntValue = 0;
        }
        textView.setBackgroundColor(ContextCompat.getColor(textView.getContext(), iIntValue));
        textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.white));
        j59 j59Var = j59.a;
        newDialogDoneBinding.tvDescription.setText(str);
        newDialogDoneBinding.btnOk.setOnClickListener(new View.OnClickListener() { // from class: eq2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DoneDialog.a aVar = DoneDialog.d;
                String str3 = string2;
                DoneDialog doneDialog = this;
                if (str3 != null) {
                    FragmentKt.setFragmentResult(doneDialog, "DONE_DIALOG_REQUEST_KEY", BundleKt.bundleOf(new b36("DONE_DIALOG_REQUEST_KEY", "DONE_DIALOG_REQUEST_KEY")));
                }
                doneDialog.dismiss();
            }
        });
        newDialogDoneBinding.btnCloseDialog.setOnClickListener(new View.OnClickListener() { // from class: fq2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DoneDialog.a aVar = DoneDialog.d;
                this.b.dismiss();
            }
        });
        NewDialogDoneBinding newDialogDoneBinding2 = (NewDialogDoneBinding) gl4Var.getValue(this, ze4VarArr[0]);
        if (numValueOf2 != null) {
            com.bumptech.glide.a.e(newDialogDoneBinding2.ivDialogIcon).f(Integer.valueOf(numValueOf2.intValue())).L(newDialogDoneBinding2.ivDialogIcon);
        }
        if (string != null) {
            TextView textView2 = newDialogDoneBinding2.tvSubDescription;
            textView2.setVisibility(0);
            textView2.setText(string);
        }
    }
}
