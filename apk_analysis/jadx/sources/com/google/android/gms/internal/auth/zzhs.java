package com.google.android.gms.internal.auth;

import defpackage.tib;
import defpackage.yib;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhs extends zzev implements zzfy {
    private static final zzhs zzb;
    private zzez zzd = tib.e;

    static {
        zzhs zzhsVar = new zzhs();
        zzb = zzhsVar;
        zzev.e(zzhsVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        if (r7 != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.zzhs zzp(byte[] r7) throws com.google.android.gms.internal.auth.zzfb {
        /*
            com.google.android.gms.internal.auth.zzhs r0 = com.google.android.gms.internal.auth.zzhs.zzb
            int r5 = r7.length
            com.google.android.gms.internal.auth.zzel r1 = com.google.android.gms.internal.auth.zzel.b
            com.google.android.gms.internal.auth.zzev r2 = r0.b()
            qib r0 = defpackage.qib.c     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            java.lang.Class r3 = r2.getClass()     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            cjb r3 = r0.a(r3)     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            h7b r6 = new h7b     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            r6.<init>()     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            r1.getClass()     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            r4 = 0
            r1 = r3
            r3 = r7
            r1.e(r2, r3, r4, r5, r6)     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            r1.zze(r2)     // Catch: java.io.IOException -> L56 com.google.android.gms.internal.auth.zzgy -> L59 com.google.android.gms.internal.auth.zzfb -> L5c java.lang.IndexOutOfBoundsException -> L5f
            r7 = 1
            java.lang.Object r1 = r2.h(r7)
            java.lang.Byte r1 = (java.lang.Byte) r1
            byte r1 = r1.byteValue()
            if (r1 != r7) goto L32
            goto L46
        L32:
            if (r1 == 0) goto L49
            java.lang.Class r7 = r2.getClass()
            cjb r7 = r0.a(r7)
            boolean r7 = r7.d(r2)
            r0 = 2
            r2.h(r0)
            if (r7 == 0) goto L49
        L46:
            com.google.android.gms.internal.auth.zzhs r2 = (com.google.android.gms.internal.auth.zzhs) r2
            return r2
        L49:
            com.google.android.gms.internal.auth.zzgy r7 = new com.google.android.gms.internal.auth.zzgy
            r7.<init>(r2)
            com.google.android.gms.internal.auth.zzfb r7 = r7.zza()
            r7.zze(r2)
            throw r7
        L56:
            r0 = move-exception
            r7 = r0
            goto L67
        L59:
            r0 = move-exception
            r7 = r0
            goto L7f
        L5c:
            r0 = move-exception
            r7 = r0
            goto L87
        L5f:
            com.google.android.gms.internal.auth.zzfb r7 = com.google.android.gms.internal.auth.zzfb.d()
            r7.zze(r2)
            throw r7
        L67:
            java.lang.Throwable r0 = r7.getCause()
            boolean r0 = r0 instanceof com.google.android.gms.internal.auth.zzfb
            if (r0 == 0) goto L76
            java.lang.Throwable r7 = r7.getCause()
            com.google.android.gms.internal.auth.zzfb r7 = (com.google.android.gms.internal.auth.zzfb) r7
            throw r7
        L76:
            com.google.android.gms.internal.auth.zzfb r0 = new com.google.android.gms.internal.auth.zzfb
            r0.<init>(r7)
            r0.zze(r2)
            throw r0
        L7f:
            com.google.android.gms.internal.auth.zzfb r7 = r7.zza()
            r7.zze(r2)
            throw r7
        L87:
            r7.zze(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzhs.zzp(byte[]):com.google.android.gms.internal.auth.zzhs");
    }

    @Override // com.google.android.gms.internal.auth.zzev
    public final Object h(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new yib(zzb, new Object[]{"zzd"});
        }
        if (i2 == 3) {
            return new zzhs();
        }
        if (i2 == 4) {
            return new zzhr(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final List zzq() {
        return this.zzd;
    }
}
