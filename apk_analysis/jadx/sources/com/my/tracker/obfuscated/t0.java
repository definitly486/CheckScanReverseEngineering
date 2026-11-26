package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import defpackage.by2;
import defpackage.dy2;
import defpackage.zt;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 {
    static int f = 3;
    static volatile t0 g;
    final i0 a;
    final n b;
    final Context c;
    InstallReferrerClient d;
    int e;

    public final class a implements InstallReferrerStateListener {
        public a() {
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
            b3.a("ReferrerHandler: install referrer service is disconnected. Connection attempts: " + t0.this.e);
            t0.this.a(this);
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i) {
            b3.a("ReferrerHandler: install referrer setup is finished");
            t0 t0Var = t0.this;
            if (i == -1) {
                t0Var.a(this);
            } else {
                t0Var.a(i);
            }
        }
    }

    public t0(i0 i0Var, n nVar, Context context) {
        this.a = i0Var;
        this.b = nVar;
        this.c = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        try {
            b3.a("ReferrerHandler: initialize InstallReferrerClient");
            this.d = InstallReferrerClient.newBuilder(this.c).build();
            a(new a());
        } catch (Throwable th) {
            b3.b("ReferrerHandler: error occurred while initialization InstallReferrerClient", th);
        }
    }

    public void a(int i) {
        if (this.d == null) {
            b3.b("ReferrerHandler: install referrer client is null");
            return;
        }
        try {
            if (i == 0) {
                b3.a("ReferrerHandler: retrieving install referrer");
                m.a(new zt(2, this, this.d.getInstallReferrer()));
            } else {
                b3.a("ReferrerHandler: InstallReferrerResponse code: " + i);
            }
        } catch (Throwable th) {
            b3.b("ReferrerHandler: error occurred while retrieving install referrer", th);
        }
        try {
            this.d.endConnection();
        } catch (Throwable unused) {
        }
        this.d = null;
    }

    public void b() {
        t1 t1VarA = t1.a(this.c);
        if (t1VarA.r()) {
            return;
        }
        String strM = t1VarA.m();
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        a(strM, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(t0 t0Var) {
        t0Var.b();
        t0Var.a();
    }

    public static void a(String str, Context context, Runnable runnable) {
        t0 t0Var = g;
        if (t0Var == null) {
            t1 t1VarA = t1.a(context);
            if (!t1VarA.r()) {
                t1VarA.l(str);
            }
            runnable.run();
            return;
        }
        t0Var.a(str, runnable);
    }

    public void a() {
        if (t1.a(this.c).o()) {
            return;
        }
        m.f(new dy2(this, 1));
    }

    public static void a(i0 i0Var, n nVar, Context context) {
        if (g != null) {
            return;
        }
        synchronized (t0.class) {
            try {
                if (g != null) {
                    return;
                }
                t0 t0Var = new t0(i0Var, nVar, context);
                m.a(new by2(t0Var, 2));
                g = t0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(InstallReferrerStateListener installReferrerStateListener) {
        InstallReferrerClient installReferrerClient = this.d;
        if (installReferrerClient == null) {
            b3.a("ReferrerHandler: InstallReferrerClient is null");
            return;
        }
        int i = this.e;
        if (i >= f) {
            try {
                installReferrerClient.endConnection();
            } catch (Throwable unused) {
            }
            this.d = null;
            return;
        }
        this.e = i + 1;
        try {
            b3.a("ReferrerHandler: connect to referrer client");
            this.d.startConnection(installReferrerStateListener);
        } catch (Throwable th) {
            b3.b("ReferrerHandler: error occurred while connection InstallReferrerClient", th);
            a(installReferrerStateListener);
        }
    }

    public void a(String str, Runnable runnable) {
        t1 t1VarA = t1.a(this.c);
        if (t1VarA.r()) {
            b3.a("ReferrerHandler: referrer has been tracked");
            return;
        }
        this.a.a(str, w.b(this.c), runnable);
        this.b.a(str);
        t1VarA.v();
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(ReferrerDetails referrerDetails) {
        t1 t1VarA = t1.a(this.c);
        if (t1VarA.o()) {
            b3.a("ReferrerHandler: api referrer has been tracked");
            return;
        }
        String installReferrer = referrerDetails.getInstallReferrer();
        b3.a("ReferrerHandler: retrieving install referrer is completed. Referrer: " + installReferrer);
        this.a.a(installReferrer, w.b(this.c), referrerDetails.getInstallBeginTimestampSeconds(), referrerDetails.getReferrerClickTimestampSeconds());
        this.b.a(installReferrer);
        t1VarA.s();
    }
}
