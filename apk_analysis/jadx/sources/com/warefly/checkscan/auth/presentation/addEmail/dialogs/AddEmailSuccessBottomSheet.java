package com.warefly.checkscan.auth.presentation.addEmail.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.BottomSheetAddEmailSuccessBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class AddEmailSuccessBottomSheet extends BaseBottomSheetDialog<BottomSheetAddEmailSuccessBinding> {
    public static final /* synthetic */ ze4<Object>[] e;
    public final ud9 d;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddEmailSuccessBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AddEmailSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
    }

    public AddEmailSuccessBottomSheet(Context context) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = new ud9(BottomSheetAddEmailSuccessBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = e[0];
        ud9 ud9Var = this.d;
        ud9Var.getClass();
        ze4Var.getClass();
        TextView textView = ((BottomSheetAddEmailSuccessBinding) ud9Var.d).btnAction;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }
}
