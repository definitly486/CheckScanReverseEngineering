package io.appmetrica.analytics.logger.common.impl;

import defpackage.cl4;
import defpackage.k;
import defpackage.nm4;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes5.dex */
public final class i {
    public final cl4 a = nm4.b(h.a);

    public static int a(Matcher matcher, int i, int i2) {
        if (i2 < i) {
            return -1;
        }
        int iB = k.b(i2, i, 2, i);
        matcher.region(iB, i2);
        if (matcher.find()) {
            int iStart = matcher.start();
            int iA = a(matcher, iStart + 1, i2);
            return iA == -1 ? iStart : iA;
        }
        matcher.region(i, iB);
        if (!matcher.find()) {
            return -1;
        }
        int iStart2 = matcher.start();
        int iA2 = a(matcher, iStart2 + 1, iB);
        return iA2 == -1 ? iStart2 : iA2;
    }
}
