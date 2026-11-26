package androidx.room.util;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.media3.muxer.WebmConstants;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.driver.SupportSQLiteConnection;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.m96;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ul2;
import defpackage.y22;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class DBUtil__DBUtil_androidKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1, reason: invalid class name */
    @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1", f = "DBUtil.android.kt", l = {WebmConstants.MAX_META_SEEK_SIZE}, m = "invokeSuspend")
    public static final class AnonymousClass1<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ nl3<SQLiteConnection, R> $block;
        final /* synthetic */ o22 $context;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ boolean $isReadOnly;
        int label;

        /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1", f = "DBUtil.android.kt", l = {260}, m = "invokeSuspend")
        public static final class C01141 extends pg8 implements bm3<y22, e02<? super R>, Object> {
            final /* synthetic */ nl3<SQLiteConnection, R> $block;
            final /* synthetic */ RoomDatabase $db;
            final /* synthetic */ boolean $inTransaction;
            final /* synthetic */ boolean $isReadOnly;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C01141(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var, e02<? super C01141> e02Var) {
                super(2, e02Var);
                this.$db = roomDatabase;
                this.$inTransaction = z;
                this.$isReadOnly = z2;
                this.$block = nl3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C01141(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
                return ((C01141) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                boolean z = !(this.$db.inCompatibilityMode() && this.$db.inTransaction()) && this.$inTransaction;
                RoomDatabase roomDatabase = this.$db;
                boolean z2 = this.$isReadOnly;
                DBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1(z, z2, roomDatabase, null, this.$block);
                this.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z2, dBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1, this);
                return objUseConnection == a32Var ? a32Var : objUseConnection;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(o22 o22Var, RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$context = o22Var;
            this.$db = roomDatabase;
            this.$inTransaction = z;
            this.$isReadOnly = z2;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$context, this.$db, this.$inTransaction, this.$isReadOnly, this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            o22 o22Var = this.$context;
            C01141 c01141 = new C01141(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, null);
            this.label = 1;
            Object objD = av0.d(o22Var, c01141, this);
            return objD == a32Var ? a32Var : objD;
        }
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt", f = "DBUtil.android.kt", l = {97, 262, 264, 264}, m = "performInTransactionSuspending")
    public static final class C07451<R> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07451(e02<? super C07451> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DBUtil.performInTransactionSuspending(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2, reason: invalid class name */
    @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2", f = "DBUtil.android.kt", l = {260}, m = "invokeSuspend")
    public static final class AnonymousClass2<R> extends pg8 implements nl3<e02<? super R>, Object> {
        final /* synthetic */ nl3<e02<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $db;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$db = roomDatabase;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.$db, this.$block, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super R> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            RoomDatabase roomDatabase = this.$db;
            DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(true, false, roomDatabase, null, this.$block);
            this.label = 1;
            Object objUseConnection = roomDatabase.useConnection(false, dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1, this);
            return objUseConnection == a32Var ? a32Var : objUseConnection;
        }
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt", f = "DBUtil.android.kt", l = {262, 264, 264}, m = "performSuspending")
    public static final class C07461<R> extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public C07461(e02<? super C07461> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DBUtil.performSuspending(null, false, false, null, this);
        }
    }

    private static final <R> Object compatCoroutineExecute$DBUtil__DBUtil_androidKt(RoomDatabase roomDatabase, boolean z, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) ? nl3Var.invoke(e02Var) : av0.d((o22) DBUtil.getCoroutineContext(roomDatabase, z, e02Var), new DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(nl3Var, null), e02Var);
    }

    @ul2
    public static final CancellationSignal createCancellationSignal() {
        return new CancellationSignal();
    }

    @ul2
    public static final void dropFtsSyncTriggers(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        DBUtil.dropFtsSyncTriggers(new SupportSQLiteConnection(supportSQLiteDatabase));
    }

    public static final void foreignKeyCheck(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        supportSQLiteDatabase.getClass();
        str.getClass();
        DBUtil.foreignKeyCheck(new SupportSQLiteConnection(supportSQLiteDatabase), str);
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, e02<? super o22> e02Var) {
        TransactionElement transactionElement = (TransactionElement) e02Var.getContext().get(TransactionElement.Key);
        o22 transactionDispatcher$room_runtime = transactionElement != null ? transactionElement.getTransactionDispatcher$room_runtime() : null;
        if (roomDatabase.inCompatibilityMode()) {
            if (transactionDispatcher$room_runtime != null) {
                return roomDatabase.getQueryContext().plus(transactionDispatcher$room_runtime);
            }
            return z ? roomDatabase.getTransactionContext$room_runtime() : roomDatabase.getQueryContext();
        }
        o22 queryContext = roomDatabase.getQueryContext();
        if (transactionDispatcher$room_runtime == null) {
            transactionDispatcher$room_runtime = gx2.b;
        }
        return queryContext.plus(transactionDispatcher$room_runtime);
    }

    public static final <R> R performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var) {
        roomDatabase.getClass();
        nl3Var.getClass();
        roomDatabase.assertNotMainThread();
        roomDatabase.assertNotSuspendingTransaction();
        o22 o22Var = roomDatabase.getSuspendingTransactionContext().get();
        if (o22Var == null) {
            o22Var = gx2.b;
        }
        return (R) RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new AnonymousClass1(o22Var, roomDatabase, z2, z, nl3Var, null));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final <R> Object performInTransactionSuspending(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) throws Throwable {
        C07451 c07451;
        RoomDatabase roomDatabase2;
        nl3<? super e02<? super R>, ? extends Object> nl3Var2;
        if (e02Var instanceof C07451) {
            c07451 = (C07451) e02Var;
            int i = c07451.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07451.label = i - Integer.MIN_VALUE;
            } else {
                c07451 = new C07451(e02Var);
            }
        } else {
            c07451 = new C07451(e02Var);
        }
        C07451 c07452 = c07451;
        Object coroutineContext = c07452.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07452.label;
        if (i2 == 0) {
            r57.b(coroutineContext);
            if (roomDatabase.inCompatibilityMode()) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(roomDatabase, nl3Var, null);
                c07452.label = 1;
                Object objWithTransactionContext = RoomDatabaseKt.withTransactionContext(roomDatabase, anonymousClass2, c07452);
                if (objWithTransactionContext != a32Var) {
                    return objWithTransactionContext;
                }
            } else if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1(true, false, roomDatabase, null, nl3Var);
                c07452.label = 2;
                Object objUseConnection = roomDatabase.useConnection(false, dBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1, c07452);
                if (objUseConnection != a32Var) {
                    return objUseConnection;
                }
            } else {
                c07452.L$0 = roomDatabase;
                c07452.L$1 = nl3Var;
                c07452.label = 3;
                coroutineContext = DBUtil.getCoroutineContext(roomDatabase, true, c07452);
                if (coroutineContext != a32Var) {
                    roomDatabase2 = roomDatabase;
                    nl3Var2 = nl3Var;
                }
            }
        }
        if (i2 == 1) {
            r57.b(coroutineContext);
            return coroutineContext;
        }
        if (i2 == 2) {
            r57.b(coroutineContext);
            return coroutineContext;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                r57.b(coroutineContext);
                return coroutineContext;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        nl3Var2 = (nl3) c07452.L$1;
        roomDatabase2 = (RoomDatabase) c07452.L$0;
        r57.b(coroutineContext);
        DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, roomDatabase2, nl3Var2);
        c07452.L$0 = null;
        c07452.L$1 = null;
        c07452.label = 4;
        Object objD = av0.d((o22) coroutineContext, dBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, c07452);
        return objD == a32Var ? a32Var : objD;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public static final <R> Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, nl3<? super SQLiteConnection, ? extends R> nl3Var, e02<? super R> e02Var) throws Throwable {
        C07461 c07461;
        RoomDatabase roomDatabase2;
        boolean z3;
        nl3<? super SQLiteConnection, ? extends R> nl3Var2;
        if (e02Var instanceof C07461) {
            c07461 = (C07461) e02Var;
            int i = c07461.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07461.label = i - Integer.MIN_VALUE;
            } else {
                c07461 = new C07461(e02Var);
            }
        } else {
            c07461 = new C07461(e02Var);
        }
        C07461 c07462 = c07461;
        Object obj = c07462.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07462.label;
        if (i2 == 0) {
            r57.b(obj);
            if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(z2, z, roomDatabase, null, nl3Var);
                c07462.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, c07462);
                if (objUseConnection != a32Var) {
                    return objUseConnection;
                }
            } else {
                c07462.L$0 = roomDatabase;
                c07462.L$1 = nl3Var;
                c07462.Z$0 = z;
                c07462.Z$1 = z2;
                c07462.label = 2;
                Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z2, c07462);
                if (coroutineContext != a32Var) {
                    roomDatabase2 = roomDatabase;
                    obj = coroutineContext;
                    z3 = z2;
                    nl3Var2 = nl3Var;
                }
            }
        }
        if (i2 == 1) {
            r57.b(obj);
            return obj;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        boolean z4 = c07462.Z$1;
        z = c07462.Z$0;
        nl3<? super SQLiteConnection, ? extends R> nl3Var3 = (nl3) c07462.L$1;
        RoomDatabase roomDatabase3 = (RoomDatabase) c07462.L$0;
        r57.b(obj);
        z3 = z4;
        nl3Var2 = nl3Var3;
        roomDatabase2 = roomDatabase3;
        DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(null, roomDatabase2, z, z3, nl3Var2);
        c07462.L$0 = null;
        c07462.L$1 = null;
        c07462.label = 3;
        Object objD = av0.d((o22) obj, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, c07462);
        return objD == a32Var ? a32Var : objD;
    }

    public static final Cursor query(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z, CancellationSignal cancellationSignal) {
        roomDatabase.getClass();
        supportSQLiteQuery.getClass();
        Cursor cursorQuery = roomDatabase.query(supportSQLiteQuery, cancellationSignal);
        if (!z || !(cursorQuery instanceof AbstractWindowedCursor)) {
            return cursorQuery;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) cursorQuery;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? CursorUtil.copyAndClose(cursorQuery) : cursorQuery;
    }

    public static final int readVersion(File file) {
        file.getClass();
        FileChannel channel = new FileInputStream(file).getChannel();
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i = byteBufferAllocate.getInt();
            m96.c(channel, null);
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(channel, th);
                throw th2;
            }
        }
    }

    public static final SQLiteConnection toSQLiteConnection(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        return new SupportSQLiteConnection(supportSQLiteDatabase);
    }

    @ul2
    public static final Cursor query(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z) {
        roomDatabase.getClass();
        supportSQLiteQuery.getClass();
        return DBUtil.query(roomDatabase, supportSQLiteQuery, z, null);
    }
}
