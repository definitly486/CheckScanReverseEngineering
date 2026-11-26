package com.google.android.gms.internal.auth;

import defpackage.cjb;
import defpackage.h7b;
import defpackage.qib;
import defpackage.tib;
import defpackage.yib;
import java.io.IOException;
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
    */
    public static zzhs zzp(byte[] bArr) throws zzfb {
        zzhs zzhsVar = zzb;
        int length = bArr.length;
        zzel zzelVar = zzel.b;
        zzev zzevVarB = zzhsVar.b();
        try {
            qib qibVar = qib.c;
            cjb cjbVarA = qibVar.a(zzevVarB.getClass());
            h7b h7bVar = new h7b();
            zzelVar.getClass();
            cjbVarA.e(zzevVarB, bArr, 0, length, h7bVar);
            cjbVarA.zze(zzevVarB);
            byte bByteValue = ((Byte) zzevVarB.h(1)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue != 0) {
                    boolean zD = qibVar.a(zzevVarB.getClass()).d(zzevVarB);
                    zzevVarB.h(2);
                }
                zzfb zzfbVarZza = new zzgy(zzevVarB).zza();
                zzfbVarZza.zze(zzevVarB);
                throw zzfbVarZza;
            }
            return (zzhs) zzevVarB;
        } catch (zzfb e) {
            e.zze(zzevVarB);
            throw e;
        } catch (zzgy e2) {
            zzfb zzfbVarZza2 = e2.zza();
            zzfbVarZza2.zze(zzevVarB);
            throw zzfbVarZza2;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzfb) {
                throw ((zzfb) e3.getCause());
            }
            zzfb zzfbVar = new zzfb(e3);
            zzfbVar.zze(zzevVarB);
            throw zzfbVar;
        } catch (IndexOutOfBoundsException unused) {
            zzfb zzfbVarD = zzfb.d();
            zzfbVarD.zze(zzevVarB);
            throw zzfbVarD;
        }
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
