package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class cy8 {
    public Activity a;
    public a b;
    public AlertDialog c;
    public Activity d;

    public static final class a {
        public final e69 a;
        public final f69 b;

        public a(e69 e69Var, f69 f69Var) {
            this.a = e69Var;
            this.b = f69Var;
        }
    }

    public final void a(Activity activity) {
        final a aVar = this.b;
        if (aVar == null) {
            return;
        }
        this.c = new AlertDialog.Builder(new ContextThemeWrapper(activity, R.style.AppTheme)).setTitle(R.string.unity_offerwall_no_connection_title).setNegativeButton(R.string.unity_offerwall_no_connection_close, new DialogInterface.OnClickListener() { // from class: zx8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                cy8 cy8Var = this.b;
                cy8Var.b = null;
                cy8Var.c = null;
                cy8Var.d = null;
                aVar.b.invoke();
            }
        }).setPositiveButton(R.string.unity_offerwall_no_connection_retry, new DialogInterface.OnClickListener() { // from class: ay8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                cy8 cy8Var = this.b;
                cy8Var.b = null;
                cy8Var.c = null;
                cy8Var.d = null;
                aVar.a.invoke();
            }
        }).setCancelable(false).show();
        this.d = activity;
    }
}
