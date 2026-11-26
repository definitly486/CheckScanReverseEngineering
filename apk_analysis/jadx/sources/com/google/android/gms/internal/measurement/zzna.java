package com.google.android.gms.internal.measurement;

import defpackage.m96;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzna implements zzrt {
    public final boolean a;

    public zzna(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzrt
    public final /* bridge */ /* synthetic */ Object zza(zzrs zzrsVar) {
        zznd zzndVarZzb;
        zzrsVar.getClass();
        InputStream inputStreamZzc = zzst.zzc(zzrsVar);
        try {
            int i = 4096;
            if (this.a) {
                if (inputStreamZzc instanceof zzsf) {
                    long length = ((zzsf) inputStreamZzc).zza().length();
                    if (length == 0) {
                        i = 512;
                    } else if (length < 4096) {
                        i = (int) length;
                    }
                }
                zzndVarZzb = zznd.zzb(zzacv.zzM(inputStreamZzc, i), true);
                zzndVarZzb.getClass();
            } else {
                zzndVarZzb = zznd.zzb(zzacv.zzM(inputStreamZzc, 4096), false);
                zzndVarZzb.getClass();
            }
            m96.c(inputStreamZzc, null);
            return zzndVarZzb;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(inputStreamZzc, th);
                throw th2;
            }
        }
    }
}
