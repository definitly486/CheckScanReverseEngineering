package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjx extends zzgp implements zzhs {
    private static final zzjx zzb;

    static {
        zzjx zzjxVar = new zzjx();
        zzb = zzjxVar;
        zzgp.c(zzjx.class, zzjxVar);
    }

    public static zzjx zzb() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0000", null);
        }
        if (i2 == 3) {
            return new zzjx();
        }
        if (i2 == 4) {
            return new zzjv(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
