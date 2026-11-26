package com.warefly.checkscan.presentation.cashbackOperations.view;

import android.R;
import android.os.Bundle;
import android.view.Window;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.DialogCodeCardBinding;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class CodeCardDialog extends BaseDialogNew<DialogCodeCardBinding> {
    public static final /* synthetic */ ze4<Object>[] c;

    static {
        bs6 bs6Var = new bs6(CodeCardDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogCodeCardBinding;", 0);
        x07.a.getClass();
        c = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        ze4<Object> ze4Var = c[0];
        throw null;
    }
}
