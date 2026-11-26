package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class y {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[TJCloseButton.ClosePosition.values().length];
        a = iArr;
        try {
            iArr[TJCloseButton.ClosePosition.TOP_LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[TJCloseButton.ClosePosition.TOP_CENTER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[TJCloseButton.ClosePosition.TOP_RIGHT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            a[TJCloseButton.ClosePosition.CENTER.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            a[TJCloseButton.ClosePosition.BOTTOM_LEFT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            a[TJCloseButton.ClosePosition.BOTTOM_CENTER.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            a[TJCloseButton.ClosePosition.BOTTOM_RIGHT.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
