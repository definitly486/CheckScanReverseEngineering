package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsc implements zzrz {
    public final ArrayList a;

    public zzsc(Context context, zzsb zzsbVar) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (zzsbVar.zzc()) {
            arrayList.add(new zzsp(context, zzsbVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzrz
    public final void zza(zzry zzryVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((zzrz) it.next()).zza(zzryVar);
        }
    }
}
