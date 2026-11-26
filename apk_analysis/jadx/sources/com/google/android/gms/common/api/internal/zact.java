package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import defpackage.pka;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zact {
    public static final Status zaa = new Status(8, "The connection to Google Play services was lost");
    public final Set a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    public final pka b = new pka(this);

    public final void zab() {
        Set set = this.a;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) set.toArray(new BasePendingResult[0])) {
            basePendingResult.zan(null);
            if (basePendingResult.zaj()) {
                set.remove(basePendingResult);
            }
        }
    }
}
