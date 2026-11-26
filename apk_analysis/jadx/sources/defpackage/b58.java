package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class b58 implements AutoCloseable {
    public final wu0 b;

    public final j59 a(bu0 bu0Var) {
        this.b.o0(bu0Var);
        return j59.a;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b58) {
            return this.b.equals(((b58) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "SourceResponseBody(source=" + this.b + ")";
    }
}
