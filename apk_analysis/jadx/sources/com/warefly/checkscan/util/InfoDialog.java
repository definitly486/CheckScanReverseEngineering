package com.warefly.checkscan.util;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.DialogTextBinding;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.sx3;
import defpackage.x07;
import defpackage.x61;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class InfoDialog extends BaseDialogNew<DialogTextBinding> {
    public static final /* synthetic */ ze4<Object>[] e;
    public final String c;
    public final bn2 d;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            InfoDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(InfoDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogTextBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
    }

    public InfoDialog(Context context, String str) {
        super(context);
        this.c = str;
        this.d = new bn2(DialogTextBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_text);
        ze4<Object>[] ze4VarArr = e;
        ze4<Object> ze4Var = ze4VarArr[0];
        bn2 bn2Var = this.d;
        bn2Var.getClass();
        ze4Var.getClass();
        TextView textView = ((DialogTextBinding) ((ViewBinding) bn2Var.d)).btnOk;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        ze4<Object> ze4Var2 = ze4VarArr[0];
        bn2Var.getClass();
        ze4Var2.getClass();
        TextView textView2 = ((DialogTextBinding) ((ViewBinding) bn2Var.d)).tvText;
        int i = sx3.a;
        textView2.setText(sx3.a(this.c));
        textView2.setMovementMethod(x61.a);
    }
}
