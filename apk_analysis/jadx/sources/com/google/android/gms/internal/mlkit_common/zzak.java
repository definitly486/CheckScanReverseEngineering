package com.google.android.gms.internal.mlkit_common;

import defpackage.jh;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak {
    public static void a(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                o2.d(jh.b(i2, "at index "));
                return;
            }
        }
    }
}
