package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.gab;
import defpackage.jcb;
import defpackage.m13;
import defpackage.ocb;
import defpackage.wab;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class zzej extends m13 {
    public static zzet zza(Object obj) {
        return new wab(obj);
    }

    public static void zzb(zzet zzetVar, zzeh zzehVar, Executor executor) {
        zzetVar.zzl(new gab(zzetVar, zzehVar), executor);
    }

    public static zzet zzc(zzxh zzxhVar, Executor executor) {
        ocb ocbVar = new ocb();
        ocbVar.i = new jcb(ocbVar, zzxhVar);
        ocbVar.run();
        return ocbVar;
    }
}
