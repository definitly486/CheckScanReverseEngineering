package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

/* JADX INFO: loaded from: classes5.dex */
public final class Z9 {
    public final Context a;
    public final C1058kn b;
    public final C1012j3 c;
    public final SafePackageManager d;

    public Z9(Context context) {
        this(context, new C1058kn(context, "io.appmetrica.analytics.build_id"), new C1012j3(context, "io.appmetrica.analytics.is_offline"), new SafePackageManager());
    }

    public Z9(Context context, C1058kn c1058kn, C1012j3 c1012j3, SafePackageManager safePackageManager) {
        this.a = context;
        this.b = c1058kn;
        this.c = c1012j3;
        this.d = safePackageManager;
    }
}
