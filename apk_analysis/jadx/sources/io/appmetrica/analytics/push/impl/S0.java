package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.intent.NotificationActionType;

/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class S0 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[NotificationActionType.values().length];
        try {
            iArr[NotificationActionType.CLEAR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[NotificationActionType.CLICK.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[NotificationActionType.ADDITIONAL_ACTION.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[NotificationActionType.INLINE_ACTION.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
    }
}
