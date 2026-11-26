package androidx.sqlite;

import defpackage.oo5;

/* JADX INFO: loaded from: classes3.dex */
public interface SQLiteConnection extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    default boolean inTransaction() {
        throw new oo5(this + " does not implement inTransaction().");
    }

    SQLiteStatement prepare(String str);
}
