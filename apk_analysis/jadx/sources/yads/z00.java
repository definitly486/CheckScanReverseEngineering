package yads;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import defpackage.ws6;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import yads.z00;

/* JADX INFO: loaded from: classes6.dex */
public final class z00 implements Closeable {
    public final te b;
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();

    public z00(te teVar) {
        this.b = teVar;
    }

    public final SQLiteStatement a(String str) {
        SQLiteStatement sQLiteStatementCompileStatement = this.b.b.compileStatement(str);
        this.c.add(sQLiteStatementCompileStatement);
        return sQLiteStatementCompileStatement;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            up5.a((SQLiteStatement) it.next());
        }
        this.c.clear();
        for (Cursor cursor : this.d) {
            if (!cursor.isClosed()) {
                up5.a(cursor);
            }
        }
        this.d.clear();
    }

    public final s45 a(final String str, final String... strArr) {
        return new s45(new ws6() { // from class: eia
            @Override // defpackage.ws6
            public final Object get() {
                return z00.a(this.a, str, strArr);
            }
        });
    }

    public static final Cursor a(z00 z00Var, String str, String[] strArr) {
        Cursor cursorRawQuery = z00Var.b.b.rawQuery(str, strArr);
        z00Var.d.add(cursorRawQuery);
        return cursorRawQuery;
    }
}
