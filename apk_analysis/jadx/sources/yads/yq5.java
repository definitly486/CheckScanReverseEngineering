package yads;

import android.database.sqlite.SQLiteStatement;
import defpackage.nl3;
import defpackage.wga;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yq5 implements tq5 {
    public final defpackage.cl4 a;
    public final /* synthetic */ List b;
    public final /* synthetic */ nl3 c;

    public yq5(List list, nl3 nl3Var) {
        this.b = list;
        this.c = nl3Var;
        this.a = defpackage.nm4.a(defpackage.po4.NONE, new wga(list, 1));
    }

    @Override // yads.tq5
    public final void a(z00 z00Var) {
        ArrayList arrayList = new ArrayList();
        SQLiteStatement sQLiteStatementA = z00Var.a("INSERT OR REPLACE INTO raw_json VALUES (?, ?)");
        for (k45 k45Var : this.b) {
            sQLiteStatementA.bindString(1, k45Var.a());
            byte[] bytes = k45Var.c().toString().getBytes(defpackage.ha1.b);
            bytes.getClass();
            sQLiteStatementA.bindBlob(2, bytes);
            long jExecuteInsert = sQLiteStatementA.executeInsert();
            Long lValueOf = Long.valueOf(jExecuteInsert);
            if (jExecuteInsert >= 0) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                arrayList.add(k45Var.a());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.c.invoke(arrayList);
    }

    public final String toString() {
        return defpackage.me0.c("Replace raw jsons (", (String) this.a.getValue(), ")");
    }

    public static final String a(List list) {
        return defpackage.qn1.a0(list, null, null, null, 0, new defpackage.sy2(10), 31);
    }

    public static final CharSequence a(k45 k45Var) {
        return k45Var.a();
    }
}
