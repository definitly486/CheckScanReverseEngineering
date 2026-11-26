package com.warefly.checkscan.core.ui.base.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.databinding.DialogTextPopupBinding;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.r53;
import defpackage.sx3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TextDialog extends BaseDialogNew<DialogTextPopupBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final String c;
    public final String d;
    public final bn2 e;

    static {
        bs6 bs6Var = new bs6(TextDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogTextPopupBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextDialog(Context context, String str, String str2) {
        super(context);
        str.getClass();
        str2.getClass();
        this.c = str;
        this.d = str2;
        this.e = new bn2(DialogTextPopupBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = f[0];
        bn2 bn2Var = this.e;
        bn2Var.getClass();
        ze4Var.getClass();
        DialogTextPopupBinding dialogTextPopupBinding = (DialogTextPopupBinding) ((ViewBinding) bn2Var.d);
        TextView textView = dialogTextPopupBinding.tvTextTitle;
        int i = sx3.a;
        textView.setText(sx3.a(this.c));
        dialogTextPopupBinding.tvTextContent.setText(sx3.a(this.d));
        dialogTextPopupBinding.ivCloseBtn.setOnClickListener(new r53(this, 1));
    }
}
