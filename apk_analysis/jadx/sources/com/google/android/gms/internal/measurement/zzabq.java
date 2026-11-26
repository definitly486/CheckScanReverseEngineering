package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.fg;
import defpackage.upa;
import defpackage.vpa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabq {
    public static final String[] a = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    public static final upa b;

    static {
        upa vpaVar;
        for (int i = 0; i < 2; i++) {
            vpaVar = null;
            try {
                vpaVar = (upa) Class.forName(a[i]).asSubclass(upa.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (vpaVar != null) {
                b = vpaVar;
            }
        }
        vpaVar = new vpa();
        b = vpaVar;
    }

    public static StackTraceElement zza(Class cls, int i) {
        zzabr.zza(cls, TypedValues.AttributesType.S_TARGET);
        return b.a(cls);
    }

    public static StackTraceElement[] zzb(Class cls, int i, int i2) {
        if (i > 0 || i == -1) {
            return b.b(cls, i);
        }
        fg.c("invalid maximum depth: 0");
        return null;
    }
}
