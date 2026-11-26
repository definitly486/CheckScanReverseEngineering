package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzpg;
import defpackage.cac;
import defpackage.eac;
import defpackage.hn1;
import defpackage.obc;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpe {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public zzpe() {
    }

    public final eac zzc(final zzlk zzlkVar, final cac cacVar, String str) {
        final obc obcVar = new obc();
        obcVar.a = false;
        ConcurrentHashMap concurrentHashMap = this.a;
        Context contextZzc = zzlkVar.zzc();
        String str2 = cacVar.d;
        if (str2 == null) {
            str2 = (String) cacVar.a.apply(contextZzc);
            cacVar.d = str2;
        }
        eac eacVar = (eac) concurrentHashMap.computeIfAbsent(str2, new Function() { // from class: lbc
            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                eac eacVar2 = new eac(new zzpg(zzlkVar, cacVar));
                obcVar.a = true;
                return eacVar2;
            }
        });
        if (obcVar.a) {
            zzql.zza(zzlkVar.zzc(), new zzqk() { // from class: abc
                @Override // com.google.android.gms.internal.measurement.zzqk
                public final void zza(String str3) {
                    eac eacVar2 = (eac) this.a.a.get(str3);
                    if (eacVar2 != null) {
                        eacVar2.a.b();
                    }
                }
            }, new hn1());
        }
        return eacVar;
    }

    public /* synthetic */ zzpe(int i) {
    }
}
