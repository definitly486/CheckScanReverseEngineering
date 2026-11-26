package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.util.Pair;
import defpackage.en3;
import defpackage.fg;
import defpackage.jn2;
import defpackage.ma8;
import defpackage.mec;
import defpackage.o8;
import defpackage.x1;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class zztt {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final Executor b;
    public final zzru c;
    public final Map d;

    public zztt(Executor executor, zzru zzruVar, zzvc zzvcVar, HashMap map) {
        executor.getClass();
        this.b = executor;
        zzruVar.getClass();
        this.c = zzruVar;
        zzvcVar.getClass();
        map.getClass();
        this.d = map;
        o8.e(!map.isEmpty());
    }

    public final zztp zza(zztr zztrVar) {
        Uri uriZza = zztrVar.zza();
        ConcurrentHashMap concurrentHashMap = this.a;
        Pair pairCreate = (Pair) concurrentHashMap.get(uriZza);
        if (pairCreate == null) {
            Uri uriZza2 = zztrVar.zza();
            o8.h(uriZza2.isHierarchical(), "Uri must be hierarchical: %s", uriZza2);
            String lastPathSegment = uriZza2.getLastPathSegment();
            if (lastPathSegment == null) {
                lastPathSegment = "";
            }
            int iLastIndexOf = lastPathSegment.lastIndexOf(46);
            o8.h((iLastIndexOf == -1 ? "" : lastPathSegment.substring(iLastIndexOf + 1)).equals("pb"), "Uri extension must be .pb: %s", uriZza2);
            o8.f(zztrVar.zzc() != null, "Handler cannot be null");
            zzuw zzuwVar = (zzuw) this.d.get("singleproc");
            o8.h(zzuwVar != null, "No XDataStoreVariantFactory registered for ID %s", "singleproc");
            String lastPathSegment2 = zztrVar.zza().getLastPathSegment();
            String strSubstring = lastPathSegment2 != null ? lastPathSegment2 : "";
            int iLastIndexOf2 = strSubstring.lastIndexOf(46);
            if (iLastIndexOf2 != -1) {
                strSubstring = strSubstring.substring(0, iLastIndexOf2);
            }
            String str = strSubstring;
            x1.a aVarP = x1.p(en3.X(zztrVar.zza()), mec.a, jn2.INSTANCE);
            zzti zztiVar = zzti.zza;
            Executor executor = this.b;
            zzuv zzuvVarZzb = zzuwVar.zzb(zztrVar, str, executor, this.c, zztiVar);
            zzuwVar.zza(zztiVar);
            zztp zztpVar = new zztp(zzuvVarZzb, aVarP);
            com.google.common.collect.j jVarZzd = zztrVar.zzd();
            if (!jVarZzd.isEmpty()) {
                zztpVar.zza(zzto.zza(jVarZzd, executor));
            }
            pairCreate = Pair.create(zztpVar, zztrVar);
            Pair pair = (Pair) concurrentHashMap.putIfAbsent(uriZza, pairCreate);
            if (pair != null) {
                pairCreate = pair;
            }
        }
        zztp zztpVar2 = (zztp) pairCreate.first;
        zztr zztrVar2 = (zztr) pairCreate.second;
        if (zztrVar.equals(zztrVar2)) {
            return zztpVar2;
        }
        String strA = ma8.a("ProtoDataStoreConfig<%s> doesn't match previous call [uri=%s] [%s]", zztrVar.zzb().getClass().getSimpleName(), zztrVar.zza());
        o8.h(zztrVar.zza().equals(zztrVar2.zza()), strA, "uri");
        o8.h(zztrVar.zzb().equals(zztrVar2.zzb()), strA, "schema");
        o8.h(zztrVar.zzc().equals(zztrVar2.zzc()), strA, "handler");
        o8.h(zztrVar.zzd().equals(zztrVar2.zzd()), strA, "migrations");
        o8.h(zztrVar.zze().equals(zztrVar2.zze()), strA, "variantConfig");
        o8.h(zztrVar.zzf() == zztrVar2.zzf(), strA, "useGeneratedExtensionRegistry");
        fg.c(ma8.a(strA, "unknown"));
        return null;
    }
}
