package com.google.android.gms.internal.common;

import defpackage.ag;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzai {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                o2.d(ag.d(new StringBuilder(String.valueOf(i2).length() + 9), "at index ", i2));
                return;
            }
        }
    }
}
