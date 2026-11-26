package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManagerHelperForR;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends gh4 implements ll3 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, String str) {
        super(0);
        this.a = context;
        this.b = str;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        PackageManager packageManager = this.a.getPackageManager();
        boolean zIsApiAchieved = AndroidUtils.isApiAchieved(30);
        String str = this.b;
        return zIsApiAchieved ? SafePackageManagerHelperForR.extractPackageInstaller(packageManager, str) : packageManager.getInstallerPackageName(str);
    }
}
