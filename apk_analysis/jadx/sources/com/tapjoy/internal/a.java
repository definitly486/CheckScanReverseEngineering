package com.tapjoy.internal;

import android.app.Application;
import com.tapjoy.TapjoyLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Runnable {
    public final /* synthetic */ CountDownLatch a;
    public final /* synthetic */ c b;

    public a(c cVar, CountDownLatch countDownLatch) {
        this.b = cVar;
        this.a = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.b.a = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
        } catch (Exception e) {
            TapjoyLog.w(e.getMessage());
        } finally {
            this.a.countDown();
        }
    }
}
