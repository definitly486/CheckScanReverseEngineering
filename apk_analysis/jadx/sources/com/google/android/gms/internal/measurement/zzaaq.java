package com.google.android.gms.internal.measurement;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaaq implements zzaai {
    public final Level a;
    public final Set b;
    public final zzzq c;

    public zzaaq() {
        this(Level.ALL, zzaas.f, zzaas.g);
    }

    @Override // com.google.android.gms.internal.measurement.zzaai
    public final zzzf zza(String str) {
        return new zzaas(str, this.a, this.b, this.c);
    }

    public final zzaaq zzb(boolean z) {
        return new zzaaq(Level.OFF, this.b, this.c);
    }

    public zzaaq(Level level, Set set, zzzq zzzqVar) {
        this.a = level;
        this.b = set;
        this.c = zzzqVar;
    }
}
