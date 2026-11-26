package androidx.room.util;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.PooledConnection;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import defpackage.o22;
import defpackage.ul2;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class DBUtil {
    @ul2
    public static final CancellationSignal createCancellationSignal() {
        return DBUtil__DBUtil_androidKt.createCancellationSignal();
    }

    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        DBUtil__DBUtilKt.dropFtsSyncTriggers(sQLiteConnection);
    }

    public static final void foreignKeyCheck(SQLiteConnection sQLiteConnection, String str) {
        DBUtil__DBUtilKt.foreignKeyCheck(sQLiteConnection, str);
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, e02<? super o22> e02Var) {
        return DBUtil__DBUtil_androidKt.getCoroutineContext(roomDatabase, z, e02Var);
    }

    public static final <R> Object internalPerform(RoomDatabase roomDatabase, boolean z, boolean z2, bm3<? super PooledConnection, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return DBUtil__DBUtilKt.internalPerform(roomDatabase, z, z2, bm3Var, e02Var);
    }

    public static final <R> R performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var) {
        return (R) DBUtil__DBUtil_androidKt.performBlocking(roomDatabase, z, z2, nl3Var);
    }

    public static final <R> Object performInTransactionSuspending(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return DBUtil__DBUtil_androidKt.performInTransactionSuspending(roomDatabase, nl3Var, e02Var);
    }

    public static final <R> Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var, e02<? super R> e02Var) {
        return DBUtil__DBUtil_androidKt.performSuspending(roomDatabase, z, z2, nl3Var, e02Var);
    }

    @ul2
    public static final Cursor query(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z) {
        return DBUtil__DBUtil_androidKt.query(roomDatabase, supportSQLiteQuery, z);
    }

    public static final int readVersion(File file) {
        return DBUtil__DBUtil_androidKt.readVersion(file);
    }

    public static final SQLiteConnection toSQLiteConnection(SupportSQLiteDatabase supportSQLiteDatabase) {
        return DBUtil__DBUtil_androidKt.toSQLiteConnection(supportSQLiteDatabase);
    }

    @ul2
    public static final void dropFtsSyncTriggers(SupportSQLiteDatabase supportSQLiteDatabase) {
        DBUtil__DBUtil_androidKt.dropFtsSyncTriggers(supportSQLiteDatabase);
    }

    public static final void foreignKeyCheck(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        DBUtil__DBUtil_androidKt.foreignKeyCheck(supportSQLiteDatabase, str);
    }

    public static final Cursor query(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z, CancellationSignal cancellationSignal) {
        return DBUtil__DBUtil_androidKt.query(roomDatabase, supportSQLiteQuery, z, cancellationSignal);
    }
}
