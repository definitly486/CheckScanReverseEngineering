package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class rpa {
    public static final rpa zza;
    public static final rpa zzb;
    public static final rpa zzc;
    public static final rpa zzd;
    private static final /* synthetic */ rpa[] zze;

    static {
        rpa rpaVar = new rpa("BOOLEAN", 0);
        zza = rpaVar;
        rpa rpaVar2 = new rpa("STRING", 1);
        zzb = rpaVar2;
        rpa rpaVar3 = new rpa("LONG", 2);
        zzc = rpaVar3;
        rpa rpaVar4 = new rpa("DOUBLE", 3);
        zzd = rpaVar4;
        zze = new rpa[]{rpaVar, rpaVar2, rpaVar3, rpaVar4};
    }

    public static /* synthetic */ rpa a(Object obj) {
        if (obj instanceof String) {
            return zzb;
        }
        if (obj instanceof Boolean) {
            return zza;
        }
        if (obj instanceof Long) {
            return zzc;
        }
        if (obj instanceof Double) {
            return zzd;
        }
        xg.d("invalid tag type: ".concat(String.valueOf(obj.getClass())));
        return null;
    }

    public static rpa[] values() {
        return (rpa[]) zze.clone();
    }
}
