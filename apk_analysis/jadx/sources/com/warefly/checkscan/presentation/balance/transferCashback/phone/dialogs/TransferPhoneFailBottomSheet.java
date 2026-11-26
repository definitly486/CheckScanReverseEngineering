package com.warefly.checkscan.presentation.balance.transferCashback.phone.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogPhoneTransferResultBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.xz8;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPhoneFailBottomSheet extends BaseBottomSheetDialog<DialogPhoneTransferResultBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final xz8.a d;
    public final ud9 e;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            j59 j59Var;
            view.getClass();
            TransferPhoneFailBottomSheet transferPhoneFailBottomSheet = TransferPhoneFailBottomSheet.this;
            String str = transferPhoneFailBottomSheet.d.d.b;
            if (str != null) {
                transferPhoneFailBottomSheet.openUrl(str);
                transferPhoneFailBottomSheet.dismiss();
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                transferPhoneFailBottomSheet.dismiss();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            j59 j59Var;
            view.getClass();
            TransferPhoneFailBottomSheet transferPhoneFailBottomSheet = TransferPhoneFailBottomSheet.this;
            String str = transferPhoneFailBottomSheet.d.e.b;
            if (str != null) {
                transferPhoneFailBottomSheet.openUrl(str);
                transferPhoneFailBottomSheet.dismiss();
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                transferPhoneFailBottomSheet.dismiss();
            }
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferPhoneFailBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogPhoneTransferResultBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferPhoneFailBottomSheet(Context context, xz8.a aVar) {
        super(context, R.style.BottomSheetDialogTheme);
        aVar.getClass();
        this.d = aVar;
        this.e = new ud9(DialogPhoneTransferResultBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogPhoneTransferResultBinding dialogPhoneTransferResultBinding = (DialogPhoneTransferResultBinding) ud9Var.d;
        TextView textView = dialogPhoneTransferResultBinding.tvTitle;
        xz8.a aVar = this.d;
        textView.setText(aVar.b);
        dialogPhoneTransferResultBinding.tvDescription.setText(aVar.c);
        com.bumptech.glide.a.d(getContext()).h(aVar.a).L(dialogPhoneTransferResultBinding.ivLogo);
        TextView textView2 = dialogPhoneTransferResultBinding.btnAction;
        textView2.setText(aVar.d.a);
        textView2.setOnClickListener(new lb7(new a()));
        xz8.a.C0360a c0360a = aVar.e;
        if (c0360a != null) {
            TextView textView3 = dialogPhoneTransferResultBinding.btnSecondAction;
            textView3.getClass();
            textView3.setVisibility(0);
            textView3.setText(c0360a.a);
            textView3.setOnClickListener(new lb7(new b()));
        }
    }
}
