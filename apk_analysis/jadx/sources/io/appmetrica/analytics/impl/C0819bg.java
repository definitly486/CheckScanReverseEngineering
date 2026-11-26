package io.appmetrica.analytics.impl;

import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0819bg implements Co {
    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        if (!StringUtils.isNullOrEmpty(z8.b)) {
            try {
                byte[] bArrDecode = Base64.decode(z8.b, 0);
                C1155og c1155og = (bArrDecode == null || bArrDecode.length == 0) ? null : new C1155og(bArrDecode);
                C1025jg c1025jg = new C1025jg();
                String str = c1155og.a;
                c1025jg.a = str == null ? new byte[0] : str.getBytes();
                c1025jg.c = c1155og.b;
                c1025jg.b = c1155og.c;
                int iA = W7.a(c1155og.d);
                int i = 1;
                if (iA != 1) {
                    i = 2;
                    if (iA != 2) {
                        i = 3;
                        if (iA != 3) {
                            i = 0;
                        }
                    }
                }
                c1025jg.d = i;
                return MessageNano.toByteArray(c1025jg);
            } catch (Throwable unused) {
            }
        }
        return new byte[0];
    }
}
