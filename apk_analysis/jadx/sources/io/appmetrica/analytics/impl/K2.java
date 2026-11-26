package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class K2 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1037k2 fromModel(M2 m2) {
        C1037k2 c1037k2 = new C1037k2();
        L2 l2 = m2.a;
        if (l2 != null) {
            int iOrdinal = l2.ordinal();
            if (iOrdinal == 0) {
                c1037k2.a = 6;
            } else if (iOrdinal == 1) {
                c1037k2.a = 1;
            } else if (iOrdinal == 2) {
                c1037k2.a = 2;
            } else if (iOrdinal == 3) {
                c1037k2.a = 3;
            } else if (iOrdinal == 4) {
                c1037k2.a = 4;
            } else if (iOrdinal != 5) {
                c1037k2.a = 0;
            } else {
                c1037k2.a = 5;
            }
        }
        Boolean bool = m2.b;
        if (bool != null) {
            if (bool.booleanValue()) {
                c1037k2.b = 1;
                return c1037k2;
            }
            c1037k2.b = 0;
        }
        return c1037k2;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final M2 toModel(C1037k2 c1037k2) {
        L2 l2;
        Boolean bool = null;
        switch (c1037k2.a) {
            case 1:
                l2 = L2.ACTIVE;
                break;
            case 2:
                l2 = L2.WORKING_SET;
                break;
            case 3:
                l2 = L2.FREQUENT;
                break;
            case 4:
                l2 = L2.RARE;
                break;
            case 5:
                l2 = L2.RESTRICTED;
                break;
            case 6:
                l2 = L2.EXEMPTED;
                break;
            default:
                l2 = null;
                break;
        }
        int i = c1037k2.b;
        if (i == 0) {
            bool = Boolean.FALSE;
        } else if (i == 1) {
            bool = Boolean.TRUE;
        }
        return new M2(l2, bool);
    }
}
