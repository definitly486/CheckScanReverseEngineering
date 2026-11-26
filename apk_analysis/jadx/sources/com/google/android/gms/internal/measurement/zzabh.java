package com.google.android.gms.internal.measurement;

import defpackage.ag;
import defpackage.fg;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzabh {
    public final int a;
    public final zzza b;

    public zzabh(zzza zzzaVar, int i) {
        if (zzzaVar == null) {
            fg.c("format options cannot be null");
            throw null;
        }
        if (i < 0) {
            fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 15), "invalid index: ", i));
            throw null;
        }
        this.a = i;
        this.b = zzzaVar;
    }

    public abstract void a(zzabi zzabiVar, Object obj);

    public final int zzc() {
        return this.a;
    }

    public final void zze(zzabi zzabiVar, Object[] objArr) {
        int length = objArr.length;
        int i = this.a;
        if (i >= length) {
            zzabiVar.zze();
            return;
        }
        Object obj = objArr[i];
        if (obj != null) {
            a(zzabiVar, obj);
        } else {
            zzabiVar.zzf();
        }
    }
}
