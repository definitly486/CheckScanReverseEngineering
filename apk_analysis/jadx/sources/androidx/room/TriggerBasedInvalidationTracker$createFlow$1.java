package androidx.room;

import androidx.room.util.DBUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Set;
import kotlin.KotlinNothingValueException;

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
    */
    public final Object invokeSuspend(Object obj) {
        id3 id3Var;
        id3 id3Var2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    id3Var2 = (id3) this.L$0;
                    r57.b(obj);
                } else if (i == 2) {
                    id3Var2 = (id3) this.L$0;
                    r57.b(obj);
                    id3Var = id3Var2;
                    r07 r07Var = new r07();
                    ObservedTableVersions observedTableVersions = this.this$0.observedTableVersions;
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(r07Var, this.$emitInitialState, id3Var, this.$resolvedTableNames, this.$tableIds);
                    this.L$0 = null;
                    this.label = 3;
                } else {
                    if (i != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                throw new KotlinNothingValueException();
            }
            r57.b(obj);
            id3 id3Var3 = (id3) this.L$0;
            if (this.this$0.observedTableStates.onObserverAdded$room_runtime(this.$tableIds)) {
                RoomDatabase roomDatabase = this.this$0.database;
                this.L$0 = id3Var3;
                this.label = 1;
                Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, false, this);
                if (coroutineContext != a32Var) {
                    id3Var2 = id3Var3;
                    obj = coroutineContext;
                }
            } else {
                id3Var = id3Var3;
                r07 r07Var2 = new r07();
                ObservedTableVersions observedTableVersions2 = this.this$0.observedTableVersions;
                AnonymousClass2 anonymousClass3 = new AnonymousClass2(r07Var2, this.$emitInitialState, id3Var, this.$resolvedTableNames, this.$tableIds);
                this.L$0 = null;
                this.label = 3;
            }
            return a32Var;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.L$0 = id3Var2;
            this.label = 2;
        } catch (Throwable th) {
            this.this$0.observedTableStates.onObserverRemoved$room_runtime(this.$tableIds);
            throw th;
        }
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
        
            return r1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(int[] iArr, e02<? super j59> e02Var) {
            TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 triggerBasedInvalidationTracker$createFlow$1$2$emit$1;
            Object obj;
            if (e02Var instanceof TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = (TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) e02Var;
                int i = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, e02Var);
                }
            } else {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, e02Var);
            }
            Object obj2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
            if (i2 == 0) {
                r57.b(obj2);
                r07<int[]> r07Var = this.$currentVersions;
                if (r07Var.b == null) {
                    obj = iArr;
                    if (this.$emitInitialState) {
                        id3<Set<String>> id3Var = this.$$this$flow;
                        Set<String> setK0 = yr.k0(this.$resolvedTableNames);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 1;
                        obj = iArr;
                    }
                } else {
                    String[] strArr = this.$resolvedTableNames;
                    int[] iArr2 = this.$tableIds;
                    ArrayList arrayList = new ArrayList();
                    int length = strArr.length;
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < length) {
                        String str = strArr[i3];
                        int i5 = i4 + 1;
                        int[] iArr3 = r07Var.b;
                        if (iArr3 == null) {
                            ah.f("Required value was null.");
                            return null;
                        }
                        int i6 = iArr2[i4];
                        if (iArr3[i6] != iArr[i6]) {
                            arrayList.add(str);
                        }
                        i3++;
                        i4 = i5;
                    }
                    obj = iArr;
                    if (!arrayList.isEmpty()) {
                        id3<Set<String>> id3Var2 = this.$$this$flow;
                        Set<String> setY0 = qn1.y0(arrayList);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 2;
                        obj = iArr;
                    }
                }
            } else {
                if (i2 != 1 && i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj3 = (T) ((int[]) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0);
                r57.b(obj2);
                obj = obj3;
            }
            this.$currentVersions.b = (T) obj;
            return j59.a;
        }

        @Override // defpackage.id3
        public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return emit((int[]) obj, (e02<? super j59>) e02Var);
        }
    }
}
