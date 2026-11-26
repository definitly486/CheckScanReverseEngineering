package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmf implements zzmc {
    public final ArrayList a;

    public zzmf(Context context, zzme zzmeVar) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (zzmeVar.zzc()) {
            arrayList.add(new zzmp(context, zzmeVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzmc
    public final void zza(zzmb zzmbVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((zzmc) it.next()).zza(zzmbVar);
        }
    }
}
