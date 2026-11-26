package com.google.android.gms.internal.measurement;

import defpackage.agc;
import defpackage.yr4;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvu {
    public static final WeakHashMap a = new WeakHashMap();
    public static final WeakHashMap b = new WeakHashMap();

    public static void zza(Throwable th) {
        Throwable cause;
        zzxc zzxcVar;
        zzws zzwsVarZzb;
        WeakHashMap weakHashMap = b;
        synchronized (weakHashMap) {
            cause = th;
            while (cause != null) {
                try {
                    if (weakHashMap.containsKey(cause)) {
                        break;
                    } else {
                        cause = cause.getCause();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            weakHashMap.put(th, Boolean.valueOf(cause != null));
        }
        if (cause != null) {
            return;
        }
        WeakHashMap weakHashMap2 = a;
        synchronized (weakHashMap2) {
            Throwable cause2 = th;
            while (cause2 != null) {
                try {
                    if (weakHashMap2.containsKey(cause2)) {
                        break;
                    } else {
                        cause2 = cause2.getCause();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            if (cause2 == null) {
                zzxcVar = null;
            } else {
                weakHashMap2.put(th, (zzww) weakHashMap2.get(cause2));
                zzxcVar = new zzxc();
            }
        }
        if (zzxcVar != null || (zzwsVarZzb = zzvy.zzd().b) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (zzwsVarZzb = zzvy.zzd().b; zzwsVarZzb != null; zzwsVarZzb = zzwsVarZzb.zzb()) {
            arrayList.add(zzwsVarZzb);
        }
        agc agcVar = new agc();
        agcVar.zzc(((zzws) arrayList.get(0)).zzc());
        ((zzws) arrayList.get(0)).zzk();
        agcVar.zzd(-1L);
        com.google.common.collect.j.a aVarM = com.google.common.collect.j.m(arrayList.size());
        com.google.common.collect.j.a aVarM2 = com.google.common.collect.j.m(arrayList.size());
        for (zzws zzwsVar : yr4.b(arrayList)) {
            aVarM2.c(zzwsVar.zze());
            aVarM.c(zzwsVar.zzh());
        }
        WeakHashMap weakHashMap3 = a;
        synchronized (weakHashMap3) {
            agcVar.zza(aVarM2.g());
            agcVar.zzb(aVarM.g());
            weakHashMap3.put(th, agcVar.zze());
        }
    }
}
