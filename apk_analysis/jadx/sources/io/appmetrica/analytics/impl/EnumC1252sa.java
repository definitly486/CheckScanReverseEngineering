package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public enum EnumC1252sa {
    UNKNOWN(0),
    FIRST_OCCURRENCE(1),
    NON_FIRST_OCCURENCE(2);

    public final int a;

    EnumC1252sa(int i) {
        this.a = i;
    }

    public static EnumC1252sa a(Integer num) {
        if (num != null) {
            for (EnumC1252sa enumC1252sa : values()) {
                if (enumC1252sa.a == num.intValue()) {
                    return enumC1252sa;
                }
            }
        }
        return UNKNOWN;
    }
}
