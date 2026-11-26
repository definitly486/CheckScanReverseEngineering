package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class ry4 {
    public static qy4 a(String str, String str2, Integer num) {
        return new qy4(str, null, null, new iz4(kz4.ERROR, str2, num), null);
    }

    public static qy4 a() {
        iy4 iy4Var = iy4.d;
        return a(StringUtils.UNDEFINED, "No mediation data was received. Possibly, Client Bidding adapters are not connected", 1003);
    }
}
