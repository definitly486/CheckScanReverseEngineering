package com.google.android.gms.internal.measurement;

import defpackage.dra;
import defpackage.fqa;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzadf {
    public static volatile zzadf b;
    public static final zzadf c = new zzadf(0);
    public static final /* synthetic */ int zzb = 0;
    public final Map a;

    public zzadf() {
        this.a = new HashMap();
    }

    public static zzadf zza() {
        int i = fqa.a;
        return c;
    }

    public static zzadf zzb() {
        zzadf zzadfVar = b;
        if (zzadfVar != null) {
            return zzadfVar;
        }
        synchronized (zzadf.class) {
            try {
                zzadf zzadfVar2 = b;
                if (zzadfVar2 != null) {
                    return zzadfVar2;
                }
                int i = fqa.a;
                zzadf zzadfVarB = zzadn.b();
                b = zzadfVarB;
                return zzadfVarB;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzadt zzc(zzafc zzafcVar, int i) {
        return (zzadt) this.a.get(new dra(i, zzafcVar));
    }

    public zzadf(int i) {
        this.a = Collections.EMPTY_MAP;
    }
}
