package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class u6c {
    public static final u6c zza;
    public static final u6c zzb;
    public static final u6c zzc;
    private static final /* synthetic */ u6c[] zzd;

    static {
        u6c u6cVar = new u6c("LEGACY", 0);
        zza = u6cVar;
        u6c u6cVar2 = new u6c("AUTH_INSTANTIATION", 1);
        zzb = u6cVar2;
        u6c u6cVar3 = new u6c("CALLER_INSTANTIATION", 2);
        zzc = u6cVar3;
        zzd = new u6c[]{u6cVar, u6cVar2, u6cVar3};
    }

    public static u6c[] values() {
        return (u6c[]) zzd.clone();
    }
}
