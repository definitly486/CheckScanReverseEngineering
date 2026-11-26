package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class y96 {
    public static z96 a(fn2 fn2Var) {
        String message = fn2Var.getMessage();
        if (message == null) {
            message = "Ad request completed successfully, but there are no ads available.";
        }
        return new z96(message);
    }

    public static z96 b() {
        return new z96("Server temporarily unavailable. Please, try again later.");
    }

    public static z96 b(String str) {
        return new z96(str);
    }

    public static z96 a() {
        return new z96("Internal error. Failed to parse response");
    }

    public static z96 a(String str) {
        if (str == null) {
            str = "Ad request failed with network error";
        }
        return new z96(str);
    }
}
