package com.warefly.checkscan.support.presentation.form.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.support.databinding.BottomSheetSupportSuccessFormBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p37;
import defpackage.ud9;
import defpackage.we8;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportFormSuccessBottomSheet extends BaseBottomSheetDialog<BottomSheetSupportSuccessFormBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final we8 d;
    public final ud9 e;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SupportFormSuccessBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SupportFormSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportSuccessFormBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportFormSuccessBottomSheet(Context context, we8 we8Var) {
        super(context, R.style.BottomSheetDialogTheme);
        we8Var.getClass();
        this.d = we8Var;
        this.e = new ud9(BottomSheetSupportSuccessFormBinding.class, this);
    }

    public final BottomSheetSupportSuccessFormBinding e() {
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        return (BottomSheetSupportSuccessFormBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        p37 p37VarD = com.bumptech.glide.a.d(getContext());
        we8 we8Var = this.d;
        p37VarD.h(we8Var.a).L(e().ivLogo);
        e().tvTitle.setText(we8Var.b);
        e().tvDescription.setText(we8Var.c);
        e().btnAction.setText(we8Var.d);
        TextView textView = e().btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }
}
