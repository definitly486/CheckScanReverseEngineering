package androidx.room;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1", f = "InvalidationTracker.kt", l = {418, TypedValues.CycleType.TYPE_WAVE_PHASE}, m = "invokeSuspend")
public final class TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 extends pg8 implements bm3<Transactor, e02<? super Set<? extends Integer>>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, e02<? super TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1> e02Var) {
        super(2, e02Var);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this.this$0, e02Var);
        triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.L$0 = obj;
        return triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Transactor transactor, e02<? super Set<Integer>> e02Var) {
        return ((TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1) create(transactor, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        if (r8 == r0) goto L19;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            ox2 r3 = defpackage.ox2.b
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L19
            if (r1 != r4) goto L13
            defpackage.r57.b(r8)     // Catch: android.database.SQLException -> L54
            goto L51
        L13:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L19:
            java.lang.Object r1 = r7.L$0
            androidx.room.Transactor r1 = (androidx.room.Transactor) r1
            defpackage.r57.b(r8)
            goto L34
        L21:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            r1 = r8
            androidx.room.Transactor r1 = (androidx.room.Transactor) r1
            r7.L$0 = r1
            r7.label = r5
            java.lang.Object r8 = r1.inTransaction(r7)
            if (r8 != r0) goto L34
            goto L50
        L34:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L3d
            return r3
        L3d:
            androidx.room.Transactor$SQLiteTransactionType r8 = androidx.room.Transactor.SQLiteTransactionType.IMMEDIATE     // Catch: android.database.SQLException -> L54
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1     // Catch: android.database.SQLException -> L54
            androidx.room.TriggerBasedInvalidationTracker r6 = r7.this$0     // Catch: android.database.SQLException -> L54
            r5.<init>(r6, r2)     // Catch: android.database.SQLException -> L54
            r7.L$0 = r2     // Catch: android.database.SQLException -> L54
            r7.label = r4     // Catch: android.database.SQLException -> L54
            java.lang.Object r8 = r1.withTransaction(r8, r5, r7)     // Catch: android.database.SQLException -> L54
            if (r8 != r0) goto L51
        L50:
            return r0
        L51:
            java.util.Set r8 = (java.util.Set) r8     // Catch: android.database.SQLException -> L54
            return r8
        L54:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1, reason: invalid class name */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1", f = "InvalidationTracker.kt", l = {426}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<TransactionScope<Set<? extends Integer>>, e02<? super Set<? extends Integer>>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(TransactionScope<Set<Integer>> transactionScope, e02<? super Set<Integer>> e02Var) {
            return ((AnonymousClass1) create(transactionScope, e02Var)).invokeSuspend(j59.a);
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
            TransactionScope transactionScope = (TransactionScope) this.L$0;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
            this.label = 1;
            Object objCheckInvalidatedTables = triggerBasedInvalidationTracker.checkInvalidatedTables(transactionScope, this);
            return objCheckInvalidatedTables == a32Var ? a32Var : objCheckInvalidatedTables;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(TransactionScope<Set<? extends Integer>> transactionScope, e02<? super Set<? extends Integer>> e02Var) {
            return invoke2((TransactionScope<Set<Integer>>) transactionScope, (e02<? super Set<Integer>>) e02Var);
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Transactor transactor, e02<? super Set<? extends Integer>> e02Var) {
        return invoke2(transactor, (e02<? super Set<Integer>>) e02Var);
    }
}
