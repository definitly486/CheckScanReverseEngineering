package com.google.android.gms.internal.measurement;

import com.google.common.collect.x;
import defpackage.ah;
import defpackage.co5;
import defpackage.sd2;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zznd {
    public static final zznd c = new zznd(zzmw.zzb(), zzmq.zzi());
    public final zzmw a;
    public final zzmq b;

    public zznd(zzmw zzmwVar, zzmq zzmqVar) {
        zzmwVar.getClass();
        this.a = zzmwVar;
        this.b = zzmqVar;
    }

    public static zznd zza() {
        return c;
    }

    public static zznd zzb(zzacv zzacvVar, boolean z) throws zzaeh {
        zzmw zzmwVar;
        int iZzr = zzacvVar.zzr();
        if (iZzr > 1) {
            StringBuilder sb = new StringBuilder(String.valueOf(iZzr).length() + 44);
            sb.append("Unsupported version: ");
            sb.append(iZzr);
            sb.append(". Current version is: 1");
            throw new zzaeh(sb.toString());
        }
        zzacvVar.zzr();
        int iZzD = zzacvVar.zzD(zzacvVar.zzp());
        zzmq zzmqVarZzh = zzmq.zzh(zzacvVar, zzadf.zza());
        zzacvVar.zzE(iZzD);
        zzmu zzmuVarZza = zzmu.zza();
        try {
            if (z) {
                int iZzD2 = zzacvVar.zzD(zzacvVar.zzp());
                zzmwVar = (zzmw) zzmuVarZza.zzc(zzacvVar, sd2.d);
                if (zzacvVar.zzF() != 0) {
                    throw new zzaeh("Unexpected bytes remaining after FlagsBlob parsing.");
                }
                zzacvVar.zzE(iZzD2);
            } else {
                zzmwVar = (zzmw) zzmuVarZza.zzb(zzacvVar.zzo(), co5.c);
            }
            zzmuVarZza.close();
            return new zznd(zzmwVar, zzmqVarZzh);
        } catch (Throwable th) {
            try {
                zzmuVarZza.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final zzmw zzc() {
        x xVarA;
        zzmq zzmqVar = this.b;
        int iZze = zzmqVar.zze();
        zzmw zzmwVar = this.a;
        if (iZze <= 0) {
            return zzmwVar;
        }
        Collection<zzmi> collectionValues = zzmqVar.zzf().values();
        if (collectionValues == null) {
            xVarA = x.h;
        } else {
            com.google.common.collect.l.a aVarA = com.google.common.collect.l.a();
            for (zzmi zzmiVar : collectionValues) {
                int iZzq = zzmiVar.zzq();
                int i = iZzq - 1;
                if (iZzq == 0) {
                    throw null;
                }
                if (i == 0) {
                    aVarA.b(zzmiVar.zza(), Long.valueOf(zzmiVar.zzb()));
                } else if (i == 1) {
                    aVarA.b(zzmiVar.zza(), Boolean.valueOf(zzmiVar.zzc()));
                } else if (i == 2) {
                    aVarA.b(zzmiVar.zza(), Double.valueOf(zzmiVar.zzd()));
                } else if (i == 3) {
                    aVarA.b(zzmiVar.zza(), zzmiVar.zze());
                } else {
                    if (i != 4) {
                        ah.f("Could not serialize Flag for override: ".concat(String.valueOf(zzmiVar.zza())));
                        return null;
                    }
                    aVarA.b(zzmiVar.zza(), zzmiVar.zzf().zzm());
                }
            }
            xVarA = aVarA.a(false);
        }
        return zzmw.zza(zzmwVar, xVarA);
    }

    public final String zzd() {
        return this.b.zza();
    }

    public final String zze() {
        return this.b.zzc();
    }

    public final long zzf() {
        return this.b.zzd();
    }

    public final zzacr zzg() {
        return this.b.zzb();
    }

    public final Map zzh() {
        zzmq zzmqVar = this.b;
        if (zzmqVar.zze() == 0) {
            return null;
        }
        return zzmqVar.zzf();
    }

    public final boolean zzi() {
        if (this.a.zze().isEmpty()) {
            return zzmq.zzi().equals(this.b);
        }
        return false;
    }
}
