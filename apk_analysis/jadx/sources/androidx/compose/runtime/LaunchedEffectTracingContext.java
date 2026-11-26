package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
final class LaunchedEffectTracingContext extends TracingContext {
    public static final LaunchedEffectTracingContext INSTANCE = new LaunchedEffectTracingContext();

    private LaunchedEffectTracingContext() {
        super("Compose:LaunchedEffect");
    }
}
