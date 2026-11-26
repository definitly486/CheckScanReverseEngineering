package defpackage;

import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class ig1 extends EntityDeleteOrUpdateAdapter<kg1> {
    @Override // androidx.room.EntityDeleteOrUpdateAdapter
    public final void bind(SQLiteStatement sQLiteStatement, kg1 kg1Var) {
        kg1 kg1Var2 = kg1Var;
        sQLiteStatement.mo9363bindLong(1, kg1Var2.a);
        String str = kg1Var2.b;
        if (str == null) {
            sQLiteStatement.mo9364bindNull(2);
        } else {
            sQLiteStatement.mo9365bindText(2, str);
        }
        String str2 = kg1Var2.c;
        if (str2 == null) {
            sQLiteStatement.mo9364bindNull(3);
        } else {
            sQLiteStatement.mo9365bindText(3, str2);
        }
        String str3 = kg1Var2.d;
        if (str3 == null) {
            sQLiteStatement.mo9364bindNull(4);
        } else {
            sQLiteStatement.mo9365bindText(4, str3);
        }
        String str4 = kg1Var2.e;
        if (str4 == null) {
            sQLiteStatement.mo9364bindNull(5);
        } else {
            sQLiteStatement.mo9365bindText(5, str4);
        }
        if (str == null) {
            sQLiteStatement.mo9364bindNull(6);
        } else {
            sQLiteStatement.mo9365bindText(6, str);
        }
    }

    @Override // androidx.room.EntityDeleteOrUpdateAdapter
    public final String createQuery() {
        return "UPDATE OR REPLACE `cheque_requests` SET `id` = ?,`qrCode` = ?,`status` = ?,`requestJson` = ?,`responseJson` = ? WHERE `qrCode` = ?";
    }
}
