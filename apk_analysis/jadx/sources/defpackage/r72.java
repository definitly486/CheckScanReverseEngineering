package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r72 implements Closeable {
    public ws6<Executor> b;
    public e64 c;
    public ws6 d;
    public ye7 e;
    public ws6<String> f;
    public ws6<u97> g;
    public ws6<d39> h;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.g.get().close();
    }
}
