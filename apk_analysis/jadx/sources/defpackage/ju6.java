package defpackage;

import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class ju6 extends EntityDeleteOrUpdateAdapter<rt6> {
    @Override // androidx.room.EntityDeleteOrUpdateAdapter
    public final void bind(SQLiteStatement sQLiteStatement, rt6 rt6Var) {
        rt6 rt6Var2 = rt6Var;
        sQLiteStatement.mo9363bindLong(1, rt6Var2.a);
        sQLiteStatement.mo9365bindText(2, ku6.j(rt6Var2.b));
        sQLiteStatement.mo9363bindLong(3, rt6Var2.c ? 1L : 0L);
        String str = rt6Var2.d;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(4);
        } else {
            sQLiteStatement.mo9365bindText(4, str);
        }
        sQLiteStatement.mo9363bindLong(5, rt6Var2.e);
        String str2 = rt6Var2.f;
        if (str2 == null) {
            sQLiteStatement.mo9364bindNull(6);
        } else {
            sQLiteStatement.mo9365bindText(6, str2);
        }
        String str3 = rt6Var2.g;
        if (str3 == null) {
            sQLiteStatement.mo9364bindNull(7);
        } else {
            sQLiteStatement.mo9365bindText(7, str3);
        }
        String str4 = rt6Var2.h;
        if (str4 == null) {
            sQLiteStatement.mo9364bindNull(8);
        } else {
            sQLiteStatement.mo9365bindText(8, str4);
        }
        sQLiteStatement.mo9365bindText(9, ku6.i(rt6Var2.i));
        sQLiteStatement.mo9363bindLong(10, 0L);
        sQLiteStatement.mo9363bindLong(11, rt6Var2.a);
    }

    @Override // androidx.room.EntityDeleteOrUpdateAdapter
    public final String createQuery() {
        return "UPDATE OR REPLACE `purchases_table` SET `id` = ?,`type` = ?,`advance_available` = ?,`campaign_icon_url` = ?,`cashback_value` = ?,`title` = ?,`text` = ?,`image_guide_text` = ?,`status` = ?,`next_show_time` = ? WHERE `id` = ?";
    }
}
