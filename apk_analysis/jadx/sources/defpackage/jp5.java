package defpackage;

import androidx.room.EntityInsertAdapter;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes5.dex */
public final class jp5 extends EntityInsertAdapter<yo5> {
    @Override // androidx.room.EntityInsertAdapter
    public final void bind(SQLiteStatement sQLiteStatement, yo5 yo5Var) {
        yo5Var.getClass();
        sQLiteStatement.mo9363bindLong(1, 0L);
        sQLiteStatement.mo9364bindNull(2);
        sQLiteStatement.mo9364bindNull(3);
        sQLiteStatement.mo9363bindLong(4, 0L);
        sQLiteStatement.mo9363bindLong(5, 0L);
        sQLiteStatement.mo9363bindLong(6, 0L);
        sQLiteStatement.mo9364bindNull(7);
        sQLiteStatement.mo9364bindNull(8);
        sQLiteStatement.mo9364bindNull(9);
        sQLiteStatement.mo9364bindNull(10);
        sQLiteStatement.mo9364bindNull(11);
        sQLiteStatement.mo9364bindNull(12);
        sQLiteStatement.mo9364bindNull(13);
        sQLiteStatement.mo9364bindNull(14);
        sQLiteStatement.mo9364bindNull(15);
        sQLiteStatement.mo9364bindNull(16);
    }

    @Override // androidx.room.EntityInsertAdapter
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `notifications` (`id`,`title`,`body`,`date`,`isRead`,`agreementRequired`,`deeplink`,`buttonDeeplink`,`buttonTitle`,`logoUrl`,`ordInfoPromotion`,`ordPromotionText`,`ordToken`,`ordTitle`,`ordText`,`aspectRatio`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }
}
