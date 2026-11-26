package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public enum TJStatus {
    FALSE,
    TRUE,
    UNKNOWN;

    TJStatus() {
    }

    public static TJStatus valueOf(int i) {
        if (i != 0) {
            return i != 1 ? UNKNOWN : TRUE;
        }
        return FALSE;
    }

    public Boolean getBoolean() {
        int i = j0.a[ordinal()];
        if (i == 1) {
            return Boolean.FALSE;
        }
        if (i != 2) {
            return null;
        }
        return Boolean.TRUE;
    }

    public int getValue() {
        int i = j0.a[ordinal()];
        if (i != 1) {
            return i != 2 ? 2 : 1;
        }
        return 0;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(getValue());
    }
}
