package com.google.android.gms.internal.measurement;

import defpackage.fpa;
import defpackage.qpa;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabe {
    public static final fpa b = new fpa();
    public static final zzabe c;
    public static final /* synthetic */ int zza = 0;
    public final qpa a;

    static {
        List list = Collections.EMPTY_LIST;
        c = new zzabe(new qpa());
    }

    public zzabe(qpa qpaVar) {
        this.a = qpaVar;
    }

    public static zzabe zza() {
        return c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzabe) && ((zzabe) obj).a.equals(this.a);
    }

    public final int hashCode() {
        return ~this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }

    public final Map zzb() {
        return this.a;
    }

    public final boolean zzc() {
        return this.a.isEmpty();
    }

    public final zzabe zzd(zzabe zzabeVar) {
        qpa qpaVar = zzabeVar.a;
        if (qpaVar.isEmpty()) {
            return this;
        }
        qpa qpaVar2 = this.a;
        return qpaVar2.isEmpty() ? zzabeVar : new zzabe(new qpa(qpaVar2, qpaVar));
    }
}
