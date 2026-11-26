package yads;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import defpackage.j59;
import defpackage.jr8;
import defpackage.nl3;
import defpackage.ws6;
import defpackage.zt9;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import yads.e42;
import yads.s45;
import yads.te;

/* JADX INFO: loaded from: classes6.dex */
public final class e42 {
    public final we a;
    public final uq5 b;
    public final ol5 c;
    public final Map d;
    public final v84 e;

    public e42(Context context, dd0 dd0Var) {
        c42 c42Var = new c42(this);
        d42 d42Var = new d42(this);
        ((defpackage.js2) dd0Var).getClass();
        this.a = x32.a(context, "div-storage.db", 3, c42Var, d42Var);
        uq5 uq5Var = new uq5(new defpackage.rg0(this, 4));
        this.b = uq5Var;
        this.c = new ol5(uq5Var);
        Map mapSingletonMap = Collections.singletonMap(new defpackage.b36(2, 3), new zt9());
        mapSingletonMap.getClass();
        this.d = mapSingletonMap;
        this.e = new v84() { // from class: au9
            @Override // yads.v84
            public final void a(te teVar) {
                e42.a(this.a, teVar);
            }
        };
    }

    public static final te c(te teVar) {
        return teVar;
    }

    public static final void d(te teVar) {
        try {
            teVar.b.execSQL("\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)");
        } catch (SQLException e) {
            throw new SQLException("Create \"raw_json\" table", e);
        }
    }

    public static final j59 e(te teVar) {
        up5.a((Closeable) teVar);
        return j59.a;
    }

    public final ArrayList a(Set set) throws IOException {
        ArrayList arrayList = new ArrayList(set.size());
        s45 s45VarB = b(new jr8(set, 2));
        try {
            Cursor cursorC = s45VarB.c();
            if (cursorC.getCount() != 0 && cursorC.moveToFirst()) {
                do {
                    b42 b42Var = new b42(this, cursorC);
                    arrayList.add(new j45(b42Var.d, (JSONObject) b42Var.e.getValue()));
                    b42Var.c = true;
                } while (cursorC.moveToNext());
            }
            j59 j59Var = j59.a;
            s45VarB.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                defpackage.m96.c(s45VarB, th);
                throw th2;
            }
        }
    }

    public final s45 b(final nl3 nl3Var) {
        SQLiteDatabase sQLiteDatabase;
        we weVar = this.a;
        ue ueVar = weVar.a;
        synchronized (ueVar) {
            ueVar.d = ueVar.a.getReadableDatabase();
            ueVar.c++;
            ueVar.b.add(Thread.currentThread());
            sQLiteDatabase = ueVar.d;
            sQLiteDatabase.getClass();
        }
        final te teVarA = weVar.a(sQLiteDatabase);
        return new s45(new defpackage.ny4(teVarA, 3), new ws6() { // from class: cu9
            @Override // defpackage.ws6
            public final Object get() {
                return e42.a(teVarA, nl3Var);
            }
        });
    }

    public final w32 b(Set set) throws IOException {
        List listA;
        String str = "Read raw jsons with ids: " + set;
        ArrayList arrayList = new ArrayList();
        try {
            listA = a(set);
        } catch (SQLException e) {
            arrayList.add(a(e, str));
            listA = defpackage.kx2.b;
        } catch (IllegalStateException e2) {
            arrayList.add(a(e2, str));
            listA = defpackage.kx2.b;
        }
        return new w32(listA, arrayList);
    }

    public static void b(te teVar) {
        new uq5(new defpackage.a43(teVar, 3)).a(new wq5());
    }

    public static final void a(e42 e42Var, te teVar) {
        e42Var.getClass();
        b(teVar);
        a(teVar);
    }

    public static void a(te teVar) {
        try {
            teVar.b.execSQL("\n    CREATE TABLE IF NOT EXISTS cards(\n    layout_id TEXT NOT NULL PRIMARY KEY,\n    card_data BLOB NULLABLE,\n    metadata BLOB NULLABLE,\n    group_id TEXT NOT NULL)");
            teVar.b.execSQL("\n    CREATE TABLE IF NOT EXISTS template_references(\n    group_id TEXT NOT NULL,\n    template_id TEXT NOT NULL,\n    template_hash TEXT NOT NULL,\n    PRIMARY KEY(group_id, template_id))");
            teVar.b.execSQL("\n    CREATE TABLE IF NOT EXISTS templates(\n    template_hash TEXT NOT NULL PRIMARY KEY,\n    template_data BLOB NULLABLE)");
            teVar.b.execSQL("\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)");
        } catch (SQLException e) {
            throw new SQLException("Create tables", e);
        }
    }

    public static final te a(e42 e42Var) {
        SQLiteDatabase sQLiteDatabase;
        we weVar = e42Var.a;
        ue ueVar = weVar.a;
        synchronized (ueVar) {
            ueVar.g = ueVar.a.getWritableDatabase();
            ueVar.f++;
            ueVar.e.add(Thread.currentThread());
            sQLiteDatabase = ueVar.g;
            sQLiteDatabase.getClass();
        }
        return weVar.a(sQLiteDatabase);
    }

    public static final Cursor a(Set set, te teVar) {
        return teVar.a(defpackage.bj.c("\n    SELECT raw_json_id, raw_json_data\n    FROM raw_json\n    WHERE raw_json_id IN\n ", a42.a(set)), new String[0]);
    }

    public final LinkedHashSet a(final nl3 nl3Var) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.b.a(new xq5(new nl3() { // from class: bu9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return e42.a(this.b, nl3Var, linkedHashSet, (s45) obj);
            }
        }));
        return linkedHashSet;
    }

    public static final j59 a(e42 e42Var, nl3 nl3Var, Set set, s45 s45Var) {
        Cursor cursorC = s45Var.c();
        if (cursorC.getCount() != 0 && cursorC.moveToFirst()) {
            do {
                b42 b42Var = new b42(e42Var, cursorC);
                if (((Boolean) nl3Var.invoke(b42Var)).booleanValue()) {
                    set.add(b42Var.d);
                }
                b42Var.c = true;
            } while (cursorC.moveToNext());
            return j59.a;
        }
        return j59.a;
    }

    public static z32 a(RuntimeException runtimeException, String str) {
        return new z32(runtimeException, defpackage.bj.c("Unexpected exception on database access: ", str));
    }

    public static final Cursor a(te teVar, nl3 nl3Var) {
        return (Cursor) nl3Var.invoke(teVar);
    }

    public static int a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        defpackage.ah.f(defpackage.me0.c("Column '", str, "' not found in cursor"));
        return 0;
    }

    public static final JSONObject a(e42 e42Var, byte[] bArr) {
        return new JSONObject(new String(bArr, StandardCharsets.UTF_8));
    }
}
