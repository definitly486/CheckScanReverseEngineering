package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1124nb {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[InternalModuleEvent.Category.values().length];
        try {
            iArr[InternalModuleEvent.Category.SYSTEM.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[InternalModuleEvent.Category.GENERAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        a = iArr;
    }
}
