package defpackage;

import androidx.room.EntityInsertAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class hu6 extends EntityInsertAdapter<pt6> {
    @Override // androidx.room.EntityInsertAdapter
    public final void bind(SQLiteStatement sQLiteStatement, pt6 pt6Var) {
        pt6 pt6Var2 = pt6Var;
        sQLiteStatement.mo9363bindLong(1, pt6Var2.a);
        String str = pt6Var2.b;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(2);
        } else {
            sQLiteStatement.mo9365bindText(2, str);
        }
        String str2 = pt6Var2.c;
        if (str2 == null) {
            sQLiteStatement.mo9364bindNull(3);
        } else {
            sQLiteStatement.mo9365bindText(3, str2);
        }
    }

    @Override // androidx.room.EntityInsertAdapter
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `purchases_bank_info_table` (`purchase_id`,`bank_title`,`bak_text`) VALUES (?,?,?)";
    }
}
