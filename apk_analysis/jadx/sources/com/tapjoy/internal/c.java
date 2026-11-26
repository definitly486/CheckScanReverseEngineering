package com.tapjoy.internal;

import android.app.Application;
import android.content.Context;
import com.tapjoy.TJSession;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static final c e = new c();
    public Application a;
    public b b;
    public TJSession c;
    public final HashSet d = new HashSet();

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        c cVar = e;
        Context applicationContext = context.getApplicationContext();
        if (cVar.a == null) {
            try {
                if (applicationContext instanceof Application) {
                    TapjoyLog.d("updateApplication: by casting");
                    cVar.a = (Application) applicationContext;
                } else {
                    TapjoyLog.d("updateApplication: by using reflection");
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    TapjoyUtil.runOnMainThread(new a(cVar, countDownLatch));
                    countDownLatch.await();
                }
            } catch (Exception e2) {
                TapjoyLog.w(e2.getMessage());
            }
            if (cVar.a == null) {
                return;
            }
        }
        synchronized (cVar) {
            try {
                if (cVar.b == null) {
                    b bVar = new b(cVar);
                    cVar.b = bVar;
                    cVar.a.registerActivityLifecycleCallbacks(bVar);
                    cVar.c.initSession();
                    TapjoyLog.d("Automatic session tracking is enabled.");
                } else {
                    TapjoyLog.d("Automatic session tracking is already enabled.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a() {
        c cVar = e;
        if (cVar.a == null) {
            return;
        }
        synchronized (cVar) {
            try {
                b bVar = cVar.b;
                if (bVar != null) {
                    cVar.a.unregisterActivityLifecycleCallbacks(bVar);
                    cVar.b = null;
                    TapjoyLog.d("Automatic session tracking is disabled.");
                } else {
                    TapjoyLog.d("Automatic session tracking is already disabled.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
