package io.appmetrica.analytics.impl;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import defpackage.k57;
import defpackage.ta8;
import io.appmetrica.analytics.impl.Ga;

/* JADX INFO: loaded from: classes5.dex */
public final class Ga implements InstallReferrerStateListener {
    public final InstallReferrerClient a;
    public final InterfaceC1207qg b;
    public final /* synthetic */ Ha c;

    public Ga(Ha ha, InstallReferrerClient installReferrerClient, InterfaceC1207qg interfaceC1207qg) {
        this.c = ha;
        this.a = installReferrerClient;
        this.b = interfaceC1207qg;
    }

    public static final void a(Ga ga, int i) {
        Object aVar;
        String installReferrer;
        try {
            if (i != 0) {
                ga.getClass();
                a(i);
                aVar = new C1360wg("The connection returned an error code " + i, null, 2, null);
            } else {
                ReferrerDetails installReferrer2 = ga.a.getInstallReferrer();
                C1155og c1155og = (installReferrer2 == null || (installReferrer = installReferrer2.getInstallReferrer()) == null || ta8.M(installReferrer)) ? null : new C1155og(installReferrer2.getInstallReferrer(), installReferrer2.getReferrerClickTimestampSeconds(), installReferrer2.getInstallBeginTimestampSeconds(), 2);
                aVar = c1155og == null ? new C1360wg("Referrer is null", null, 2, null) : new C1385xg(c1155og);
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj("Failed to get referrer via Google Play referrer library", thA));
            aVar = new C1360wg("Failed to get referrer via Google Play referrer library", thA);
        }
        InterfaceC1410yg interfaceC1410yg = (InterfaceC1410yg) aVar;
        try {
            ga.a.endConnection();
        } catch (Throwable unused) {
        }
        ga.b.a(interfaceC1410yg);
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerServiceDisconnected() {
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerSetupFinished(final int i) {
        this.c.a.execute(new Runnable() { // from class: hn3
            @Override // java.lang.Runnable
            public final void run() {
                Ga.a(this.b, i);
            }
        });
    }

    public static void a(int i) {
        if (i == 3) {
            C0900ek c0900ek = Bj.a;
            IllegalStateException illegalStateException = new IllegalStateException("Developer error");
            c0900ek.getClass();
            c0900ek.a(new Cj("Failed to get referrer via Google Play referrer library", illegalStateException));
            return;
        }
        if (i != 4) {
            return;
        }
        C0900ek c0900ek2 = Bj.a;
        IllegalStateException illegalStateException2 = new IllegalStateException("Permission error");
        c0900ek2.getClass();
        c0900ek2.a(new Cj("Failed to get referrer via Google Play referrer library", illegalStateException2));
    }
}
