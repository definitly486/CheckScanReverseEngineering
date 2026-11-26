package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class fw1 {
    public static AlertDialog a(Context context, String str, final ll3 ll3Var) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setPositiveButton(R.string.dialog_confirm_text, new DialogInterface.OnClickListener() { // from class: ew1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ll3Var.invoke();
            }
        });
        builder.setNegativeButton(R.string.dialog_cancel_text, new y27());
        builder.setMessage(str);
        builder.setCancelable(false);
        builder.setOnDismissListener(new z27());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.getClass();
        alertDialogCreate.show();
        return alertDialogCreate;
    }
}
