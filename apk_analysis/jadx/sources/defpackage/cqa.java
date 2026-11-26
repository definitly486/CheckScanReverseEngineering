package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class cqa extends zzeh implements zzfn {
    private static final cqa zzb;
    private int zzd;
    private String zze = "";
    private zzdf zzf;
    private String zzg;
    private zzdf zzh;
    private float zzi;
    private float zzj;
    private float zzk;
    private float zzl;
    private int zzm;

    static {
        cqa cqaVar = new cqa();
        zzb = cqaVar;
        zzeh.f(cqa.class, cqaVar);
    }

    public cqa() {
        zzdf zzdfVar = zzdf.zzb;
        this.zzf = zzdfVar;
        this.zzg = "";
        this.zzh = zzdfVar;
        this.zzi = 0.25f;
        this.zzj = 0.25f;
        this.zzk = 0.5f;
        this.zzl = 0.85f;
        this.zzm = 1;
    }

    public static lpa k() {
        return (lpa) zzb.b();
    }

    public static /* synthetic */ void l(cqa cqaVar, zzdf zzdfVar) {
        zzdfVar.getClass();
        cqaVar.zzd |= 2;
        cqaVar.zzf = zzdfVar;
    }

    public static /* synthetic */ void m(cqa cqaVar, zzdf zzdfVar) {
        zzdfVar.getClass();
        cqaVar.zzd |= 8;
        cqaVar.zzh = zzdfVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ည\u0003\u0005ခ\u0004\u0006ခ\u0005\u0007ခ\u0006\bခ\u0007\tင\b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new cqa();
        }
        if (i2 == 4) {
            return new lpa(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
