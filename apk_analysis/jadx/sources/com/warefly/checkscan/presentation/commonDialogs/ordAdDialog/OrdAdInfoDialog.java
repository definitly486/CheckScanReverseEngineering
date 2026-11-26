package com.warefly.checkscan.presentation.commonDialogs.ordAdDialog;

import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogOrdAdInfoBinding;
import defpackage.b06;
import defpackage.bs6;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OrdAdInfoDialog extends BaseBottomSheetDialog<DialogOrdAdInfoBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final b06 d;
    public final ud9 e;

    static {
        bs6 bs6Var = new bs6(OrdAdInfoDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogOrdAdInfoBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdAdInfoDialog(Context context, b06 b06Var) {
        super(context, R.style.BottomSheetDialogTheme);
        b06Var.getClass();
        this.d = b06Var;
        this.e = new ud9(DialogOrdAdInfoBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogOrdAdInfoBinding dialogOrdAdInfoBinding = (DialogOrdAdInfoBinding) ud9Var.d;
        TextView textView = dialogOrdAdInfoBinding.tvTitle;
        b06 b06Var = this.d;
        textView.setText(b06Var.d);
        dialogOrdAdInfoBinding.tvDescription.setText(b06Var.e);
    }
}
