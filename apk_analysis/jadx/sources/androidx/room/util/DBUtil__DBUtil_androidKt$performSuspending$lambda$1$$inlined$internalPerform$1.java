package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {56, 57, 59, 60}, m = "invokeSuspend")
public final class DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1<R> extends pg8 implements bm3<Transactor, e02<? super R>, Object> {
    final /* synthetic */ nl3 $block$inlined;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    final /* synthetic */ RoomDatabase $this_internalPerform;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1, reason: invalid class name */
    @bd2(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<TransactionScope<R>, e02<? super R>, Object> {
        final /* synthetic */ nl3 $block$inlined;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(e02 e02Var, nl3 nl3Var) {
            super(2, e02Var);
            this.$block$inlined = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(e02Var, this.$block$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(TransactionScope<R> transactionScope, e02<? super R> e02Var) {
            return ((AnonymousClass1) create(transactionScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            TransactionScope transactionScope = (TransactionScope) this.L$0;
            transactionScope.getClass();
            return this.$block$inlined.invoke(((RawConnectionAccessor) transactionScope).getRawConnection());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(boolean z, boolean z2, RoomDatabase roomDatabase, e02 e02Var, nl3 nl3Var) {
        super(2, e02Var);
        this.$inTransaction = z;
        this.$isReadOnly = z2;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, e02Var, this.$block$inlined);
        dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.L$0 = obj;
        return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(Transactor transactor, e02<? super R> e02Var) {
        return ((DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1) create(transactor, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009e A[PHI: r1 r9
      0x009e: PHI (r1v11 androidx.room.Transactor) = (r1v8 androidx.room.Transactor), (r1v18 androidx.room.Transactor) binds: [B:35:0x009b, B:11:0x0020] A[DONT_GENERATE, DONT_INLINE]
      0x009e: PHI (r9v14 java.lang.Object) = (r9v13 java.lang.Object), (r9v0 java.lang.Object) binds: [B:35:0x009b, B:11:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1 A[RETURN] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor transactor2;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Transactor transactor3;
        Object objInTransaction;
        Object obj2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Transactor transactor4 = (Transactor) this.L$0;
            if (!this.$inTransaction) {
                transactor4.getClass();
                return this.$block$inlined.invoke(((RawConnectionAccessor) transactor4).getRawConnection());
            }
            boolean z = this.$isReadOnly;
            sQLiteTransactionType = z ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
            if (z) {
                transactor = transactor4;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.$block$inlined);
                this.L$0 = transactor;
                this.L$1 = null;
                this.label = 3;
                obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass1, this);
                if (obj != a32Var) {
                    if (this.$isReadOnly) {
                        return obj;
                    }
                    this.L$0 = obj;
                    this.label = 4;
                    objInTransaction = transactor.inTransaction(this);
                    if (objInTransaction != a32Var) {
                        obj2 = obj;
                        obj = objInTransaction;
                        if (!((Boolean) obj).booleanValue()) {
                            this.$this_internalPerform.getInvalidationTracker().refreshAsync();
                        }
                        return obj2;
                    }
                }
            } else {
                this.L$0 = transactor4;
                this.L$1 = sQLiteTransactionType;
                this.label = 1;
                Object objInTransaction2 = transactor4.inTransaction(this);
                if (objInTransaction2 != a32Var) {
                    transactor2 = transactor4;
                    obj = objInTransaction2;
                    sQLiteTransactionType2 = sQLiteTransactionType;
                }
            }
            return a32Var;
        }
        if (i == 1) {
            sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
            transactor2 = (Transactor) this.L$0;
            r57.b(obj);
        } else {
            if (i == 2) {
                sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
                transactor3 = (Transactor) this.L$0;
                r57.b(obj);
                sQLiteTransactionType = sQLiteTransactionType2;
                transactor = transactor3;
                AnonymousClass1 anonymousClass2 = new AnonymousClass1(null, this.$block$inlined);
                this.L$0 = transactor;
                this.L$1 = null;
                this.label = 3;
                obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass2, this);
                if (obj != a32Var) {
                    if (this.$isReadOnly) {
                        return obj;
                    }
                    this.L$0 = obj;
                    this.label = 4;
                    objInTransaction = transactor.inTransaction(this);
                    if (objInTransaction != a32Var) {
                        obj2 = obj;
                        obj = objInTransaction;
                    }
                }
                return a32Var;
            }
            if (i == 3) {
                transactor = (Transactor) this.L$0;
                r57.b(obj);
                if (this.$isReadOnly) {
                    return obj;
                }
                this.L$0 = obj;
                this.label = 4;
                objInTransaction = transactor.inTransaction(this);
                if (objInTransaction != a32Var) {
                    obj2 = obj;
                    obj = objInTransaction;
                }
                return a32Var;
            }
            if (i != 4) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.L$0;
            r57.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.getInvalidationTracker().refreshAsync();
        }
        return obj2;
        if (((Boolean) obj).booleanValue()) {
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor2;
            AnonymousClass1 anonymousClass3 = new AnonymousClass1(null, this.$block$inlined);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass3, this);
            if (obj != a32Var) {
                if (this.$isReadOnly) {
                    return obj;
                }
                this.L$0 = obj;
                this.label = 4;
                objInTransaction = transactor.inTransaction(this);
                if (objInTransaction != a32Var) {
                    obj2 = obj;
                    obj = objInTransaction;
                    if (!((Boolean) obj).booleanValue()) {
                        this.$this_internalPerform.getInvalidationTracker().refreshAsync();
                    }
                    return obj2;
                }
            }
        } else {
            InvalidationTracker invalidationTracker = this.$this_internalPerform.getInvalidationTracker();
            this.L$0 = transactor2;
            this.L$1 = sQLiteTransactionType2;
            this.label = 2;
            if (invalidationTracker.sync$room_runtime(this) != a32Var) {
                transactor3 = transactor2;
                sQLiteTransactionType = sQLiteTransactionType2;
                transactor = transactor3;
                AnonymousClass1 anonymousClass4 = new AnonymousClass1(null, this.$block$inlined);
                this.L$0 = transactor;
                this.L$1 = null;
                this.label = 3;
                obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass4, this);
                if (obj != a32Var) {
                    if (this.$isReadOnly) {
                        return obj;
                    }
                    this.L$0 = obj;
                    this.label = 4;
                    objInTransaction = transactor.inTransaction(this);
                    if (objInTransaction != a32Var) {
                        obj2 = obj;
                        obj = objInTransaction;
                        if (!((Boolean) obj).booleanValue()) {
                            this.$this_internalPerform.getInvalidationTracker().refreshAsync();
                        }
                        return obj2;
                    }
                }
            }
        }
        return a32Var;
    }
}
