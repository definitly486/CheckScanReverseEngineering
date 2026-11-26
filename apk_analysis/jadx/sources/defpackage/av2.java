package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final class av2 extends gh4 implements ll3<SQLiteDatabase> {
    public final /* synthetic */ nz3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public av2(nz3 nz3Var) {
        super(0);
        this.f = nz3Var;
    }

    @Override // defpackage.ll3
    public final SQLiteDatabase invoke() {
        SQLiteDatabase writableDatabase = this.f.a.getWritableDatabase();
        writableDatabase.enableWriteAheadLogging();
        return writableDatabase;
    }
}
