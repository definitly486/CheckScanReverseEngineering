package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class y74 {
    public static long a() {
        Runtime runtime = Runtime.getRuntime();
        return Runtime.getRuntime().maxMemory() - (runtime.totalMemory() - runtime.freeMemory());
    }
}
