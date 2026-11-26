package defpackage;

import androidx.room.EntityInsertAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class gu6 extends EntityInsertAdapter<wt6> {
    @Override // androidx.room.EntityInsertAdapter
    public final void bind(SQLiteStatement sQLiteStatement, wt6 wt6Var) {
        wt6 wt6Var2 = wt6Var;
        sQLiteStatement.mo9363bindLong(1, wt6Var2.a);
        String str = wt6Var2.b;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(2);
        } else {
            sQLiteStatement.mo9365bindText(2, str);
        }
        String str2 = wt6Var2.c;
        if (str2 == null) {
            sQLiteStatement.mo9364bindNull(3);
        } else {
            sQLiteStatement.mo9365bindText(3, str2);
        }
        String str3 = wt6Var2.d;
        if (str3 == null) {
            sQLiteStatement.mo9364bindNull(4);
        } else {
            sQLiteStatement.mo9365bindText(4, str3);
        }
    }

    @Override // androidx.room.EntityInsertAdapter
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `purchases_submit_table` (`purchase_id`,`submit_title`,`submit_text`,`submit_button_text`) VALUES (?,?,?,?)";
    }
}
