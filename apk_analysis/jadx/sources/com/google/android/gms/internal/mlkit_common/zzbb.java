package com.google.android.gms.internal.mlkit_common;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class zzbb {
    public static final zzbb zza;
    public static final zzbb zzb;
    public static final zzbb zzc;
    private static final /* synthetic */ zzbb[] zzd;

    static {
        zzbb zzbbVar = new zzbb("DEFAULT", 0);
        zza = zzbbVar;
        zzbb zzbbVar2 = new zzbb("SIGNED", 1);
        zzb = zzbbVar2;
        zzbb zzbbVar3 = new zzbb("FIXED", 2);
        zzc = zzbbVar3;
        zzd = new zzbb[]{zzbbVar, zzbbVar2, zzbbVar3};
    }

    public static zzbb[] values() {
        return (zzbb[]) zzd.clone();
    }
}
