package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJConnectListener;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import defpackage.xr1;
import defpackage.zr1;
import java.util.Hashtable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p2 {
    public final ReentrantLock a;
    public final Condition b;
    public final ExecutorService c;
    public volatile int d;
    public TJConnectListener e;
    public o2 f;
    public long g;
    public l2 h;
    public l2 i;
    public String j;
    public boolean k;

    public p2() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = reentrantLock;
        this.b = reentrantLock.newCondition();
        this.c = Executors.newSingleThreadExecutor();
        this.d = 1;
        this.g = 1000L;
    }

    public final boolean a(Context context, String str, Hashtable hashtable, TJConnectListener tJConnectListener) {
        boolean zA;
        this.a.lock();
        this.k = false;
        try {
            if (this.e == null) {
                this.e = tJConnectListener;
            }
            l2 l2Var = new l2((g2) this, context, str, hashtable);
            int iA = c0.a(this.d);
            if (iA == 0) {
                this.h = l2Var;
                s.b.addObserver(new j2((g2) this));
                Context context2 = l2Var.a;
                k2 k2Var = new k2((g2) this);
                h2 h2Var = ((g2) this).l;
                int i = h2Var.e;
                if (i > 5) {
                    zA = false;
                } else {
                    h2Var.e = i + 1;
                    zA = super/*com.tapjoy.internal.f2*/.a(context2, str, hashtable, k2Var);
                }
                if (!zA) {
                    this.a.unlock();
                    return false;
                }
                a(2);
                this.a.unlock();
                return true;
            }
            if (iA == 1 || iA == 2) {
                this.i = l2Var;
                this.a.unlock();
                return true;
            }
            if (iA == 3) {
                this.i = l2Var;
                this.a.lock();
                try {
                    this.g = 1000L;
                    this.b.signal();
                    this.a.unlock();
                    return true;
                } finally {
                    this.a.unlock();
                }
            }
            if (iA == 4) {
                c();
                this.a.unlock();
                return true;
            }
            if (iA != 5) {
                a(1);
                this.a.unlock();
                return false;
            }
            String str2 = this.j;
            if (str2 == null || str2.isEmpty()) {
                c();
            } else {
                b(-1, this.j);
            }
            this.a.unlock();
            return true;
        } catch (Throwable th) {
            this.a.unlock();
            throw th;
        }
    }

    public final /* synthetic */ void b() {
        TJConnectListener tJConnectListener = this.e;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectSuccess();
            this.e = null;
        }
    }

    public final void c(final int i, final String str) {
        if (this.d == 3 && this.k) {
            return;
        }
        this.k = true;
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: y4a
            @Override // java.lang.Runnable
            public final void run() {
                this.a(i, str);
            }
        });
    }

    public final void b(int i, String str) {
        TapjoyUtil.runOnMainThread(new zr1(i, this, str));
    }

    public final void c() {
        TapjoyUtil.runOnMainThread(new xr1(this, 2));
    }

    public final void a(int i) {
        this.a.lock();
        try {
            this.d = i;
        } finally {
            this.a.unlock();
        }
    }

    public final l2 a() {
        this.a.lock();
        try {
            l2 l2Var = this.i;
            if (l2Var != null) {
                this.h = l2Var;
                this.i = null;
            }
            return this.h;
        } finally {
            this.a.unlock();
        }
    }

    public final /* synthetic */ void a(int i, String str) {
        TJConnectListener tJConnectListener = this.e;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectFailure(i, str);
        }
    }

    public final /* synthetic */ void a(String str, int i) {
        if (this.e != null && str != null && !str.isEmpty()) {
            this.e.onConnectSuccess();
            this.e.onConnectWarning(i, str);
        } else {
            TJConnectListener tJConnectListener = this.e;
            if (tJConnectListener != null) {
                tJConnectListener.onConnectSuccess();
            }
        }
    }

    public final void a(long j) {
        this.a.lock();
        try {
            a(4);
            if (this.b.await(j, TimeUnit.MILLISECONDS)) {
                this.g = 1000L;
            }
        } catch (InterruptedException e) {
            TapjoyLog.d(e.getMessage());
        } finally {
            a(3);
            this.a.unlock();
        }
    }
}
