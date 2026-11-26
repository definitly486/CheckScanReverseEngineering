package com.warefly.checkscan.presentation.balance.transferCashback;

import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.DialogDoneBinding;
import com.warefly.checkscan.ui.AutoCancellableDialog;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferSuccessDialog extends AutoCancellableDialog<DialogDoneBinding> {
    public static final /* synthetic */ ze4<Object>[] h;
    public final String e;
    public final String f;
    public final bn2 g;

    static {
        bs6 bs6Var = new bs6(TransferSuccessDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogDoneBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    public TransferSuccessDialog(Context context, String str, String str2) {
        super(context, 3000L);
        this.e = str;
        this.f = str2;
        this.g = new bn2(DialogDoneBinding.class, this);
    }

    @Override // com.warefly.checkscan.ui.AutoCancellableDialog, com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = h[0];
        bn2 bn2Var = this.g;
        bn2Var.getClass();
        ze4Var.getClass();
        DialogDoneBinding dialogDoneBinding = (DialogDoneBinding) ((ViewBinding) bn2Var.d);
        dialogDoneBinding.ivIcon.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_done_white));
        TextView textView = dialogDoneBinding.tvTitle;
        textView.setVisibility(0);
        textView.setText(this.e);
        TextView textView2 = dialogDoneBinding.tvSubtitle;
        textView2.setVisibility(0);
        textView2.setText(this.f);
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
        }
    }
}
