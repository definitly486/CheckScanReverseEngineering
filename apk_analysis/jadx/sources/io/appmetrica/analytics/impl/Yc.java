package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
import io.appmetrica.analytics.coreutils.internal.permission.AlwaysAllowPermissionStrategy;
import io.appmetrica.analytics.coreutils.internal.permission.SinglePermissionStrategy;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;

/* JADX INFO: loaded from: classes5.dex */
public final class Yc implements Dn {
    public final Context a;
    public final PermissionResolutionStrategy b;
    public final CellularNetworkTypeExtractor c;
    public final CachedDataProvider.CachedData d;

    public Yc(Context context) {
        this.a = context;
        this.b = AndroidUtils.isApiAchieved(29) ? new SinglePermissionStrategy(Fa.k().j(), "android.permission.READ_PHONE_STATE") : new AlwaysAllowPermissionStrategy();
        this.c = new CellularNetworkTypeExtractor(context);
        this.d = new CachedDataProvider.CachedData(20000L, 40000L, "mobile-connection");
    }

    @Override // io.appmetrica.analytics.impl.Dn
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized Xc a() {
        Xc xc;
        try {
            xc = (Xc) this.d.getData();
            if (xc == null || this.d.shouldUpdateData()) {
                xc = new Xc(this.b.hasNecessaryPermissions(this.a) ? this.c.getNetworkType() : "unknown");
                this.d.setData(xc);
            }
        } catch (Throwable th) {
            throw th;
        }
        return xc;
    }
}
