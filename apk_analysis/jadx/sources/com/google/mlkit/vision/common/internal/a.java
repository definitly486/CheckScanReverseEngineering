package com.google.mlkit.vision.common.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public final HashMap a = new HashMap();

    /* JADX INFO: renamed from: com.google.mlkit.vision.common.internal.a$a, reason: collision with other inner class name */
    public static class C0144a {
    }

    public a(Set set) {
        HashMap map = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((C0144a) it.next()).getClass();
            if (!this.a.containsKey(null) || ((Integer) Preconditions.checkNotNull((Integer) map.get(null))).intValue() <= 0) {
                this.a.put(null, null);
                map.put(null, 0);
            }
        }
    }
}
