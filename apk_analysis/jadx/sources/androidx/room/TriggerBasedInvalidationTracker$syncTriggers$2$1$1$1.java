package androidx.room;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1", f = "InvalidationTracker.kt", l = {TypedValues.AttributesType.TYPE_PIVOT_TARGET, 319}, m = "invokeSuspend")
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 extends pg8 implements bm3<TransactionScope<j59>, e02<? super j59>, Object> {
    final /* synthetic */ Transactor $connection;
    final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
            try {
                iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, e02<? super TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1> e02Var) {
        super(2, e02Var);
        this.$tablesToSync = observeOpArr;
        this.this$0 = triggerBasedInvalidationTracker;
        this.$connection = transactor;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(this.$tablesToSync, this.this$0, this.$connection, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(TransactionScope<j59> transactionScope, e02<? super j59> e02Var) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1) create(transactionScope, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0081 -> B:27:0x0082). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L29
            if (r1 == r4) goto Ld
            if (r1 != r3) goto L23
        Ld:
            int r1 = r12.I$2
            int r5 = r12.I$1
            int r6 = r12.I$0
            java.lang.Object r7 = r12.L$2
            androidx.room.Transactor r7 = (androidx.room.Transactor) r7
            java.lang.Object r8 = r12.L$1
            androidx.room.TriggerBasedInvalidationTracker r8 = (androidx.room.TriggerBasedInvalidationTracker) r8
            java.lang.Object r9 = r12.L$0
            androidx.room.ObservedTableStates$ObserveOp[] r9 = (androidx.room.ObservedTableStates.ObserveOp[]) r9
            defpackage.r57.b(r13)
            goto L65
        L23:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r12)
            return r2
        L29:
            defpackage.r57.b(r13)
            androidx.room.ObservedTableStates$ObserveOp[] r13 = r12.$tablesToSync
            androidx.room.TriggerBasedInvalidationTracker r1 = r12.this$0
            androidx.room.Transactor r5 = r12.$connection
            int r6 = r13.length
            r7 = 0
            r9 = r13
            r8 = r1
            r13 = r5
            r1 = r6
            r5 = r7
        L39:
            if (r5 >= r1) goto L84
            r6 = r9[r5]
            int r10 = r7 + 1
            int[] r11 = androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r11[r6]
            if (r6 == r4) goto L81
            if (r6 == r3) goto L6c
            r11 = 3
            if (r6 != r11) goto L68
            r12.L$0 = r9
            r12.L$1 = r8
            r12.L$2 = r13
            r12.I$0 = r10
            r12.I$1 = r5
            r12.I$2 = r1
            r12.label = r3
            java.lang.Object r6 = androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(r8, r13, r7, r12)
            if (r6 != r0) goto L63
            goto L80
        L63:
            r7 = r13
            r6 = r10
        L65:
            r13 = r7
            r7 = r6
            goto L82
        L68:
            defpackage.me0.e()
            return r2
        L6c:
            r12.L$0 = r9
            r12.L$1 = r8
            r12.L$2 = r13
            r12.I$0 = r10
            r12.I$1 = r5
            r12.I$2 = r1
            r12.label = r4
            java.lang.Object r6 = androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r8, r13, r7, r12)
            if (r6 != r0) goto L63
        L80:
            return r0
        L81:
            r7 = r10
        L82:
            int r5 = r5 + r4
            goto L39
        L84:
            j59 r12 = defpackage.j59.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
