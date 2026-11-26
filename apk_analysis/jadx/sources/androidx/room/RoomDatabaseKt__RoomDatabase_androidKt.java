package androidx.room;

import defpackage.a31;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.c31;
import defpackage.e02;
import defpackage.g02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o22;
import defpackage.ot8;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ul2;
import defpackage.y22;
import defpackage.zya;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class RoomDatabaseKt__RoomDatabase_androidKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2, reason: invalid class name */
    @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2", f = "RoomDatabase.android.kt", l = {2044}, m = "invokeSuspend")
    public static final class AnonymousClass2<R> extends pg8 implements nl3<e02<? super R>, Object> {
        final /* synthetic */ nl3<e02<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $this_withTransaction;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$this_withTransaction = roomDatabase;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.$this_withTransaction, this.$block, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super R> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    this.$this_withTransaction.beginTransaction();
                    nl3<e02<? super R>, Object> nl3Var = this.$block;
                    this.label = 1;
                    obj = nl3Var.invoke(this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                this.$this_withTransaction.setTransactionSuccessful();
                this.$this_withTransaction.endTransaction();
                return obj;
            } catch (Throwable th) {
                this.$this_withTransaction.endTransaction();
                throw th;
            }
        }
    }

    public static final <R> Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        if ((!roomDatabase.inCompatibilityMode() || !roomDatabase.isOpenInternal$room_runtime() || !roomDatabase.inTransaction()) && e02Var.getContext().get(RoomExternalOperationElement.INSTANCE) != null) {
            return RoomDatabaseKt.withTransactionContext(roomDatabase, nl3Var, e02Var);
        }
        return nl3Var.invoke(e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o22 createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(RoomDatabase roomDatabase, g02 g02Var) {
        o22 o22VarPlus = g02Var.plus(new TransactionElement(g02Var));
        return o22VarPlus.plus(new ot8(roomDatabase.getSuspendingTransactionContext(), o22VarPlus));
    }

    @ul2
    public static final hd3<Set<String>> invalidationTrackerFlow(RoomDatabase roomDatabase, String[] strArr, boolean z) {
        roomDatabase.getClass();
        strArr.getClass();
        return roomDatabase.getInvalidationTracker().createFlow((String[]) Arrays.copyOf(strArr, strArr.length), z);
    }

    public static /* synthetic */ hd3 invalidationTrackerFlow$default(RoomDatabase roomDatabase, String[] strArr, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return RoomDatabaseKt.invalidationTrackerFlow(roomDatabase, strArr, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <R> Object startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(final RoomDatabase roomDatabase, final bm3<? super y22, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        try {
            roomDatabase.getTransactionExecutor().execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1

                /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1, reason: invalid class name */
                @bd2(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1", f = "RoomDatabase.android.kt", l = {2087}, m = "invokeSuspend")
                public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                    final /* synthetic */ a31<R> $continuation;
                    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
                    final /* synthetic */ bm3<y22, e02<? super R>, Object> $transactionBlock;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public AnonymousClass1(RoomDatabase roomDatabase, a31<? super R> a31Var, bm3<? super y22, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
                        super(2, e02Var);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = a31Var;
                        this.$transactionBlock = bm3Var;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, e02Var);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                        return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        e02 e02Var;
                        a32 a32Var = a32.COROUTINE_SUSPENDED;
                        int i = this.label;
                        if (i == 0) {
                            r57.b(obj);
                            o22.a aVar = ((y22) this.L$0).getCoroutineContext().get(g02.a.b);
                            aVar.getClass();
                            o22 o22VarCreateTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt = RoomDatabaseKt__RoomDatabase_androidKt.createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(this.$this_startTransactionCoroutine, (g02) aVar);
                            e02 e02Var2 = this.$continuation;
                            bm3<y22, e02<? super R>, Object> bm3Var = this.$transactionBlock;
                            this.L$0 = e02Var2;
                            this.label = 1;
                            obj = av0.d(o22VarCreateTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt, bm3Var, this);
                            if (obj == a32Var) {
                                return a32Var;
                            }
                            e02Var = e02Var2;
                        } else {
                            if (i != 1) {
                                ah.f("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            e02Var = (e02) this.L$0;
                            r57.b(obj);
                        }
                        e02Var.resumeWith(obj);
                        return j59.a;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        bv0.a(c31Var.getContext().minusKey(g02.a.b), new AnonymousClass1(roomDatabase, c31Var, bm3Var, null));
                    } catch (Throwable th) {
                        c31Var.d(th);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            c31Var.d(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static final <R> Object withTransaction(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return RoomDatabaseKt.withTransactionContext(roomDatabase, new AnonymousClass2(roomDatabase, nl3Var, null), e02Var);
    }

    public static final <R> Object withTransactionContext(RoomDatabase roomDatabase, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(nl3Var, null);
        TransactionElement transactionElement = (TransactionElement) e02Var.getContext().get(TransactionElement.Key);
        g02 transactionDispatcher$room_runtime = transactionElement != null ? transactionElement.getTransactionDispatcher$room_runtime() : null;
        return transactionDispatcher$room_runtime != null ? av0.d(transactionDispatcher$room_runtime, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, e02Var) : startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(roomDatabase, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, e02Var);
    }
}
