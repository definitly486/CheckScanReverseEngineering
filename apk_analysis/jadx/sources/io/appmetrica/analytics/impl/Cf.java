package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: loaded from: classes5.dex */
public final class Cf implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer fromModel(EnumC0914f8 enumC0914f8) {
        int iOrdinal = enumC0914f8.ordinal();
        if (iOrdinal == 1) {
            return 1;
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? 0 : 2;
        }
        return 3;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final EnumC0914f8 toModel(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 1) {
            return EnumC0914f8.d;
        }
        if (iIntValue == 2) {
            return EnumC0914f8.f;
        }
        if (iIntValue != 3) {
            return EnumC0914f8.c;
        }
        return EnumC0914f8.e;
    }
}
