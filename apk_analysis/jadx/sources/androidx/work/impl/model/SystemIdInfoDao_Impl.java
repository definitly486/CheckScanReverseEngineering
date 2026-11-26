package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import defpackage.ih8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.us;
import defpackage.us2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<SystemIdInfo> __insertAdapterOfSystemIdInfo;

    public SystemIdInfoDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.__db = roomDatabase;
        this.__insertAdapterOfSystemIdInfo = new EntityInsertAdapter<SystemIdInfo>() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement sQLiteStatement, SystemIdInfo systemIdInfo) {
                sQLiteStatement.getClass();
                systemIdInfo.getClass();
                sQLiteStatement.mo9365bindText(1, systemIdInfo.workSpecId);
                sQLiteStatement.mo9363bindLong(2, systemIdInfo.getGeneration());
                sQLiteStatement.mo9363bindLong(3, systemIdInfo.systemId);
            }

            @Override // androidx.room.EntityInsertAdapter
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SystemIdInfo getSystemIdInfo$lambda$1(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.mo9363bindLong(2, i);
            return sQLiteStatementPrepare.step() ? new SystemIdInfo(sQLiteStatementPrepare.getText(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "work_spec_id")), (int) sQLiteStatementPrepare.getLong(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation")), (int) sQLiteStatementPrepare.getLong(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "system_id"))) : null;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIds$lambda$2(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertSystemIdInfo$lambda$0(SystemIdInfoDao_Impl systemIdInfoDao_Impl, SystemIdInfo systemIdInfo, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        systemIdInfoDao_Impl.__insertAdapterOfSystemIdInfo.insert(sQLiteConnection, systemIdInfo);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 removeSystemIdInfo$lambda$3(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.mo9363bindLong(2, i);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 removeSystemIdInfo$lambda$4(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(final String str, final int i) {
        str.getClass();
        return (SystemIdInfo) DBUtil.performBlocking(this.__db, true, false, new nl3() { // from class: jh8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.getSystemIdInfo$lambda$1("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", str, i, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List<String> getWorkSpecIds() {
        return (List) DBUtil.performBlocking(this.__db, true, false, new us2(6));
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(final SystemIdInfo systemIdInfo) {
        systemIdInfo.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: hh8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.insertSystemIdInfo$lambda$0(this.b, systemIdInfo, (SQLiteConnection) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new us(str, 3));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<ne4<?>> getRequiredConverters() {
            return kx2.b;
        }

        private Companion() {
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(String str, int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ih8(str, i));
    }
}
