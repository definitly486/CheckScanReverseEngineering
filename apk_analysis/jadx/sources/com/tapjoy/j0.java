package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class j0 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[TJStatus.values().length];
        a = iArr;
        try {
            iArr[TJStatus.FALSE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[TJStatus.TRUE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
