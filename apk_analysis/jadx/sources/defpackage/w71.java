package defpackage;

import androidx.room.EntityInsertAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class w71 extends EntityInsertAdapter<n81> {
    @Override // androidx.room.EntityInsertAdapter
    public final void bind(SQLiteStatement sQLiteStatement, n81 n81Var) {
        n81 n81Var2 = n81Var;
        sQLiteStatement.mo9363bindLong(1, n81Var2.a);
        String str = n81Var2.b;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(2);
        } else {
            sQLiteStatement.mo9365bindText(2, str);
        }
    }

    @Override // androidx.room.EntityInsertAdapter
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `product_categories` (`id`,`name`) VALUES (?,?)";
    }
}
