package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.ra8;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public final class Y7 {
    public final X a;
    public final C1167p2 b;

    public Y7() {
        this(Fa.k().c(), Fa.k().d());
    }

    public final String a() {
        byte[] bArrDigest;
        AdTrackingInfoResult yandex = this.a.getIdentifiers().getYandex();
        if (!yandex.isValid()) {
            String id = this.b.getAppSetId().getId();
            if (id != null && id.length() != 0) {
                try {
                    UUID.fromString(id);
                    if (!id.equals("00000000-0000-0000-0000-000000000000")) {
                        return ra8.y(id, "-", "");
                    }
                } catch (Throwable unused) {
                }
            }
            return ra8.y(UUID.randomUUID().toString(), "-", "").toLowerCase(Locale.US);
        }
        AdTrackingInfo adTrackingInfo = yandex.mAdTrackingInfo;
        adTrackingInfo.getClass();
        String str = adTrackingInfo.advId;
        str.getClass();
        try {
            bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes(ha1.b));
        } catch (NoSuchAlgorithmException unused2) {
            bArrDigest = new byte[0];
        }
        return StringUtils.toHexString(bArrDigest);
    }

    public Y7(X x, C1167p2 c1167p2) {
        this.a = x;
        this.b = c1167p2;
    }
}
