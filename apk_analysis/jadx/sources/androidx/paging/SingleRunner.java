package androidx.paging;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z22;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public final class SingleRunner {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_PRIORITY = 0;
    private final Holder holder;

    public static final class CancelIsolatedRunnerException extends CancellationException {
        private final SingleRunner runner;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CancelIsolatedRunnerException(SingleRunner singleRunner) {
            super("Cancelled isolated runner");
            singleRunner.getClass();
            this.runner = singleRunner;
        }

        public final SingleRunner getRunner() {
            return this.runner;
        }
    }

    public static final class Holder {
        private final boolean cancelPreviousInEqualPriority;
        private final yg5 mutex;
        private mb4 previous;
        private int previousPriority;
        private final SingleRunner singleRunner;

        public Holder(SingleRunner singleRunner, boolean z) {
            singleRunner.getClass();
            this.singleRunner = singleRunner;
            this.cancelPreviousInEqualPriority = z;
            this.mutex = new ch5();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object onFinish(mb4 mb4Var, e02<? super j59> e02Var) {
            SingleRunner$Holder$onFinish$1 singleRunner$Holder$onFinish$1;
            yg5 yg5Var;
            if (e02Var instanceof SingleRunner$Holder$onFinish$1) {
                singleRunner$Holder$onFinish$1 = (SingleRunner$Holder$onFinish$1) e02Var;
                int i = singleRunner$Holder$onFinish$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    singleRunner$Holder$onFinish$1.label = i - Integer.MIN_VALUE;
                } else {
                    singleRunner$Holder$onFinish$1 = new SingleRunner$Holder$onFinish$1(this, e02Var);
                }
            } else {
                singleRunner$Holder$onFinish$1 = new SingleRunner$Holder$onFinish$1(this, e02Var);
            }
            Object obj = singleRunner$Holder$onFinish$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = singleRunner$Holder$onFinish$1.label;
            if (i2 == 0) {
                r57.b(obj);
                yg5Var = this.mutex;
                singleRunner$Holder$onFinish$1.L$0 = mb4Var;
                singleRunner$Holder$onFinish$1.L$1 = yg5Var;
                singleRunner$Holder$onFinish$1.label = 1;
                if (yg5Var.lock(null, singleRunner$Holder$onFinish$1) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                yg5 yg5Var2 = (yg5) singleRunner$Holder$onFinish$1.L$1;
                mb4 mb4Var2 = (mb4) singleRunner$Holder$onFinish$1.L$0;
                r57.b(obj);
                yg5Var = yg5Var2;
                mb4Var = mb4Var2;
            }
            try {
                if (mb4Var == this.previous) {
                    this.previous = null;
                }
                j59 j59Var = j59.a;
                return j59.a;
            } finally {
                yg5Var.unlock(null);
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, mb4] */
        /* JADX WARN: Type inference failed for: r10v1, types: [yg5] */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v14 */
        /* JADX WARN: Type inference failed for: r10v4, types: [yg5] */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v4, types: [mb4] */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v8 */
        public final Object tryEnqueue(int i, mb4 mb4Var, e02<? super Boolean> e02Var) {
            SingleRunner$Holder$tryEnqueue$1 singleRunner$Holder$tryEnqueue$1;
            ?? r2;
            yg5 yg5Var;
            ?? r0;
            int i2;
            if (e02Var instanceof SingleRunner$Holder$tryEnqueue$1) {
                singleRunner$Holder$tryEnqueue$1 = (SingleRunner$Holder$tryEnqueue$1) e02Var;
                int i3 = singleRunner$Holder$tryEnqueue$1.label;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    singleRunner$Holder$tryEnqueue$1.label = i3 - Integer.MIN_VALUE;
                } else {
                    singleRunner$Holder$tryEnqueue$1 = new SingleRunner$Holder$tryEnqueue$1(this, e02Var);
                }
            } else {
                singleRunner$Holder$tryEnqueue$1 = new SingleRunner$Holder$tryEnqueue$1(this, e02Var);
            }
            Object obj = singleRunner$Holder$tryEnqueue$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i4 = singleRunner$Holder$tryEnqueue$1.label;
            boolean z = true;
            try {
                if (i4 == 0) {
                    r57.b(obj);
                    yg5 yg5Var2 = this.mutex;
                    singleRunner$Holder$tryEnqueue$1.L$0 = mb4Var;
                    singleRunner$Holder$tryEnqueue$1.L$1 = yg5Var2;
                    singleRunner$Holder$tryEnqueue$1.I$0 = i;
                    singleRunner$Holder$tryEnqueue$1.label = 1;
                    if (yg5Var2.lock(null, singleRunner$Holder$tryEnqueue$1) != a32Var) {
                        r2 = mb4Var;
                        yg5Var = yg5Var2;
                    }
                    return a32Var;
                }
                if (i4 == 1) {
                    i = singleRunner$Holder$tryEnqueue$1.I$0;
                    yg5 yg5Var3 = (yg5) singleRunner$Holder$tryEnqueue$1.L$1;
                    mb4 mb4Var2 = (mb4) singleRunner$Holder$tryEnqueue$1.L$0;
                    r57.b(obj);
                    r2 = mb4Var2;
                    yg5Var = yg5Var3;
                } else {
                    if (i4 != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i = singleRunner$Holder$tryEnqueue$1.I$0;
                    yg5 yg5Var4 = (yg5) singleRunner$Holder$tryEnqueue$1.L$1;
                    mb4 mb4Var3 = (mb4) singleRunner$Holder$tryEnqueue$1.L$0;
                    r57.b(obj);
                    r0 = mb4Var3;
                    yg5Var = yg5Var4;
                }
                r2 = r0;
                this.previous = r2;
                this.previousPriority = i;
                mb4Var = yg5Var;
                Boolean boolValueOf = Boolean.valueOf(z);
                mb4Var.unlock(null);
                return boolValueOf;
                mb4 mb4Var4 = this.previous;
                if (mb4Var4 == null || !mb4Var4.isActive() || (i2 = this.previousPriority) < i || (i2 == i && this.cancelPreviousInEqualPriority)) {
                    if (mb4Var4 != null) {
                        mb4Var4.cancel(new CancelIsolatedRunnerException(this.singleRunner));
                    }
                    if (mb4Var4 != null) {
                        singleRunner$Holder$tryEnqueue$1.L$0 = r2;
                        singleRunner$Holder$tryEnqueue$1.L$1 = yg5Var;
                        singleRunner$Holder$tryEnqueue$1.I$0 = i;
                        singleRunner$Holder$tryEnqueue$1.label = 2;
                        if (mb4Var4.e0(singleRunner$Holder$tryEnqueue$1) != a32Var) {
                            r0 = r2;
                            yg5Var = yg5Var;
                            r2 = r0;
                        }
                        return a32Var;
                    }
                    this.previous = r2;
                    this.previousPriority = i;
                    mb4Var = yg5Var;
                } else {
                    z = false;
                    mb4Var = yg5Var;
                }
                Boolean boolValueOf2 = Boolean.valueOf(z);
                mb4Var.unlock(null);
                return boolValueOf2;
            } catch (Throwable th) {
                mb4Var.unlock(null);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.paging.SingleRunner$runInIsolation$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SingleRunner", f = "SingleRunner.kt", l = {43}, m = "runInIsolation", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleRunner.this.runInIsolation(0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.SingleRunner$runInIsolation$2, reason: invalid class name */
    @bd2(c = "androidx.paging.SingleRunner$runInIsolation$2", f = "SingleRunner.kt", l = {48, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 53, 53}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super j59>, Object> $block;
        final /* synthetic */ int $priority;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(int i, nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$priority = i;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = SingleRunner.this.new AnonymousClass2(this.$priority, this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
        
            if (r9 == r0) goto L34;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v14, types: [androidx.paging.SingleRunner$Holder] */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [mb4] */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v8, types: [mb4] */
        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.paging.SingleRunner$Holder] */
        /* JADX WARN: Type inference failed for: r9v0, types: [androidx.paging.SingleRunner$runInIsolation$2, e02, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v1, types: [androidx.paging.SingleRunner$runInIsolation$2, e02] */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object] */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                r9 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r9.label
                r2 = 0
                r3 = 4
                r4 = 3
                r5 = 2
                r6 = 1
                if (r1 == 0) goto L39
                if (r1 == r6) goto L31
                if (r1 == r5) goto L27
                if (r1 == r4) goto L22
                if (r1 == r3) goto L19
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r9)
                return r2
            L19:
                java.lang.Object r9 = r9.L$0
                java.lang.Throwable r9 = (java.lang.Throwable) r9
                defpackage.r57.b(r10)
                goto L9c
            L22:
                defpackage.r57.b(r10)
                goto L9d
            L27:
                java.lang.Object r1 = r9.L$0
                mb4 r1 = (defpackage.mb4) r1
                defpackage.r57.b(r10)     // Catch: java.lang.Throwable -> L2f
                goto L79
            L2f:
                r10 = move-exception
                goto L8a
            L31:
                java.lang.Object r1 = r9.L$0
                mb4 r1 = (defpackage.mb4) r1
                defpackage.r57.b(r10)
                goto L64
            L39:
                defpackage.r57.b(r10)
                java.lang.Object r10 = r9.L$0
                y22 r10 = (defpackage.y22) r10
                o22 r10 = r10.getCoroutineContext()
                mb4$a r1 = mb4.a.b
                o22$a r10 = r10.get(r1)
                if (r10 == 0) goto La0
                mb4 r10 = (defpackage.mb4) r10
                androidx.paging.SingleRunner r1 = androidx.paging.SingleRunner.this
                androidx.paging.SingleRunner$Holder r1 = androidx.paging.SingleRunner.access$getHolder$p(r1)
                int r7 = r9.$priority
                r9.L$0 = r10
                r9.label = r6
                java.lang.Object r1 = r1.tryEnqueue(r7, r10, r9)
                if (r1 != r0) goto L61
                goto L9a
            L61:
                r8 = r1
                r1 = r10
                r10 = r8
            L64:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L9d
                nl3<e02<? super j59>, java.lang.Object> r10 = r9.$block     // Catch: java.lang.Throwable -> L2f
                r9.L$0 = r1     // Catch: java.lang.Throwable -> L2f
                r9.label = r5     // Catch: java.lang.Throwable -> L2f
                java.lang.Object r10 = r10.invoke(r9)     // Catch: java.lang.Throwable -> L2f
                if (r10 != r0) goto L79
                goto L9a
            L79:
                androidx.paging.SingleRunner r10 = androidx.paging.SingleRunner.this
                androidx.paging.SingleRunner$Holder r10 = androidx.paging.SingleRunner.access$getHolder$p(r10)
                r9.L$0 = r2
                r9.label = r4
                java.lang.Object r9 = r10.onFinish(r1, r9)
                if (r9 != r0) goto L9d
                goto L9a
            L8a:
                androidx.paging.SingleRunner r2 = androidx.paging.SingleRunner.this
                androidx.paging.SingleRunner$Holder r2 = androidx.paging.SingleRunner.access$getHolder$p(r2)
                r9.L$0 = r10
                r9.label = r3
                java.lang.Object r9 = r2.onFinish(r1, r9)
                if (r9 != r0) goto L9b
            L9a:
                return r0
            L9b:
                r9 = r10
            L9c:
                throw r9
            L9d:
                j59 r9 = defpackage.j59.a
                return r9
            La0:
                java.lang.String r9 = "Internal error. coroutineScope should've created a job."
                defpackage.ah.f(r9)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public SingleRunner(boolean z) {
        this.holder = new Holder(this, z);
    }

    public static /* synthetic */ Object runInIsolation$default(SingleRunner singleRunner, int i, nl3 nl3Var, e02 e02Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return singleRunner.runInIsolation(i, nl3Var, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.paging.SingleRunner] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public final Object runInIsolation(int i, nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        try {
            if (i3 == 0) {
                r57.b(obj);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(i, nl3Var, null);
                anonymousClass1.label = 1;
                Object objC = z22.c(anonymousClass2, anonymousClass1);
                this = objC;
                if (objC == a32Var) {
                    return a32Var;
                }
            } else {
                if (i3 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this = this;
            }
        } catch (CancelIsolatedRunnerException e) {
            if (e.getRunner() != this) {
                throw e;
            }
        }
        return j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public SingleRunner() {
        this(false, 1, null);
    }

    public /* synthetic */ SingleRunner(boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z);
    }
}
