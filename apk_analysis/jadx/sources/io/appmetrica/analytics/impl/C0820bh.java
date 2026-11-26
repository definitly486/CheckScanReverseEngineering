package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0820bh extends Ug {
    public final Y8 b;

    public C0820bh(C0989i5 c0989i5) {
        this(c0989i5, c0989i5.j());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        EnumC1252sa enumC1252sa;
        if (!StringUtils.isNullOrEmpty(c0783a6.getName())) {
            Y8 y8 = this.b;
            String name = c0783a6.getName();
            if (y8.c == null) {
                y8.a();
            }
            int iHashCode = name.hashCode();
            if (y8.c.b.contains(Integer.valueOf(iHashCode))) {
                enumC1252sa = EnumC1252sa.NON_FIRST_OCCURENCE;
            } else {
                C0786a9 c0786a9 = y8.c;
                EnumC1252sa enumC1252sa2 = c0786a9.a ? EnumC1252sa.FIRST_OCCURRENCE : EnumC1252sa.UNKNOWN;
                if (c0786a9.d < 1000) {
                    c0786a9.b.add(Integer.valueOf(iHashCode));
                    c0786a9.d++;
                } else {
                    c0786a9.a = false;
                }
                C0864d9 c0864d9 = y8.b;
                C0786a9 c0786a10 = y8.c;
                IBinaryDataHelper iBinaryDataHelper = c0864d9.c;
                C0838c9 c0838c9 = c0864d9.b;
                c0864d9.a.getClass();
                iBinaryDataHelper.insert("event_hashes", c0838c9.toByteArray(C0812b9.a(c0786a10)));
                enumC1252sa = enumC1252sa2;
            }
            c0783a6.k = enumC1252sa;
        }
        return false;
    }

    public C0820bh(C0989i5 c0989i5, Y8 y8) {
        super(c0989i5);
        this.b = y8;
    }
}
