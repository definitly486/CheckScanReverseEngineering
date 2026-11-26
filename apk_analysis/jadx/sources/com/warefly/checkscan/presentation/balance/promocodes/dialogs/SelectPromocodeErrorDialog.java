package com.warefly.checkscan.presentation.balance.promocodes.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogSelectPromocodeErrorBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.h37;
import defpackage.is7;
import defpackage.j59;
import defpackage.jm7;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.sx3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.x61;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodeErrorDialog extends BaseBottomSheetDialog<DialogSelectPromocodeErrorBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final jm7.a d;
    public final ud9 e;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeErrorDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SelectPromocodeErrorDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSelectPromocodeErrorBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectPromocodeErrorDialog(Context context, jm7.a aVar) {
        super(context, R.style.BottomSheetDialogTheme);
        aVar.getClass();
        this.d = aVar;
        this.e = new ud9(DialogSelectPromocodeErrorBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogSelectPromocodeErrorBinding dialogSelectPromocodeErrorBinding = (DialogSelectPromocodeErrorBinding) ud9Var.d;
        jm7.a aVar = this.d;
        if (aVar.a != null) {
            ((h37) com.bumptech.glide.a.d(getContext()).h(aVar.a).r(is7.a(ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeErrorBinding.ivError);
        }
        dialogSelectPromocodeErrorBinding.tvTitle.setText(aVar.b);
        TextView textView = dialogSelectPromocodeErrorBinding.tvDescription;
        int i = sx3.a;
        textView.setText(sx3.a(aVar.c));
        textView.setMovementMethod(x61.a);
        TextView textView2 = dialogSelectPromocodeErrorBinding.btnAction;
        textView2.setText(aVar.d);
        textView2.setOnClickListener(new lb7(new a()));
    }
}
