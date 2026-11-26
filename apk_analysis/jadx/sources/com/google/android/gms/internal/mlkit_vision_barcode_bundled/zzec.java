package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.b8b;

/* JADX INFO: loaded from: classes4.dex */
public class zzec extends zzeb implements zzfn {
    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeb
    public final void h() {
        super.h();
        zzeh zzehVar = this.c;
        if (((zzed) zzehVar).zzb != b8b.d) {
            zzed zzedVar = (zzed) zzehVar;
            zzedVar.zzb = zzedVar.zzb.clone();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeb, com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfl
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzed zzk() {
        boolean zI = ((zzed) this.c).i();
        zzeh zzehVar = this.c;
        if (!zI) {
            return (zzed) zzehVar;
        }
        ((zzed) zzehVar).zzb.d();
        return (zzed) super.zzk();
    }
}
