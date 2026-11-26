package defpackage;

import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;
import yads.c62;
import yads.m62;
import yads.y52;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ux implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ ux(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.delete$lambda$5((String) obj4, (String) obj3, (Object[]) obj2, (SupportSQLiteDatabase) obj));
            default:
                return c62.a((m62) obj4, (c62) obj3, (y52) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
