package io.appmetrica.analytics.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0822bj {
    public final Context a;

    public C0822bj(Context context) {
        this.a = context;
    }

    public final void a(InterfaceC1207qg interfaceC1207qg) {
        ComponentName componentName;
        try {
            Intent intent = new Intent("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
            intent.setPackage("ru.vk.store");
            List<ResolveInfo> listQueryIntentServices = this.a.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices.isEmpty()) {
                componentName = null;
            } else {
                ServiceInfo serviceInfo = ((ResolveInfo) qn1.T(listQueryIntentServices)).serviceInfo;
                componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
            }
        } catch (Throwable unused) {
        }
        if (componentName == null) {
            interfaceC1207qg.a(new C1360wg("RuStore service component not found", null, 2, null));
            return;
        }
        Intent intent2 = new Intent("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
        intent2.setComponent(componentName);
        try {
            if (this.a.bindService(intent2, new ServiceConnectionC0796aj(this, interfaceC1207qg), 1)) {
                return;
            }
            interfaceC1207qg.a(new C1360wg("bindService returned false for RuStore service: " + componentName, null, 2, null));
        } catch (Throwable th) {
            interfaceC1207qg.a(new C1360wg("Failed to bind RuStore service", th));
        }
    }

    public static final void a(C0822bj c0822bj, ServiceConnection serviceConnection) {
        c0822bj.getClass();
        try {
            c0822bj.a.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
    }
}
