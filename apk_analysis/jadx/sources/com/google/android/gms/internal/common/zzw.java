package com.google.android.gms.internal.common;

import defpackage.ndc;
import defpackage.qec;
import defpackage.x8c;
import defpackage.ydc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw {
    public final zzp a;
    public final boolean b;
    public final qec c;

    public zzw(qec qecVar, boolean z, zzp zzpVar) {
        this.c = qecVar;
        this.b = z;
        this.a = zzpVar;
    }

    public static zzw zza(zzp zzpVar) {
        return new zzw(new qec(zzpVar), false, x8c.b);
    }

    public final zzw zzb() {
        return new zzw(this.c, true, this.a);
    }

    public final Iterable zzc(CharSequence charSequence) {
        return new ydc(this, charSequence);
    }

    public final List zzd(CharSequence charSequence) {
        charSequence.getClass();
        ndc ndcVar = new ndc(this, charSequence, this.c.a);
        ArrayList arrayList = new ArrayList();
        while (ndcVar.hasNext()) {
            arrayList.add((String) ndcVar.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
