package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class xlb implements Executor {
    public static final xlb zza;
    private static final /* synthetic */ xlb[] zzb;

    static {
        xlb xlbVar = new xlb("INSTANCE", 0);
        zza = xlbVar;
        zzb = new xlb[]{xlbVar};
    }

    public static xlb[] values() {
        return (xlb[]) zzb.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        ly4.a().a.post(runnable);
    }
}
