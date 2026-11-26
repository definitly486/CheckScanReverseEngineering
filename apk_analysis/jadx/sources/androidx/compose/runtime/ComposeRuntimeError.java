package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeRuntimeError extends IllegalStateException {
    public static final int $stable = 8;
    private final String message;

    public ComposeRuntimeError(String str) {
        this.message = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
