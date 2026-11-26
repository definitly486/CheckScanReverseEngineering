package defpackage;

import com.google.android.gms.internal.measurement.i;
import com.google.android.gms.internal.measurement.zzvr;
import com.google.android.gms.internal.measurement.zzvy;
import com.google.android.gms.internal.measurement.zzwl;
import com.google.android.gms.internal.measurement.zzwq;
import com.google.android.gms.internal.measurement.zzws;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class tgc extends dgc implements cgc {
    public final Exception h;
    public final boolean i;

    /* JADX WARN: Multi-variable type inference failed */
    public tgc(String str, cgc cgcVar, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        super("<missing root>:".concat(str), (zfc) cgcVar, zzwl.a(zzwlVar, i.f), zzwqVar);
        this.h = cgcVar.zzf();
        this.i = z;
    }

    @Override // defpackage.cgc
    public final Exception zzf() {
        return this.h;
    }

    @Override // defpackage.cgc
    public final zzws zzg(String str, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        boolean z2 = this.i;
        if (z && !z2) {
            AtomicReference atomicReference = zzvy.a;
        }
        boolean z3 = true;
        if ((!z || z2) && !z2) {
            z3 = false;
        }
        return new tgc(str, this, zzwlVar, z3, zzwqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws zzj(String str, String str2, String str3, int i, zzwl zzwlVar, zzwq zzwqVar) {
        AtomicReference atomicReference = zzvy.a;
        return zzg(str, zzwlVar, true, zzwqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final long zzk() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl zzl() {
        return i.e;
    }

    public tgc(UUID uuid, String str, String str2, zzwl zzwlVar, zzvr zzvrVar, zzwq zzwqVar) {
        super("<missing root>:".concat(str2), uuid, str, zzwl.a(zzwlVar, i.f), zzwqVar);
        this.h = zzvrVar;
        this.i = false;
    }
}
