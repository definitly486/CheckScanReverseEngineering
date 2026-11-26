package androidx.sqlite.driver;

import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import defpackage.c9;
import defpackage.jg;
import defpackage.me0;
import defpackage.ta8;

/* JADX INFO: loaded from: classes3.dex */
public final class SupportSQLiteDriver implements SQLiteDriver {
    private final SupportSQLiteOpenHelper openHelper;

    public SupportSQLiteDriver(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        supportSQLiteOpenHelper.getClass();
        this.openHelper = supportSQLiteOpenHelper;
    }

    public static /* synthetic */ void hasConnectionPool$annotations() {
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public SupportSQLiteConnection open(String str) {
        str.getClass();
        String databaseName = this.openHelper.getDatabaseName();
        if (databaseName == null) {
            if (!str.equals(":memory:")) {
                c9.f(me0.c("This driver is configured to open an in-memory database but a file-based named '", str, "' was requested."));
                return null;
            }
        } else if (!databaseName.equals(str) && !ta8.b0('/', databaseName, databaseName).equals(ta8.b0('/', str, str))) {
            jg.e("This driver is configured to open a database named '", this.openHelper.getDatabaseName(), "' but '", str, "' was requested.");
            return null;
        }
        return new SupportSQLiteConnection(this.openHelper.getWritableDatabase());
    }
}
