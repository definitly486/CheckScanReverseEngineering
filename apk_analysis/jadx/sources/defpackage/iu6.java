package defpackage;

import androidx.room.EntityInsertAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class iu6 extends EntityInsertAdapter<tt6> {
    @Override // androidx.room.EntityInsertAdapter
    public final void bind(SQLiteStatement sQLiteStatement, tt6 tt6Var) {
        tt6 tt6Var2 = tt6Var;
        sQLiteStatement.mo9363bindLong(1, tt6Var2.a);
        String str = tt6Var2.b;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(2);
        } else {
            sQLiteStatement.mo9365bindText(2, str);
        }
        String str2 = tt6Var2.c;
        if (str2 == null) {
            sQLiteStatement.mo9364bindNull(3);
        } else {
            sQLiteStatement.mo9365bindText(3, str2);
        }
        String str3 = tt6Var2.d;
        if (str3 == null) {
            sQLiteStatement.mo9364bindNull(4);
        } else {
            sQLiteStatement.mo9365bindText(4, str3);
        }
    }

    @Override // androidx.room.EntityInsertAdapter
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `purchases_shop_info_table` (`purchase_id`,`shop_title`,`shop_text`,`example_image_url`) VALUES (?,?,?,?)";
    }
}
