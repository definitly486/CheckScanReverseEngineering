package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzem;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class wya extends zzeh implements zzfn {
    private static final wya zzb;
    private int zzd;
    private zzem zze;
    private zzem zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    static {
        wya wyaVar = new wya();
        zzb = wyaVar;
        zzeh.f(wya.class, wyaVar);
    }

    public wya() {
        k8b k8bVar = k8b.e;
        this.zze = k8bVar;
        this.zzf = k8bVar;
    }

    public static uva k() {
        return (uva) zzb.b();
    }

    public static /* synthetic */ void l(wya wyaVar, int i) {
        wyaVar.zzd |= 2;
        wyaVar.zzh = i;
    }

    public static void m(wya wyaVar, float f) {
        zzem zzemVar = wyaVar.zze;
        if (!zzemVar.zzc()) {
            int size = zzemVar.size();
            wyaVar.zze = zzemVar.zzd(size == 0 ? 10 : size + size);
        }
        wyaVar.zze.zzh(f);
    }

    public static void n(wya wyaVar, float f) {
        zzem zzemVar = wyaVar.zzf;
        if (!zzemVar.zzc()) {
            int size = zzemVar.size();
            wyaVar.zzf = zzemVar.zzd(size == 0 ? 10 : size + size);
        }
        wyaVar.zzf.zzh(f);
    }

    public static /* synthetic */ void o(wya wyaVar, int i) {
        wyaVar.zzd |= 1;
        wyaVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003ဋ\u0000\u0004ဋ\u0001\u0005ဋ\u0002\u0006ဋ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new wya();
        }
        if (i2 == 4) {
            return new uva(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
