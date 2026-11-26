package com.warefly.checkscan.data.db;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.warefly.checkscan.CheckScanApplication;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.ip5;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.r71;
import defpackage.wf1;
import defpackage.zt6;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CheckscanDatabase extends RoomDatabase {
    public static final fh8 a = nm4.b(g.f);
    public static final a b = new a(1, 2);
    public static final b c = new b(2, 3);
    public static final c d = new c(3, 4);
    public static final d e = new d(4, 5);
    public static final e f = new e(8, 9);
    public static final f g = new f(9, 10);

    public static final class a extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `geofence_zones` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `lat` REAL NOT NULL, `lon` REAL NOT NULL)");
            supportSQLiteDatabase.execSQL("CREATE UNIQUE INDEX `index_geofence_zones_lat_lon` ON `geofence_zones` (`lat`, `lon`)");
        }
    }

    public static final class b extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("\n                    CREATE TABLE IF NOT EXISTS `cheque_requests_copy` (\n                        `id` INTEGER NOT NULL, \n                        `qrCode` TEXT NOT NULL, \n                        `status` TEXT NOT NULL, \n                        `requestJson` TEXT NOT NULL, \n                        `responseJson` TEXT, \n                        PRIMARY KEY(`qrCode`)\n                    )\n                    ");
            supportSQLiteDatabase.execSQL(" \n                    INSERT INTO cheque_requests_copy (id, qrCode, status, requestJson, responseJson) \n                    SELECT id, qrCode, status, requestJson, responseJson FROM cheque_requests\n                    ");
            supportSQLiteDatabase.execSQL("DROP TABLE cheque_requests");
            supportSQLiteDatabase.execSQL("ALTER TABLE cheque_requests_copy RENAME TO cheque_requests");
        }
    }

    public static final class c extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("\n                    CREATE TABLE IF NOT EXISTS `notifications` (\n                        `id` INTEGER NOT NULL, \n                        `title` TEXT NOT NULL,\n                        `body` TEXT NOT NULL,\n                        `date` INTEGER NOT NULL,\n                        `deeplink` TEXT,\n                        `isRead` INTEGER NOT NULL,\n                        PRIMARY KEY(`id`)\n                    )\n                     ");
        }
    }

    public static final class d extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("ALTER TABLE `notifications` ADD COLUMN `agreementRequired` INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class e extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN buttonTitle TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN buttonDeeplink TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN logoUrl TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN ordInfoPromotion INTEGER DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN ordPromotionText TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN ordToken TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN ordTitle TEXT DEFAULT NULL");
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN ordText TEXT DEFAULT NULL");
        }
    }

    public static final class f extends Migration {
        @Override // androidx.room.migration.Migration
        public final void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN aspectRatio FLOAT DEFAULT NULL");
        }
    }

    public static final class g extends gh4 implements ll3<CheckscanDatabase> {
        public static final g f = new g(0);

        @Override // defpackage.ll3
        public final CheckscanDatabase invoke() {
            fh8 fh8Var = CheckscanDatabase.a;
            Context context = CheckScanApplication.c;
            return (CheckscanDatabase) Room.databaseBuilder(CheckScanApplication.a.a(), CheckscanDatabase.class, "checkscan_db").addMigrations(CheckscanDatabase.b, CheckscanDatabase.c, CheckscanDatabase.d, CheckscanDatabase.e, CheckscanDatabase.f, CheckscanDatabase.g).build();
        }
    }

    public abstract r71 e();

    public abstract wf1 f();

    public abstract ip5 g();

    public abstract zt6 h();
}
