package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class ycb implements Executor {
    public static final ycb zza;
    private static final /* synthetic */ ycb[] zzb;

    static {
        ycb ycbVar = new ycb("INSTANCE", 0);
        zza = ycbVar;
        zzb = new ycb[]{ycbVar};
    }

    public static ycb[] values() {
        return (ycb[]) zzb.clone();
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
