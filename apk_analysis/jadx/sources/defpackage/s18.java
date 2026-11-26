package defpackage;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: loaded from: classes5.dex */
public interface s18 extends Closeable, Flushable {
    void H(bu0 bu0Var, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    wv8 r();
}
