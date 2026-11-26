package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class MigrationKt {
    public static final Migration Migration(int i, int i2, nl3<? super SupportSQLiteDatabase, j59> nl3Var) {
        nl3Var.getClass();
        return new MigrationImpl(i, i2, nl3Var);
    }
}
