package com.warefly.checkscan.presentation.balance.transferCashback.phone.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogPhoneTransferSuccessResultBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPhoneSuccessBottomSheet extends BaseBottomSheetDialog<DialogPhoneTransferSuccessResultBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final String d;
    public final String e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferPhoneSuccessBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferPhoneSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferPhoneSuccessBottomSheet(Context context, String str, String str2) {
        super(context, R.style.BottomSheetDialogTheme);
        str2.getClass();
        this.d = str;
        this.e = str2;
        this.f = new ud9(DialogPhoneTransferSuccessResultBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogPhoneTransferSuccessResultBinding dialogPhoneTransferSuccessResultBinding = (DialogPhoneTransferSuccessResultBinding) ud9Var.d;
        dialogPhoneTransferSuccessResultBinding.tvTitle.setText(this.d);
        dialogPhoneTransferSuccessResultBinding.tvDescription.setText(this.e);
        TextView textView = dialogPhoneTransferSuccessResultBinding.btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }
}
