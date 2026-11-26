package androidx.room;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1", f = "InvalidationTracker.kt", l = {307, 314}, m = "invokeSuspend")
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends pg8 implements bm3<Transactor, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, e02<? super TriggerBasedInvalidationTracker$syncTriggers$2$1> e02Var) {
        super(2, e02Var);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this.this$0, e02Var);
        triggerBasedInvalidationTracker$syncTriggers$2$1.L$0 = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(Transactor transactor, e02<? super j59> e02Var) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create(transactor, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006e  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Transactor transactor;
        Object objInTransaction;
        ObservedTableStates observedTableStates;
        ReentrantLock reentrantLock;
        ObservedTableStates.ObserveOp[] observeOpArr;
        ObservedTableStates.ObserveOp observeOp;
        ObservedTableStates observedTableStates2;
        ReentrantLock reentrantLock2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        boolean z = true;
        if (i == 0) {
            r57.b(obj);
            transactor = (Transactor) this.L$0;
            this.L$0 = transactor;
            this.label = 1;
            objInTransaction = transactor.inTransaction(this);
            if (objInTransaction != a32Var) {
            }
            return a32Var;
        }
        if (i != 1) {
            if (i != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            reentrantLock2 = (ReentrantLock) this.L$1;
            observedTableStates2 = (ObservedTableStates) this.L$0;
            try {
                r57.b(obj);
                reentrantLock = reentrantLock2;
                observedTableStates = observedTableStates2;
                observedTableStates.inProgressSync = false;
                j59 j59Var = j59.a;
                reentrantLock.unlock();
                return j59.a;
            } catch (Throwable th) {
                th = th;
                try {
                    observedTableStates2.inProgressSync = false;
                    throw th;
                } catch (Throwable th2) {
                    th = th2;
                    reentrantLock = reentrantLock2;
                    reentrantLock.unlock();
                    throw th;
                }
            }
        }
        transactor = (Transactor) this.L$0;
        r57.b(obj);
        objInTransaction = obj;
        if (((Boolean) objInTransaction).booleanValue()) {
            return j59.a;
        }
        observedTableStates = this.this$0.observedTableStates;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
        reentrantLock = observedTableStates.onSyncLock;
        reentrantLock.lock();
        try {
            observedTableStates.inProgressSync = true;
            ReentrantLock reentrantLock3 = observedTableStates.lock;
            reentrantLock3.lock();
            try {
                if (observedTableStates.needsSync) {
                    observedTableStates.needsSync = false;
                    int length = observedTableStates.tableObserversCount.length;
                    observeOpArr = new ObservedTableStates.ObserveOp[length];
                    int i2 = 0;
                    boolean z2 = false;
                    while (i2 < length) {
                        boolean z3 = observedTableStates.tableObserversCount[i2] > 0 ? z : false;
                        if (z3 != observedTableStates.tableObservedState[i2]) {
                            observedTableStates.tableObservedState[i2] = z3;
                            observeOp = z3 ? ObservedTableStates.ObserveOp.ADD : ObservedTableStates.ObserveOp.REMOVE;
                            z2 = true;
                        } else {
                            observeOp = ObservedTableStates.ObserveOp.NO_OP;
                        }
                        observeOpArr[i2] = observeOp;
                        i2++;
                        z = true;
                    }
                    if (!z2) {
                        observeOpArr = null;
                    }
                } else {
                    observeOpArr = null;
                }
                reentrantLock3.unlock();
                if (observeOpArr != null) {
                    try {
                        if (observeOpArr.length != 0) {
                            Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                            TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 triggerBasedInvalidationTracker$syncTriggers$2$1$1$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(observeOpArr, triggerBasedInvalidationTracker, transactor, null);
                            this.L$0 = observedTableStates;
                            this.L$1 = reentrantLock;
                            this.label = 2;
                            if (transactor.withTransaction(sQLiteTransactionType, triggerBasedInvalidationTracker$syncTriggers$2$1$1$1, this) != a32Var) {
                                observedTableStates2 = observedTableStates;
                                reentrantLock2 = reentrantLock;
                                reentrantLock = reentrantLock2;
                                observedTableStates = observedTableStates2;
                            }
                            return a32Var;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        observedTableStates2 = observedTableStates;
                        reentrantLock2 = reentrantLock;
                        observedTableStates2.inProgressSync = false;
                        throw th;
                    }
                }
                observedTableStates.inProgressSync = false;
                j59 j59Var2 = j59.a;
                reentrantLock.unlock();
                return j59.a;
            } catch (Throwable th4) {
                reentrantLock3.unlock();
                throw th4;
            }
        } catch (Throwable th5) {
            th = th5;
            reentrantLock.unlock();
            throw th;
        }
    }
}
