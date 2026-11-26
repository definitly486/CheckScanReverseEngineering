package com.google.android.gms.internal.measurement;

import com.google.common.collect.n;
import defpackage.cgc;
import defpackage.hgc;
import defpackage.qgc;
import defpackage.tgc;
import defpackage.zfc;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwd extends zfc implements cgc {
    public static final zzvr h = new zzvr();
    public static final /* synthetic */ int zzb = 0;
    public final Exception g;

    public zzwd(UUID uuid, String str, zzvr zzvrVar, zzwq zzwqVar) {
        super("<missing root>", uuid, str, zzwqVar);
        this.g = zzvrVar;
    }

    public static zzwd zzi(zzwq zzwqVar) {
        UUID uuidB = hgc.c.b();
        String strZzcL = zfc.zzcL(uuidB);
        n nVar = (n) zzvy.a.get();
        if (!nVar.isEmpty()) {
            nVar.forEach(new qgc());
        }
        return new zzwd(uuidB, strZzcL, h, zzwqVar);
    }

    @Override // defpackage.cgc
    public final Exception zzf() {
        return this.g;
    }

    @Override // defpackage.cgc
    public final zzws zzg(String str, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        if (z) {
            AtomicReference atomicReference = zzvy.a;
        }
        return new tgc(str, this, zzwlVar, z, zzwqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl zzh() {
        return i.e;
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
        throw null;
    }
}
