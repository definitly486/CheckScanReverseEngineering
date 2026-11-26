package yads;

import android.database.Cursor;
import defpackage.j59;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class wq5 implements tq5 {
    @Override // yads.tq5
    public final void a(z00 z00Var) throws IOException {
        ArrayList arrayList = new ArrayList();
        s45 s45VarA = z00Var.a("SELECT name FROM sqlite_master WHERE type='table'", new String[0]);
        try {
            Cursor cursorC = s45VarA.c();
            if (!cursorC.moveToFirst()) {
                s45VarA.close();
                return;
            }
            do {
                arrayList.add(cursorC.getString(cursorC.getColumnIndexOrThrow("name")));
            } while (cursorC.moveToNext());
            j59 j59Var = j59.a;
            s45VarA.close();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                z00Var.a("DROP TABLE IF EXISTS " + ((String) it.next())).execute();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                defpackage.m96.c(s45VarA, th);
                throw th2;
            }
        }
    }

    public final String toString() {
        return "Drop all database tables";
    }
}
