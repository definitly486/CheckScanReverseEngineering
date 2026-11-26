package io.appmetrica.analytics.coreutils.internal.services;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import defpackage.j59;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.impl.c;
import io.appmetrica.analytics.coreutils.impl.d;
import io.appmetrica.analytics.coreutils.impl.e;
import io.appmetrica.analytics.coreutils.impl.f;
import io.appmetrica.analytics.coreutils.impl.g;
import io.appmetrica.analytics.coreutils.impl.h;
import io.appmetrica.analytics.coreutils.impl.i;
import io.appmetrica.analytics.coreutils.impl.j;
import io.appmetrica.analytics.coreutils.impl.k;
import io.appmetrica.analytics.coreutils.impl.l;

/* JADX INFO: loaded from: classes5.dex */
public final class SafePackageManager {
    private static Object a(Boolean bool, ll3 ll3Var) {
        try {
            Object objInvoke = ll3Var.invoke();
            return objInvoke == null ? bool : objInvoke;
        } catch (Throwable unused) {
        }
    }

    public final ActivityInfo getActivityInfo(Context context, ComponentName componentName, int i) {
        return (ActivityInfo) a(null, new io.appmetrica.analytics.coreutils.impl.b(context, componentName, i));
    }

    public final ApplicationInfo getApplicationInfo(Context context, String str, int i) {
        return (ApplicationInfo) a(null, new c(context, str, i));
    }

    public final Bundle getApplicationMetaData(Context context) {
        return (Bundle) a(null, new d(this, context));
    }

    public final String getInstallerPackageName(Context context, String str) {
        return (String) a(null, new e(context, str));
    }

    public final PackageInfo getPackageInfo(Context context, String str, int i) {
        return (PackageInfo) a(null, new f(context, str, i));
    }

    public final ServiceInfo getServiceInfo(Context context, ComponentName componentName, int i) {
        return (ServiceInfo) a(null, new g(context, componentName, i));
    }

    public final boolean hasSystemFeature(Context context, String str) {
        return ((Boolean) a(Boolean.FALSE, new h(context, str))).booleanValue();
    }

    public final ResolveInfo resolveActivity(Context context, Intent intent, int i) {
        return (ResolveInfo) a(null, new i(context, intent, i));
    }

    public final ProviderInfo resolveContentProvider(Context context, String str) {
        return (ProviderInfo) a(null, new j(context, str));
    }

    public final ResolveInfo resolveService(Context context, Intent intent, int i) {
        return (ResolveInfo) a(null, new k(context, intent, i));
    }

    public final j59 setComponentEnabledSetting(Context context, ComponentName componentName, int i, int i2) {
        return (j59) a(null, new l(context, componentName, i, i2));
    }

    public final PackageInfo getPackageInfo(Context context, String str) {
        return getPackageInfo(context, str, 0);
    }
}
