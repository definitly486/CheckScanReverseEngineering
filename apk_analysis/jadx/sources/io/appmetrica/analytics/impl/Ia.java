package io.appmetrica.analytics.impl;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Ia implements InterfaceC1310ug {
    public final Context a;
    public final ICommonExecutor b;
    public final String c = "google";

    public Ia(Context context, ICommonExecutor iCommonExecutor) {
        this.a = context;
        this.b = iCommonExecutor;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        if (!ReflectionUtils.detectClassExists("com.android.installreferrer.api.InstallReferrerClient")) {
            interfaceC1207qg.a(new C1360wg("Google Play Install Referrer library is not detected", null, 2, null));
            return;
        }
        Ha ha = new Ha(this.b);
        try {
            InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(this.a).build();
            installReferrerClientBuild.startConnection(new Ga(ha, installReferrerClientBuild, interfaceC1207qg));
        } catch (Throwable th) {
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj("Failed to get referrer from Google Play referrer library", th));
            interfaceC1207qg.a(new C1360wg("Failed to get referrer from Google Play referrer library", th));
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.c;
    }
}
