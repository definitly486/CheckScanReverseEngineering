package androidx.room;

import androidx.sqlite.SQLiteStatement;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.v71;
import defpackage.zu5;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomRawQuery {
    private final nl3<SQLiteStatement, j59> bindingFunction;
    private final String sql;

    public RoomRawQuery(String str, nl3<? super SQLiteStatement, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        this.sql = str;
        this.bindingFunction = new zu5(nl3Var, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(SQLiteStatement sQLiteStatement) {
        sQLiteStatement.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 bindingFunction$lambda$1(nl3 nl3Var, SQLiteStatement sQLiteStatement) {
        sQLiteStatement.getClass();
        nl3Var.invoke(new BindOnlySQLiteStatement(sQLiteStatement));
        return j59.a;
    }

    public final nl3<SQLiteStatement, j59> getBindingFunction() {
        return this.bindingFunction;
    }

    public final String getSql() {
        return this.sql;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomRawQuery(String str) {
        this(str, null, 2, 0 == true ? 1 : 0);
        str.getClass();
    }

    public /* synthetic */ RoomRawQuery(String str, nl3 nl3Var, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? new v71(5) : nl3Var);
    }
}
