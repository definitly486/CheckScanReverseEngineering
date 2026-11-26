package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends gh4 implements ll3 {
    public final /* synthetic */ SafePackageManager a;
    public final /* synthetic */ Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(SafePackageManager safePackageManager, Context context) {
        super(0);
        this.a = safePackageManager;
        this.b = context;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        SafePackageManager safePackageManager = this.a;
        Context context = this.b;
        ApplicationInfo applicationInfo = safePackageManager.getApplicationInfo(context, context.getPackageName(), 128);
        if (applicationInfo != null) {
            return applicationInfo.metaData;
        }
        return null;
    }
}
