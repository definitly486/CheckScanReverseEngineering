package defpackage;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class rh5 {
    public static final AtomicBoolean a = new AtomicBoolean();
    public static volatile nh5 b = new nh5(0);
    public static kt9 c = null;

    public static void a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            y14.t("MyTarget cannot be initialized due to a null application context");
            return;
        }
        int i = 0;
        if (a.compareAndSet(false, true)) {
            y14.t("MyTarget initialization");
            kt9 kt9Var = new kt9(applicationContext);
            c = kt9Var;
            w4a.b.execute(new qh5(i, kt9Var, applicationContext));
        }
    }
}
