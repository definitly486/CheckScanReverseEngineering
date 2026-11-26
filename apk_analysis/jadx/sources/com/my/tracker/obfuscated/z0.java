package com.my.tracker.obfuscated;

import android.content.Context;
import com.huawei.hms.ads.installreferrer.api.InstallReferrerClient;
import com.huawei.hms.ads.installreferrer.api.InstallReferrerStateListener;
import com.huawei.hms.ads.installreferrer.api.ReferrerDetails;

/* JADX INFO: loaded from: classes4.dex */
public final class z0 {
    static int f = 3;
    static volatile z0 g;
    final i0 a;
    final n b;
    final Context c;
    InstallReferrerClient d;
    int e;

    public final class a implements InstallReferrerStateListener {
        public a() {
        }

        public void onInstallReferrerServiceDisconnected() {
            b3.a("HuaweiReferrerHandler: install referrer service is disconnected. Connection attempts: " + z0.this.e);
            z0.this.a(this);
        }

        public void onInstallReferrerSetupFinished(int i) {
            if (i == -1) {
                z0.this.a(this);
            } else {
                b3.a("HuaweiReferrerHandler: install referrer setup is finished");
                z0.this.a(i);
            }
        }
    }

    public z0(i0 i0Var, n nVar, Context context) {
        this.a = i0Var;
        this.b = nVar;
        this.c = context.getApplicationContext();
    }

    public void a(ReferrerDetails referrerDetails) {
        t1 t1VarA = t1.a(this.c);
        if (t1VarA.p()) {
            b3.a("HuaweiReferrerHandler: api referrer has been tracked");
            return;
        }
        String installReferrer = referrerDetails.getInstallReferrer();
        b3.a("HuaweiReferrerHandler: retrieving install referrer is completed. Referrer: " + installReferrer);
        this.a.b(installReferrer, w.b(this.c), referrerDetails.getInstallBeginTimestampSeconds(), referrerDetails.getReferrerClickTimestampSeconds());
        this.b.a(installReferrer);
        t1VarA.t();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002f -> B:17:0x0034). Please report as a decompilation issue!!! */
    public void a(int i) {
        if (this.d == null) {
            b3.b("HuaweiReferrerHandler: install referrer client is null");
            return;
        }
        try {
            if (i == 0) {
                b3.a("HuaweiReferrerHandler: retrieving install referrer");
                a(this.d.getInstallReferrer());
            } else {
                b3.a("HuaweiReferrerHandler: InstallReferrerResponse code: " + i);
            }
        } catch (Throwable th) {
            b3.b("HuaweiReferrerHandler: error occurred while retrieving install referrer", th);
        }
        try {
            this.d.endConnection();
        } catch (Throwable unused) {
        }
        this.d = null;
    }

    public void a() {
        if (t1.a(this.c).p()) {
            return;
        }
        try {
            b3.a("HuaweiReferrerHandler: initialize InstallReferrerClient");
            this.d = InstallReferrerClient.newBuilder(this.c).build();
            a(new a());
        } catch (Throwable th) {
            b3.b("HuaweiReferrerHandler: error occurred while initialization InstallReferrerClient", th);
        }
    }

    public void a(InstallReferrerStateListener installReferrerStateListener) {
        if (this.d == null) {
            b3.a("HuaweiReferrerHandler: InstallReferrerClient is null");
            return;
        }
        int i = this.e;
        if (i >= f) {
            b3.a("HuaweiReferrerHandler: max count of reconnection attempts is reached");
            try {
                this.d.endConnection();
            } catch (Throwable unused) {
            }
            this.d = null;
            return;
        }
        this.e = i + 1;
        try {
            b3.a("HuaweiReferrerHandler: connect to referrer client");
            this.d.startConnection(installReferrerStateListener);
        } catch (Throwable th) {
            b3.b("HuaweiReferrerHandler: error occurred while connection InstallReferrerClient", th);
            a(installReferrerStateListener);
        }
    }

    public static void a(i0 i0Var, n nVar, Context context) {
        if (g != null) {
            return;
        }
        synchronized (z0.class) {
            try {
                if (g != null) {
                    return;
                }
                final z0 z0Var = new z0(i0Var, nVar, context);
                m.a(new Runnable() { // from class: dia
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.a();
                    }
                });
                g = z0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
