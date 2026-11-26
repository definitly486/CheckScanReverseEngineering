package defpackage;

import android.content.Context;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zb6 {
    public static void a(Context context, String str, String str2) {
        context.getClass();
        aq5 aq5Var = new aq5();
        ta6 ta6Var = new ta6(str, str2, new sa6());
        ta6Var.N = aq5Var;
        ta6Var.i = 15;
        ta6Var.f = 5;
        ta6Var.k = 15;
        ta6Var.g = AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH;
        ta6Var.c = false;
        ta6Var.b = false;
        j59 j59Var = j59.a;
        synchronized (ra6.a) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            ra6.a.a(context, ta6Var);
            oa6.I.d(ta6Var);
        }
    }
}
