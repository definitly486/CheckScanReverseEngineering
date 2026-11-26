package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class r9b implements Executor {
    public static final r9b zza;
    private static final /* synthetic */ r9b[] zzb;

    static {
        r9b r9bVar = new r9b("INSTANCE", 0);
        zza = r9bVar;
        zzb = new r9b[]{r9bVar};
    }

    public static r9b[] values() {
        return (r9b[]) zzb.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
