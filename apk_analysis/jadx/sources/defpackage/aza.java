package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzco;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzen;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class aza extends zzeh implements zzfn {
    private static final aza zzb;
    private byte zzA = 2;
    private int zzd;
    private int zze;
    private zzdf zzf;
    private String zzg;
    private sqa zzh;
    private int zzi;
    private hbc zzj;
    private qfc zzk;
    private zzco zzl;
    private lta zzm;
    private mua zzn;
    private zta zzo;
    private oic zzp;
    private m6c zzq;
    private xcc zzr;
    private jub zzs;
    private zzeo zzt;
    private zzen zzu;
    private String zzv;
    private zzeo zzw;
    private boolean zzx;
    private double zzy;
    private zzdf zzz;

    static {
        aza azaVar = new aza();
        zzb = azaVar;
        zzeh.f(aza.class, azaVar);
    }

    public aza() {
        zzdf zzdfVar = zzdf.zzb;
        this.zzf = zzdfVar;
        this.zzg = "";
        qgb qgbVar = qgb.e;
        this.zzt = qgbVar;
        this.zzu = hab.e;
        this.zzv = "";
        this.zzw = qgbVar;
        this.zzx = true;
        this.zzz = zzdfVar;
    }

    public static void x(aza azaVar, int i, fsa fsaVar) {
        fsaVar.getClass();
        zzeo zzeoVar = azaVar.zzt;
        if (!zzeoVar.zzc()) {
            int size = zzeoVar.size();
            azaVar.zzt = zzeoVar.zzd(size == 0 ? 10 : size + size);
        }
        azaVar.zzt.set(i, fsaVar);
    }

    public final boolean A() {
        return (this.zzd & 8192) != 0;
    }

    public final boolean B() {
        return (this.zzd & 64) != 0;
    }

    public final boolean C() {
        return (this.zzd & 2048) != 0;
    }

    public final boolean D() {
        return (this.zzd & 128) != 0;
    }

    public final boolean E() {
        return (this.zzd & 256) != 0;
    }

    public final boolean F() {
        return (this.zzd & 1024) != 0;
    }

    public final boolean G() {
        return (this.zzd & 512) != 0;
    }

    public final int H() {
        int iA = iw9.a(this.zze);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzA);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0016\u0000\u0001\u0001\u0017\u0016\u0000\u0003\u000b\u0001ᴌ\u0000\u0002ᔊ\u0001\u0003ᔈ\u0002\u0004ᴌ\u0004\u0005ᐉ\u0005\u0006ဉ\u0006\u0007ဉ\u0007\bᐉ\b\tᐉ\t\nᐉ\n\u000bЛ\fဈ\u000f\rЛ\u000eည\u0012\u000fᐉ\u000b\u0010ဉ\f\u0011ဉ\r\u0012\u0016\u0013ဉ\u000e\u0014ဇ\u0010\u0015က\u0011\u0017ဉ\u0003", new Object[]{"zzd", "zze", v2b.a, "zzf", "zzg", "zzi", gdb.a, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzt", fsa.class, "zzv", "zzw", fsa.class, "zzz", "zzp", "zzq", "zzr", "zzu", "zzs", "zzx", "zzy", "zzh"});
        }
        if (i2 == 3) {
            return new aza();
        }
        if (i2 == 4) {
            return new awa(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzA = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final int k() {
        int iB = h03.b(this.zzi);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }

    public final int l() {
        return this.zzt.size();
    }

    public final m6c m() {
        m6c m6cVar = this.zzq;
        return m6cVar == null ? m6c.m() : m6cVar;
    }

    public final hbc n() {
        hbc hbcVar = this.zzj;
        return hbcVar == null ? hbc.l() : hbcVar;
    }

    public final xcc o() {
        xcc xccVar = this.zzr;
        return xccVar == null ? xcc.k() : xccVar;
    }

    public final qfc p() {
        qfc qfcVar = this.zzk;
        return qfcVar == null ? qfc.k() : qfcVar;
    }

    public final oic q() {
        oic oicVar = this.zzp;
        return oicVar == null ? oic.m() : oicVar;
    }

    public final lta r() {
        lta ltaVar = this.zzm;
        return ltaVar == null ? lta.k() : ltaVar;
    }

    public final zta s() {
        zta ztaVar = this.zzo;
        return ztaVar == null ? zta.k() : ztaVar;
    }

    public final mua t() {
        mua muaVar = this.zzn;
        return muaVar == null ? mua.k() : muaVar;
    }

    public final zzdf u() {
        return this.zzf;
    }

    public final String v() {
        return this.zzg;
    }

    public final zzeo w() {
        return this.zzt;
    }

    public final boolean y() {
        return (this.zzd & 4096) != 0;
    }

    public final boolean z() {
        return (this.zzd & 32) != 0;
    }

    public final zzco zzb() {
        zzco zzcoVar = this.zzl;
        return zzcoVar == null ? zzco.zzb() : zzcoVar;
    }
}
