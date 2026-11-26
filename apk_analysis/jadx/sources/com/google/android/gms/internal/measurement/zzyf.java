package com.google.android.gms.internal.measurement;

import defpackage.cic;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzyf {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public abstract Object a();

    public final Object zzb(zzyd zzydVar, zzzj zzzjVar) {
        ConcurrentHashMap concurrentHashMap = this.a;
        Object obj = concurrentHashMap.get(zzydVar);
        if (obj != null) {
            return obj;
        }
        Object objA = a();
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(zzydVar, objA);
        if (objPutIfAbsent != null) {
            return objPutIfAbsent;
        }
        int iZza = zzzjVar.zza();
        cic cicVar = null;
        for (int i = 0; i < iZza; i++) {
            if (zzxx.zzf.equals(zzzjVar.zzb(i))) {
                Object objZzc = zzzjVar.zzc(i);
                if (objZzc instanceof zzyj) {
                    if (cicVar == null) {
                        cicVar = new cic(this, zzydVar);
                    }
                    ((zzyj) objZzc).a();
                }
            }
        }
        return objA;
    }
}
