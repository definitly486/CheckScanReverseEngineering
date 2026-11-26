package androidx.room;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", f = "InvalidationTracker.kt", l = {239, 239, 243}, m = "invokeSuspend")
public final class TriggerBasedInvalidationTracker$createFlow$1 extends pg8 implements bm3<id3<? super Set<? extends String>>, e02<? super j59>, Object> {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1, reason: invalid class name */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", f = "InvalidationTracker.kt", l = {239}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z, String[] strArr, e02<? super TriggerBasedInvalidationTracker$createFlow$1> e02Var) {
        super(2, e02Var);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z;
        this.$resolvedTableNames = strArr;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, e02Var);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(id3<? super Set<String>> id3Var, e02<? super j59> e02Var) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        if (defpackage.av0.d((defpackage.o22) r12, r5, r11) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
    
        if (r12.collect(r4, r11) == r0) goto L28;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L30
            if (r1 == r5) goto L28
            if (r1 == r4) goto L20
            if (r1 == r3) goto L17
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r11)
            r11 = 0
            return r11
        L17:
            defpackage.r57.b(r12)     // Catch: java.lang.Throwable -> L1c
            goto L92
        L1c:
            r0 = move-exception
            r12 = r0
            goto L98
        L20:
            java.lang.Object r1 = r11.L$0
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r12)
            goto L6e
        L28:
            java.lang.Object r1 = r11.L$0
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r12)
            goto L5a
        L30:
            defpackage.r57.b(r12)
            java.lang.Object r12 = r11.L$0
            id3 r12 = (defpackage.id3) r12
            androidx.room.TriggerBasedInvalidationTracker r1 = r11.this$0
            androidx.room.ObservedTableStates r1 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableStates$p(r1)
            int[] r6 = r11.$tableIds
            boolean r1 = r1.onObserverAdded$room_runtime(r6)
            if (r1 == 0) goto L70
            androidx.room.TriggerBasedInvalidationTracker r1 = r11.this$0
            androidx.room.RoomDatabase r1 = androidx.room.TriggerBasedInvalidationTracker.access$getDatabase$p(r1)
            r11.L$0 = r12
            r11.label = r5
            r5 = 0
            java.lang.Object r1 = androidx.room.util.DBUtil.getCoroutineContext(r1, r5, r11)
            if (r1 != r0) goto L57
            goto L91
        L57:
            r10 = r1
            r1 = r12
            r12 = r10
        L5a:
            o22 r12 = (defpackage.o22) r12
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1
            androidx.room.TriggerBasedInvalidationTracker r6 = r11.this$0
            r5.<init>(r6, r2)
            r11.L$0 = r1
            r11.label = r4
            java.lang.Object r12 = defpackage.av0.d(r12, r5, r11)
            if (r12 != r0) goto L6e
            goto L91
        L6e:
            r7 = r1
            goto L71
        L70:
            r7 = r12
        L71:
            r07 r5 = new r07     // Catch: java.lang.Throwable -> L1c
            r5.<init>()     // Catch: java.lang.Throwable -> L1c
            androidx.room.TriggerBasedInvalidationTracker r12 = r11.this$0     // Catch: java.lang.Throwable -> L1c
            androidx.room.ObservedTableVersions r12 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableVersions$p(r12)     // Catch: java.lang.Throwable -> L1c
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r4 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2     // Catch: java.lang.Throwable -> L1c
            boolean r6 = r11.$emitInitialState     // Catch: java.lang.Throwable -> L1c
            java.lang.String[] r8 = r11.$resolvedTableNames     // Catch: java.lang.Throwable -> L1c
            int[] r9 = r11.$tableIds     // Catch: java.lang.Throwable -> L1c
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L1c
            r11.L$0 = r2     // Catch: java.lang.Throwable -> L1c
            r11.label = r3     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r12 = r12.collect(r4, r11)     // Catch: java.lang.Throwable -> L1c
            if (r12 != r0) goto L92
        L91:
            return r0
        L92:
            kotlin.KotlinNothingValueException r12 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L1c
            r12.<init>()     // Catch: java.lang.Throwable -> L1c
            throw r12     // Catch: java.lang.Throwable -> L1c
        L98:
            androidx.room.TriggerBasedInvalidationTracker r0 = r11.this$0
            androidx.room.ObservedTableStates r0 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableStates$p(r0)
            int[] r11 = r11.$tableIds
            r0.onObserverRemoved$room_runtime(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(id3<? super Set<? extends String>> id3Var, e02<? super j59> e02Var) {
        return invoke2((id3<? super Set<String>>) id3Var, e02Var);
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, reason: invalid class name */
    public static final class AnonymousClass2<T> implements id3 {
        final /* synthetic */ id3<Set<String>> $$this$flow;
        final /* synthetic */ r07<int[]> $currentVersions;
        final /* synthetic */ boolean $emitInitialState;
        final /* synthetic */ String[] $resolvedTableNames;
        final /* synthetic */ int[] $tableIds;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(r07<int[]> r07Var, boolean z, id3<? super Set<String>> id3Var, String[] strArr, int[] iArr) {
            this.$currentVersions = r07Var;
            this.$emitInitialState = z;
            this.$$this$flow = id3Var;
            this.$resolvedTableNames = strArr;
            this.$tableIds = iArr;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        
            if (r15.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0097, code lost:
        
            if (r15.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0099, code lost:
        
            r14 = r14;
            r14 = r14;
            r14 = r14;
            return r1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(int[] r14, defpackage.e02<? super defpackage.j59> r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                if (r0 == 0) goto L13
                r0 = r15
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                r0.<init>(r13, r15)
            L18:
                java.lang.Object r15 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L36
                if (r2 == r5) goto L2e
                if (r2 != r4) goto L28
                goto L2e
            L28:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                return r3
            L2e:
                java.lang.Object r14 = r0.L$0
                int[] r14 = (int[]) r14
                defpackage.r57.b(r15)
                goto L9a
            L36:
                defpackage.r57.b(r15)
                r07<int[]> r15 = r13.$currentVersions
                T r2 = r15.b
                if (r2 != 0) goto L56
                boolean r15 = r13.$emitInitialState
                if (r15 == 0) goto L9a
                id3<java.util.Set<java.lang.String>> r15 = r13.$$this$flow
                java.lang.String[] r2 = r13.$resolvedTableNames
                java.util.Set r2 = defpackage.yr.k0(r2)
                r0.L$0 = r14
                r0.label = r5
                java.lang.Object r15 = r15.emit(r2, r0)
                if (r15 != r1) goto L9a
                goto L99
            L56:
                java.lang.String[] r2 = r13.$resolvedTableNames
                int[] r5 = r13.$tableIds
                java.util.ArrayList r6 = new java.util.ArrayList
                r6.<init>()
                int r7 = r2.length
                r8 = 0
                r9 = r8
            L62:
                if (r8 >= r7) goto L83
                r10 = r2[r8]
                int r11 = r9 + 1
                T r12 = r15.b
                if (r12 == 0) goto L7d
                int[] r12 = (int[]) r12
                r9 = r5[r9]
                r12 = r12[r9]
                r9 = r14[r9]
                if (r12 == r9) goto L79
                r6.add(r10)
            L79:
                int r8 = r8 + 1
                r9 = r11
                goto L62
            L7d:
                java.lang.String r13 = "Required value was null."
                defpackage.ah.f(r13)
                return r3
            L83:
                boolean r15 = r6.isEmpty()
                if (r15 != 0) goto L9a
                id3<java.util.Set<java.lang.String>> r15 = r13.$$this$flow
                java.util.Set r2 = defpackage.qn1.y0(r6)
                r0.L$0 = r14
                r0.label = r4
                java.lang.Object r15 = r15.emit(r2, r0)
                if (r15 != r1) goto L9a
            L99:
                return r1
            L9a:
                r07<int[]> r13 = r13.$currentVersions
                r13.b = r14
                j59 r13 = defpackage.j59.a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2.emit(int[], e02):java.lang.Object");
        }

        @Override // defpackage.id3
        public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return emit((int[]) obj, (e02<? super j59>) e02Var);
        }
    }
}
