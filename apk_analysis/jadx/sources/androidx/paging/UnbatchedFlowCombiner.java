package androidx.paging;

import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.r57;
import defpackage.xp1;
import defpackage.yg5;
import defpackage.yp1;

/* JADX INFO: loaded from: classes3.dex */
public final class UnbatchedFlowCombiner<T1, T2> {
    private final xp1<j59> initialDispatched;
    private final yg5 lock;
    private final fm3<T1, T2, CombineSource, e02<? super j59>, Object> send;
    private final xp1<j59>[] valueReceived;
    private final Object[] values;

    /* JADX INFO: renamed from: androidx.paging.UnbatchedFlowCombiner$onNext$1, reason: invalid class name */
    @bd2(c = "androidx.paging.UnbatchedFlowCombiner", f = "FlowExt.kt", l = {WebmConstants.MkvEbmlElement.TRACK_ENTRY, 214, 191}, m = "onNext", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ UnbatchedFlowCombiner<T1, T2> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = unbatchedFlowCombiner;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.onNext(0, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UnbatchedFlowCombiner(fm3<? super T1, ? super T2, ? super CombineSource, ? super e02<? super j59>, ? extends Object> fm3Var) {
        fm3Var.getClass();
        this.send = fm3Var;
        this.initialDispatched = new yp1();
        this.lock = new ch5();
        xp1<j59>[] xp1VarArr = new xp1[2];
        for (int i = 0; i < 2; i++) {
            xp1VarArr[i] = new yp1();
        }
        this.valueReceived = xp1VarArr;
        Object[] objArr = new Object[2];
        for (int i2 = 0; i2 < 2; i2++) {
            objArr[i2] = FlowExtKt.NULL;
        }
        this.values = objArr;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0090 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x009a A[Catch: all -> 0x009d, LOOP:0: B:33:0x008e->B:37:0x009a, LOOP_END, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a9 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3 A[Catch: all -> 0x009d, LOOP:1: B:42:0x00a7->B:46:0x00b3, LOOP_END, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b8 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00bd A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c0 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:32:0x0089, B:34:0x0090, B:41:0x00a1, B:43:0x00a9, B:46:0x00b3, B:48:0x00b8, B:52:0x00c2, B:50:0x00bd, B:51:0x00c0, B:37:0x009a), top: B:64:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object onNext(int i, Object obj, e02<? super j59> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Object obj2;
        yg5 yg5Var;
        yg5 yg5Var2;
        Object[] objArr;
        int length;
        int i2;
        boolean z;
        Object[] objArr2;
        int length2;
        int i3;
        CombineSource combineSource;
        fm3<T1, T2, CombineSource, e02<? super j59>, Object> fm3Var;
        Object obj3;
        Object obj4;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i4 = anonymousClass1.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i4 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj5 = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i5 = anonymousClass1.label;
        if (i5 == 0) {
            r57.b(obj5);
            if (this.valueReceived[i].P()) {
                xp1<j59> xp1Var = this.initialDispatched;
                anonymousClass1.L$0 = obj;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 1;
                if (xp1Var.Z(anonymousClass1) != a32Var) {
                }
                return a32Var;
            }
            this.valueReceived[i].f(j59.a);
        } else {
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var2 = (yg5) anonymousClass1.L$0;
                    try {
                        r57.b(obj5);
                        this.initialDispatched.f(j59.a);
                        j59 j59Var = j59.a;
                        yg5Var2.unlock(null);
                        return j59.a;
                    } catch (Throwable th) {
                        th = th;
                        yg5Var2.unlock(null);
                        throw th;
                    }
                }
                i = anonymousClass1.I$0;
                yg5Var = (yg5) anonymousClass1.L$1;
                obj2 = anonymousClass1.L$0;
                r57.b(obj5);
                try {
                    objArr = this.values;
                    length = objArr.length;
                    i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            z = false;
                            break;
                        }
                        if (objArr[i2] == FlowExtKt.NULL) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                    objArr2 = this.values;
                    objArr2[i] = obj2;
                    length2 = objArr2.length;
                    i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            if (z) {
                                combineSource = CombineSource.INITIAL;
                            } else if (i == 0) {
                                combineSource = CombineSource.RECEIVER;
                            } else {
                                combineSource = CombineSource.OTHER;
                            }
                            fm3Var = this.send;
                            Object[] objArr3 = this.values;
                            obj3 = objArr3[0];
                            obj4 = objArr3[1];
                            anonymousClass1.L$0 = yg5Var;
                            anonymousClass1.L$1 = null;
                            anonymousClass1.label = 3;
                            if (fm3Var.invoke((T1) obj3, (T2) obj4, combineSource, anonymousClass1) != a32Var) {
                                yg5Var2 = yg5Var;
                                this.initialDispatched.f(j59.a);
                                break;
                            }
                            return a32Var;
                        }
                        if (objArr2[i3] == FlowExtKt.NULL) {
                            yg5Var2 = yg5Var;
                            break;
                        }
                        i3++;
                    }
                    j59 j59Var2 = j59.a;
                    yg5Var2.unlock(null);
                    return j59.a;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var2 = yg5Var;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            i = anonymousClass1.I$0;
            obj = anonymousClass1.L$0;
            r57.b(obj5);
        }
        yg5 yg5Var3 = this.lock;
        anonymousClass1.L$0 = obj;
        anonymousClass1.L$1 = yg5Var3;
        anonymousClass1.I$0 = i;
        anonymousClass1.label = 2;
        if (yg5Var3.lock(null, anonymousClass1) != a32Var) {
            obj2 = obj;
            yg5Var = yg5Var3;
            objArr = this.values;
            length = objArr.length;
            i2 = 0;
            while (true) {
                if (i2 < length) {
                    z = false;
                    break;
                }
                if (objArr[i2] == FlowExtKt.NULL) {
                    z = true;
                    break;
                }
                i2++;
            }
            objArr2 = this.values;
            objArr2[i] = obj2;
            length2 = objArr2.length;
            i3 = 0;
            while (true) {
                if (i3 < length2) {
                    if (z) {
                        combineSource = CombineSource.INITIAL;
                    } else if (i == 0) {
                        combineSource = CombineSource.RECEIVER;
                    } else {
                        combineSource = CombineSource.OTHER;
                    }
                    fm3Var = this.send;
                    Object[] objArr4 = this.values;
                    obj3 = objArr4[0];
                    obj4 = objArr4[1];
                    anonymousClass1.L$0 = yg5Var;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 3;
                    if (fm3Var.invoke((T1) obj3, (T2) obj4, combineSource, anonymousClass1) != a32Var) {
                        yg5Var2 = yg5Var;
                        this.initialDispatched.f(j59.a);
                        break;
                    }
                } else {
                    if (objArr2[i3] == FlowExtKt.NULL) {
                        yg5Var2 = yg5Var;
                        break;
                    }
                    i3++;
                }
            }
            j59 j59Var3 = j59.a;
            yg5Var2.unlock(null);
            return j59.a;
        }
        return a32Var;
    }
}
