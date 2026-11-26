package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzhk;

/* JADX INFO: loaded from: classes4.dex */
public final class spb extends zzeh implements zzfn {
    private static final spb zzb;
    private int zzd;
    private cdb zzj;
    private zzhk zzl;
    private String zze = "";
    private zzdf zzf = zzdf.zzb;
    private int zzg = 10;
    private float zzh = 0.5f;
    private float zzi = 0.05f;
    private int zzk = 1;
    private int zzm = 320;
    private int zzn = 4;
    private int zzo = 2;

    static {
        spb spbVar = new spb();
        zzb = spbVar;
        zzeh.f(spb.class, spbVar);
    }

    public static vlb k() {
        return (vlb) zzb.b();
    }

    public static /* synthetic */ void l(spb spbVar, cdb cdbVar) {
        cdbVar.getClass();
        spbVar.zzj = cdbVar;
        spbVar.zzd |= 32;
    }

    public static /* synthetic */ void m(spb spbVar, zzdf zzdfVar) {
        zzdfVar.getClass();
        spbVar.zzd |= 2;
        spbVar.zzf = zzdfVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u000b\u0000\u0001\u0001\f\u000b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဋ\u0002\u0004ခ\u0003\u0005ခ\u0004\u0006ဉ\u0005\bင\u0006\tဉ\u0007\nင\b\u000bင\t\fင\n", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo"});
        }
        if (i2 == 3) {
            return new spb();
        }
        if (i2 == 4) {
            return new vlb(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
