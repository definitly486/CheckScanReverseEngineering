package yads;

import android.database.Cursor;
import defpackage.ll3;
import java.io.Closeable;
import org.json.JSONObject;
import yads.b42;

/* JADX INFO: loaded from: classes6.dex */
public final class b42 implements k45, Closeable {
    public final Cursor b;
    public boolean c;
    public final String d;
    public final defpackage.cl4 e;

    public b42(final e42 e42Var, Cursor cursor) {
        this.b = cursor;
        e42Var.getClass();
        this.d = cursor.getString(e42.a(cursor, "raw_json_id"));
        this.e = defpackage.nm4.a(defpackage.po4.NONE, new ll3() { // from class: bo9
            @Override // defpackage.ll3
            public final Object invoke() {
                return b42.a(this.b, e42Var);
            }
        });
    }

    public static final JSONObject a(b42 b42Var, e42 e42Var) {
        if (b42Var.c) {
            defpackage.ah.f("Data no longer valid!");
            return null;
        }
        Cursor cursor = b42Var.b;
        e42Var.getClass();
        return e42.a(e42Var, cursor.getBlob(e42.a(cursor, "raw_json_data")));
    }

    @Override // yads.k45
    public final JSONObject c() {
        return (JSONObject) this.e.getValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.c = true;
    }

    @Override // yads.k45
    public final String a() {
        return this.d;
    }
}
