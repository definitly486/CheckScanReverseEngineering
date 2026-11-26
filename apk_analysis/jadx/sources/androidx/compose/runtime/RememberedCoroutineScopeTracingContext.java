package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
final class RememberedCoroutineScopeTracingContext extends TracingContext {
    public static final RememberedCoroutineScopeTracingContext INSTANCE = new RememberedCoroutineScopeTracingContext();

    private RememberedCoroutineScopeTracingContext() {
        super("Compose:coroutineScope");
    }
}
