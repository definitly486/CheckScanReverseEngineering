package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.h2c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlk extends zzgp implements zzhs {
    private static final zzlk zzb;
    private int zzd;
    private int zze;

    static {
        zzlk zzlkVar = new zzlk();
        zzb = zzlkVar;
        zzgp.c(zzlk.class, zzlkVar);
    }

    public static zzlk zzb() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", h2c.a});
        }
        if (i2 == 3) {
            return new zzlk();
        }
        if (i2 == 4) {
            return new zzlh(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
