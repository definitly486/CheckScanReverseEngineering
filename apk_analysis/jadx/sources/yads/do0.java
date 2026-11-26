package yads;

import android.app.Dialog;
import android.content.DialogInterface;
import yads.do0;

/* JADX INFO: loaded from: classes6.dex */
public final class do0 implements c60 {
    public Dialog a;

    public final void a(Dialog dialog) {
        this.a = dialog;
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: pt9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                do0.a(this.b, dialogInterface);
            }
        });
    }

    @Override // yads.c60
    public final void e() {
        Dialog dialog = this.a;
        if (dialog != null) {
            eo0.a(dialog);
        }
    }

    public static final void a(do0 do0Var, DialogInterface dialogInterface) {
        Dialog dialog = do0Var.a;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
        }
        do0Var.a = null;
    }
}
