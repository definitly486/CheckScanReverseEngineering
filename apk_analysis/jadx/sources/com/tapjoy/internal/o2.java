package com.tapjoy.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import com.tapjoy.TapjoyLog;
import java.util.Hashtable;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 implements Runnable {
    public boolean a;
    public String b;
    public Context c;
    public final n2 d = new n2(this);
    public final /* synthetic */ p2 e;

    public o2(p2 p2Var) {
        this.e = p2Var;
    }

    public final void a() {
        p2 p2Var = this.e;
        if (p2Var.f == this) {
            p2Var.f = null;
        }
        if (p2Var.d == 3) {
            this.e.a(1);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zA;
        this.e.a(3);
        this.c = this.e.a().a;
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        int i = Build.VERSION.SDK_INT;
        Context context = this.c;
        if (i >= 33) {
            context.registerReceiver(this.d, intentFilter, 4);
        } else {
            context.registerReceiver(this.d, intentFilter);
        }
        while (true) {
            try {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                s.b.addObserver(new m2(this, countDownLatch));
                l2 l2VarA = this.e.a();
                p2 p2Var = this.e;
                Context context2 = l2VarA.a;
                String str = l2VarA.b;
                Hashtable hashtable = l2VarA.c;
                h2 h2Var = ((g2) p2Var).l;
                int i2 = h2Var.e;
                if (i2 > 5) {
                    zA = false;
                } else {
                    h2Var.e = i2 + 1;
                    zA = super/*com.tapjoy.internal.f2*/.a(context2, str, hashtable, null);
                }
                if (!zA) {
                    this.e.c(1, "Failed to connect");
                    this.c.unregisterReceiver(this.d);
                    a();
                    return;
                }
                try {
                    countDownLatch.await();
                } catch (InterruptedException e) {
                    TapjoyLog.d(e.getMessage());
                }
                if (this.a) {
                    this.e.a(5);
                    this.e.c();
                    this.c.unregisterReceiver(this.d);
                    a();
                    return;
                }
                String str2 = this.b;
                if (str2 != null && !str2.isEmpty()) {
                    this.e.a(6);
                    this.e.b(-1, this.b);
                    this.c.unregisterReceiver(this.d);
                    a();
                    return;
                }
                this.e.c(3, "Failed to connect");
                p2 p2Var2 = this.e;
                long j = p2Var2.g * 2;
                p2Var2.g = j;
                p2Var2.g = Math.max(j, 1000L);
                p2 p2Var3 = this.e;
                p2Var3.g = Math.min(p2Var3.g, 3600000L);
                p2 p2Var4 = this.e;
                p2Var4.a(p2Var4.g);
            } catch (Throwable th) {
                this.c.unregisterReceiver(this.d);
                a();
                throw th;
            }
        }
    }
}
