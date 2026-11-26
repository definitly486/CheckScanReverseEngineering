package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class jn2 implements Executor {
    private static final /* synthetic */ jn2[] $VALUES;
    public static final jn2 INSTANCE;

    static {
        jn2 jn2Var = new jn2("INSTANCE", 0);
        INSTANCE = jn2Var;
        $VALUES = new jn2[]{jn2Var};
    }

    public jn2() {
        throw null;
    }

    public static jn2 valueOf(String str) {
        return (jn2) Enum.valueOf(jn2.class, str);
    }

    public static jn2[] values() {
        return (jn2[]) $VALUES.clone();
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
