package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
final class ParseException extends Exception {
    private final String message;

    public ParseException(String str) {
        super(str);
        this.message = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
