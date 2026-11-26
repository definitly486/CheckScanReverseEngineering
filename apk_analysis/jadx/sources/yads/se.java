package yads;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes6.dex */
public final class se extends SQLiteOpenHelper {
    public final /* synthetic */ c42 b;
    public final /* synthetic */ we c;
    public final /* synthetic */ d42 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public se(Context context, String str, int i, c42 c42Var, we weVar, d42 d42Var) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.b = c42Var;
        this.c = weVar;
        this.d = d42Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        c42 c42Var = this.b;
        te teVarA = this.c.a(sQLiteDatabase);
        c42Var.a.getClass();
        e42.a(teVarA);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        d42 d42Var = this.d;
        te teVarA = this.c.a(sQLiteDatabase);
        e42 e42Var = d42Var.a;
        e42Var.getClass();
        if (i == 3) {
            return;
        }
        v84 v84Var = (v84) e42Var.d.get(new defpackage.b36(Integer.valueOf(i), Integer.valueOf(i2)));
        if (v84Var == null) {
            v84Var = e42Var.e;
        }
        try {
            v84Var.a(teVarA);
        } catch (SQLException unused) {
            e42Var.e.a(teVarA);
        }
    }
}
