package defpackage;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import ru.rustore.sdk.metrics.MetricsException;

/* JADX INFO: loaded from: classes2.dex */
public final class nz3 {
    public final h4a a;
    public final fh8 b = new fh8(new av2(this));

    public nz3(h4a h4aVar, ql9.a aVar) {
        this.a = h4aVar;
    }

    public final void a(ArrayList arrayList) {
        fh8 fh8Var = this.b;
        String strA0 = qn1.a0(arrayList, null, null, null, 0, fn3.f, 31);
        String strI = na8.i("\n            DELETE FROM metrics_event_table\n            WHERE _id IN (\n                SELECT _id FROM metrics_event_table\n                WHERE uuid IN (" + strA0 + ")\n            )\n        ");
        try {
            ((SQLiteDatabase) fh8Var.getValue()).beginTransactionNonExclusive();
            ((SQLiteDatabase) fh8Var.getValue()).execSQL(strI);
            ((SQLiteDatabase) fh8Var.getValue()).setTransactionSuccessful();
            ((SQLiteDatabase) fh8Var.getValue()).endTransaction();
            new d53(strA0);
        } catch (Throwable th) {
            try {
                throw new MetricsException.MetricsDbError("Interaction with database failed", th);
            } catch (Throwable th2) {
                ((SQLiteDatabase) fh8Var.getValue()).endTransaction();
                throw th2;
            }
        }
    }
}
