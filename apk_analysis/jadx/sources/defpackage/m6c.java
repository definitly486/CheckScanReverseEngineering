package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class m6c extends zzeh implements zzfn {
    private static final m6c zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private e1c zzj;
    private e1c zzk;

    static {
        m6c m6cVar = new m6c();
        zzb = m6cVar;
        zzeh.f(m6c.class, m6cVar);
    }

    public static m6c m() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဉ\u0005\u0007ဉ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new m6c();
        }
        if (i2 == 4) {
            return new zlb(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final e1c k() {
        e1c e1cVar = this.zzk;
        return e1cVar == null ? e1c.o() : e1cVar;
    }

    public final e1c l() {
        e1c e1cVar = this.zzj;
        return e1cVar == null ? e1c.o() : e1cVar;
    }

    public final String zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zzg;
    }

    public final String zzh() {
        return this.zzh;
    }

    public final String zzi() {
        return this.zzi;
    }

    public final String zzj() {
        return this.zze;
    }
}
