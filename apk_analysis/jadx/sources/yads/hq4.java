package yads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.view.WindowManager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public abstract class hq4 {
    public static final op6 a = new op6();

    public static void a(Context context) {
        op6 op6Var = a;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            defpackage.fg.c("Application Context cannot be null");
            return;
        }
        if (op6Var.a) {
            return;
        }
        op6Var.a = true;
        oq6 oq6VarA = oq6.a();
        gp6 gp6Var = oq6VarA.b;
        oq6VarA.c = new aq6(new Handler(), applicationContext, new wo6(), oq6VarA);
        hp6.d.a(applicationContext);
        zo6.a(applicationContext);
        WindowManager windowManager = rp6.a;
        rp6.c = applicationContext.getResources().getDisplayMetrics().density;
        rp6.a = (WindowManager) applicationContext.getSystemService("window");
        applicationContext.registerReceiver(new bq6(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        kq6.b.a = applicationContext.getApplicationContext();
        xo6 xo6Var = xo6.e;
        if (!xo6Var.b) {
            xo6Var.c.a(applicationContext);
            xp6 xp6Var = xo6Var.c;
            xp6Var.c = xo6Var;
            xp6Var.b();
            xo6Var.d = xo6Var.c.b;
            xo6Var.b = true;
        }
        qq6.d.a = new WeakReference(applicationContext);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        applicationContext.registerReceiver(new pq6(), intentFilter);
    }
}
