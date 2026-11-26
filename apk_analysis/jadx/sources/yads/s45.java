package yads;

import android.database.Cursor;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o7;
import defpackage.ws6;
import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
public final class s45 implements Closeable {
    public final ll3 b;
    public final ws6 c;
    public Cursor d;

    public s45(ws6 ws6Var) {
        this.b = new o7(1);
        this.c = ws6Var;
    }

    public static final j59 a() {
        return j59.a;
    }

    public final Cursor c() {
        if (this.d != null) {
            defpackage.n7.g("Cursor should be called only once");
            return null;
        }
        Cursor cursor = (Cursor) this.c.get();
        this.d = cursor;
        return cursor;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Cursor cursor = this.d;
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
        this.b.invoke();
    }

    public s45(ll3 ll3Var, ws6 ws6Var) {
        this.b = ll3Var;
        this.c = ws6Var;
    }
}
