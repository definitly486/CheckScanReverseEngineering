package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzds;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzer;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzgr;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class vc0 extends zzeh<vc0, zlb> implements zzfn {
    private static final vc0 zzb;
    private int zzd;
    private int zzf;
    private byte zzi = 2;
    private zzeo zze = qgb.e;
    private String zzg = "";
    private zzdf zzh = zzdf.zzb;

    static {
        vc0 vc0Var = new vc0();
        zzb = vc0Var;
        zzeh.f(vc0.class, vc0Var);
    }

    public static vc0 k(byte[] bArr, zzds zzdsVar) throws zzer {
        zzeh zzehVar = zzb;
        int length = bArr.length;
        if (length != 0) {
            zzeh zzehVar2 = (zzeh) zzehVar.j(4, null);
            try {
                jib jibVarA = lgb.c.a(zzehVar2.getClass());
                jibVarA.d(zzehVar2, bArr, 0, length, new a2b(zzdsVar));
                jibVarA.b(zzehVar2);
                zzehVar = zzehVar2;
            } catch (zzer e) {
                throw e;
            } catch (zzgr e2) {
                throw e2.zza();
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzer) {
                    throw ((zzer) e3.getCause());
                }
                throw new zzer(e3);
            } catch (IndexOutOfBoundsException unused) {
                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            }
        }
        if (zzehVar == null || zzeh.h(zzehVar, true)) {
            return (vc0) zzehVar;
        }
        throw new zzgr(zzehVar).zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzi);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001Л\u0002ᴌ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzd", "zze", aza.class, "zzf", pta.a, "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new vc0();
        }
        if (i2 == 4) {
            return new zlb(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzi = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final zzeo l() {
        return this.zze;
    }
}
