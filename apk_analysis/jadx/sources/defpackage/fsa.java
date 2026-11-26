package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class fsa extends zzeh implements zzfn {
    private static final fsa zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private byte zzg = 2;

    static {
        fsa fsaVar = new fsa();
        zzb = fsaVar;
        zzeh.f(fsa.class, fsaVar);
    }

    public static pra m() {
        return (pra) zzb.b();
    }

    public static /* synthetic */ void n(fsa fsaVar, int i) {
        fsaVar.zzd |= 1;
        fsaVar.zze = i;
    }

    public static /* synthetic */ void o(fsa fsaVar, int i) {
        fsaVar.zzd |= 2;
        fsaVar.zzf = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzg);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᔄ\u0000\u0002ᔄ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new fsa();
        }
        if (i2 == 4) {
            return new pra(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzg = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final int k() {
        return this.zze;
    }

    public final int l() {
        return this.zzf;
    }
}
