package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaaf {
    public final zzabn a;
    public final String b;

    public zzaaf(zzabn zzabnVar, String str) {
        zzabr.zza(zzabnVar, "parser");
        this.a = zzabnVar;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzaaf) {
            zzaaf zzaafVar = (zzaaf) obj;
            if (this.a.equals(zzaafVar.a) && this.b.equals(zzaafVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    public final zzabn zza() {
        return this.a;
    }

    public final String zzb() {
        return this.b;
    }
}
