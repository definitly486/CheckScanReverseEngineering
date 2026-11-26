package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class wc0 extends zzeh<wc0, eyb> implements zzfn {
    private static final wc0 zzb;
    private int zzd;
    private spb zze;
    private cqa zzf;
    private fcc zzg;

    static {
        wc0 wc0Var = new wc0();
        zzb = wc0Var;
        zzeh.f(wc0.class, wc0Var);
    }

    public static eyb k() {
        return (eyb) zzb.b();
    }

    public static /* synthetic */ void l(wc0 wc0Var, spb spbVar) {
        spbVar.getClass();
        wc0Var.zze = spbVar;
        wc0Var.zzd |= 1;
    }

    public static /* synthetic */ void m(wc0 wc0Var, cqa cqaVar) {
        cqaVar.getClass();
        wc0Var.zzf = cqaVar;
        wc0Var.zzd |= 2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new wc0();
        }
        if (i2 == 4) {
            return new eyb(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
