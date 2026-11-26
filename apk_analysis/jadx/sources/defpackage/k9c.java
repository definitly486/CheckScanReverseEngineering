package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class k9c {
    public static final k9c zza;
    public static final k9c zzb;
    public static final k9c zzc;
    public static final k9c zzd;
    private static final /* synthetic */ k9c[] zze;

    static {
        k9c k9cVar = new k9c("CONSENT", 0);
        zza = k9cVar;
        k9c k9cVar2 = new k9c("LEGITIMATE_INTEREST", 1);
        zzb = k9cVar2;
        k9c k9cVar3 = new k9c("FLEXIBLE_CONSENT", 2);
        zzc = k9cVar3;
        k9c k9cVar4 = new k9c("FLEXIBLE_LEGITIMATE_INTEREST", 3);
        zzd = k9cVar4;
        zze = new k9c[]{k9cVar, k9cVar2, k9cVar3, k9cVar4};
    }

    public static k9c[] values() {
        return (k9c[]) zze.clone();
    }
}
