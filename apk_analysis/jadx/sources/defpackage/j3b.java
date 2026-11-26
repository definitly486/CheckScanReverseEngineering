package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class j3b implements Executor {
    public static final j3b zza;
    private static final /* synthetic */ j3b[] zzb;

    static {
        j3b j3bVar = new j3b("INSTANCE", 0);
        zza = j3bVar;
        zzb = new j3b[]{j3bVar};
    }

    public static j3b[] values() {
        return (j3b[]) zzb.clone();
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
