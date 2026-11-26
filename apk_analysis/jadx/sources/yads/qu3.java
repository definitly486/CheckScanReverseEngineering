package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class qu3 extends IOException {
    public qu3(Throwable th) {
        super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
    }
}
