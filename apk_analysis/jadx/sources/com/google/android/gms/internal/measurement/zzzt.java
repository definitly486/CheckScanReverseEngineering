package com.google.android.gms.internal.measurement;

import com.tapjoy.TJKeyValueStorageKt;
import defpackage.tic;
import defpackage.uic;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzzt {
    public static final tic a = new tic();
    public static final uic b = new uic();

    public static zzzm zza(Set set) {
        zzzm zzzmVar = new zzzm();
        zzzmVar.zza(b);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzyl zzylVar = (zzyl) it.next();
            zzabr.zza(zzylVar, TJKeyValueStorageKt.KEY);
            boolean zZzf = zzylVar.zzf();
            HashMap map = zzzmVar.b;
            HashMap map2 = zzzmVar.a;
            if (zZzf) {
                zzabr.zza(zzylVar, TJKeyValueStorageKt.KEY);
                zzabr.zzb(zzylVar.zzf(), "key must be repeating");
                map2.remove(zzylVar);
                map.put(zzylVar, zzzm.e);
            } else {
                zzabr.zza(zzylVar, TJKeyValueStorageKt.KEY);
                map.remove(zzylVar);
                map2.put(zzylVar, zzzm.d);
            }
        }
        return zzzmVar;
    }
}
