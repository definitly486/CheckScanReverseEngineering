package androidx.room;

import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.nl3;
import defpackage.ul2;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomDatabaseKt {
    public static final <R> Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt__RoomDatabase_androidKt.compatTransactionCoroutineExecute(roomDatabase, nl3Var, e02Var);
    }

    @ul2
    public static final hd3<Set<String>> invalidationTrackerFlow(RoomDatabase roomDatabase, String[] strArr, boolean z) {
        return RoomDatabaseKt__RoomDatabase_androidKt.invalidationTrackerFlow(roomDatabase, strArr, z);
    }

    public static final <R> Object useReaderConnection(RoomDatabase roomDatabase, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt__RoomDatabaseKt.useReaderConnection(roomDatabase, bm3Var, e02Var);
    }

    public static final <R> Object useWriterConnection(RoomDatabase roomDatabase, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt__RoomDatabaseKt.useWriterConnection(roomDatabase, bm3Var, e02Var);
    }

    public static final void validateAutoMigrations(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateAutoMigrations(roomDatabase, databaseConfiguration);
    }

    public static final void validateMigrationsNotRequired(Set<Integer> set, Set<Integer> set2) {
        RoomDatabaseKt__RoomDatabaseKt.validateMigrationsNotRequired(set, set2);
    }

    public static final void validateTypeConverters(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateTypeConverters(roomDatabase, databaseConfiguration);
    }

    public static final <R> Object withTransaction(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransaction(roomDatabase, nl3Var, e02Var);
    }

    public static final <R> Object withTransactionContext(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransactionContext(roomDatabase, nl3Var, e02Var);
    }
}
