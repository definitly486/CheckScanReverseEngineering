package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzci;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzck;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzco;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class hbc extends zzeh implements zzfn {
    private static final hbc zzb;
    private int zzd;
    private zzck zze;
    private zzeo zzh;
    private zzeo zzi;
    private zzeo zzj;
    private zzeo zzk;
    private String zzl;
    private byte zzm = 2;
    private String zzf = "";
    private String zzg = "";

    static {
        hbc hbcVar = new hbc();
        zzb = hbcVar;
        zzeh.f(hbc.class, hbcVar);
    }

    public hbc() {
        qgb qgbVar = qgb.e;
        this.zzh = qgbVar;
        this.zzi = qgbVar;
        this.zzj = qgbVar;
        this.zzk = qgbVar;
        this.zzl = "";
    }

    public static hbc l() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzm);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0004\u0001\u0001ဉ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004\u001b\u0005\u001b\u0006\u001a\u0007Л\bဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzco.class, "zzi", qfc.class, "zzj", "zzk", zzci.class, "zzl"});
        }
        if (i2 == 3) {
            return new hbc();
        }
        if (i2 == 4) {
            return new t8c(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzm = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final zzck k() {
        zzck zzckVar = this.zze;
        return zzckVar == null ? zzck.zzb() : zzckVar;
    }

    public final zzeo m() {
        return this.zzk;
    }

    public final zzeo n() {
        return this.zzi;
    }

    public final zzeo o() {
        return this.zzh;
    }

    public final zzeo p() {
        return this.zzj;
    }

    public final String zzd() {
        return this.zzf;
    }

    public final String zze() {
        return this.zzg;
    }
}
