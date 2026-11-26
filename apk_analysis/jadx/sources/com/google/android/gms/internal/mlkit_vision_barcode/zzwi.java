package com.google.android.gms.internal.mlkit_vision_barcode;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwi implements zzwf {
    public final ArrayList a;

    public zzwi(Context context, zzwh zzwhVar) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (zzwhVar.zzc()) {
            arrayList.add(new zzwx(context, zzwhVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwf
    public final void zza(zzwe zzweVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((zzwf) it.next()).zza(zzweVar);
        }
    }
}
