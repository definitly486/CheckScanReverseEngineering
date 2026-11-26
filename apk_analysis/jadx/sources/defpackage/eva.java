package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class eva implements Executor {
    public static final eva zza;
    private static final /* synthetic */ eva[] zzb;

    static {
        eva evaVar = new eva("INSTANCE", 0);
        zza = evaVar;
        zzb = new eva[]{evaVar};
    }

    public static eva[] values() {
        return (eva[]) zzb.clone();
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
