package yads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class we {
    public final ue a;
    public final Object b = new Object();
    public final HashMap c = new HashMap();

    public we(Context context, String str, int i, c42 c42Var, d42 d42Var) {
        this.a = new ue(new se(context, str, i, c42Var, this, d42Var));
    }

    public final te a(SQLiteDatabase sQLiteDatabase) {
        synchronized (this.b) {
            if (((ve) this.c.get(sQLiteDatabase)) == null) {
                this.c.put(sQLiteDatabase, new ve());
            }
        }
        return new te(this, sQLiteDatabase);
    }
}
