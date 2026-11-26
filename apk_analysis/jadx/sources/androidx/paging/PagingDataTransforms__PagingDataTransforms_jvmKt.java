package androidx.paging;

import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class PagingDataTransforms__PagingDataTransforms_jvmKt {

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1", f = "PagingDataTransforms.jvm.kt", l = {WebmConstants.MkvEbmlElement.PIXEL_WIDTH}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<R, T> extends pg8 implements dm3<T, T, e02<? super R>, Object> {
        final /* synthetic */ Executor $executor;
        final /* synthetic */ bm3<T, T, R> $generator;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$insertSeparators$1$1", f = "PagingDataTransforms.jvm.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class C01041 extends pg8 implements bm3<y22, e02<? super R>, Object> {
            final /* synthetic */ T $after;
            final /* synthetic */ T $before;
            final /* synthetic */ bm3<T, T, R> $generator;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C01041(bm3<? super T, ? super T, ? extends R> bm3Var, T t, T t2, e02<? super C01041> e02Var) {
                super(2, e02Var);
                this.$generator = bm3Var;
                this.$before = t;
                this.$after = t2;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C01041(this.$generator, this.$before, this.$after, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
                return ((C01041) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label == 0) {
                    r57.b(obj);
                    return this.$generator.invoke(this.$before, this.$after);
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Executor executor, bm3<? super T, ? super T, ? extends R> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.$executor = executor;
            this.$generator = bm3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(T t, T t2, e02<? super R> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$executor, this.$generator, e02Var);
            anonymousClass1.L$0 = t;
            anonymousClass1.L$1 = t2;
            return anonymousClass1.invokeSuspend(j59.a);
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
            Object obj2 = this.L$0;
            Object obj3 = this.L$1;
            r22 r22VarX = aq5.x(this.$executor);
            C01041 c01041 = new C01041(this.$generator, obj2, obj3, null);
            this.L$0 = null;
            this.label = 1;
            Object objD = av0.d(r22VarX, c01041, this);
            return objD == a32Var ? a32Var : objD;
        }
    }

    public static final <T> PagingData<T> filter(PagingData<T> pagingData, final Executor executor, final nl3<? super T, Boolean> nl3Var) {
        pagingData.getClass();
        executor.getClass();
        nl3Var.getClass();
        final hd3<PageEvent<T>> flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData<>(new hd3<PageEvent<T>>() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ Executor $executor$inlined;
                final /* synthetic */ nl3 $predicate$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2", f = "PagingDataTransforms.jvm.kt", l = {52, 50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, Executor executor, nl3 nl3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$executor$inlined = executor;
                    this.$predicate$inlined = nl3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
                
                    if (r8.emit(r10, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r9, defpackage.e02 r10) throws java.lang.Throwable {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r10)
                        goto L66
                    L2b:
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r8)
                        return r3
                    L31:
                        java.lang.Object r8 = r0.L$0
                        id3 r8 = (defpackage.id3) r8
                        defpackage.r57.b(r10)
                        goto L5b
                    L39:
                        defpackage.r57.b(r10)
                        id3 r10 = r8.$this_unsafeFlow
                        androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
                        java.util.concurrent.Executor r2 = r8.$executor$inlined
                        r22 r2 = defpackage.aq5.x(r2)
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1 r6 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1
                        nl3 r8 = r8.$predicate$inlined
                        r6.<init>(r9, r8, r3)
                        r0.L$0 = r10
                        r0.label = r5
                        java.lang.Object r8 = defpackage.av0.d(r2, r6, r0)
                        if (r8 != r1) goto L58
                        goto L65
                    L58:
                        r7 = r10
                        r10 = r8
                        r8 = r7
                    L5b:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r8 = r8.emit(r10, r0)
                        if (r8 != r1) goto L66
                    L65:
                        return r1
                    L66:
                        j59 r8 = defpackage.j59.a
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, executor, nl3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <T, R> PagingData<R> flatMap(PagingData<T> pagingData, final Executor executor, final nl3<? super T, ? extends Iterable<? extends R>> nl3Var) {
        pagingData.getClass();
        executor.getClass();
        nl3Var.getClass();
        final hd3<PageEvent<T>> flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData<>(new hd3<PageEvent<R>>() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ Executor $executor$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;
                final /* synthetic */ nl3 $transform$inlined;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2", f = "PagingDataTransforms.jvm.kt", l = {52, 50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, Executor executor, nl3 nl3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$executor$inlined = executor;
                    this.$transform$inlined = nl3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
                
                    if (r8.emit(r10, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r9, defpackage.e02 r10) throws java.lang.Throwable {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r10)
                        goto L66
                    L2b:
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r8)
                        return r3
                    L31:
                        java.lang.Object r8 = r0.L$0
                        id3 r8 = (defpackage.id3) r8
                        defpackage.r57.b(r10)
                        goto L5b
                    L39:
                        defpackage.r57.b(r10)
                        id3 r10 = r8.$this_unsafeFlow
                        androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
                        java.util.concurrent.Executor r2 = r8.$executor$inlined
                        r22 r2 = defpackage.aq5.x(r2)
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1 r6 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1
                        nl3 r8 = r8.$transform$inlined
                        r6.<init>(r9, r8, r3)
                        r0.L$0 = r10
                        r0.label = r5
                        java.lang.Object r8 = defpackage.av0.d(r2, r6, r0)
                        if (r8 != r1) goto L58
                        goto L65
                    L58:
                        r7 = r10
                        r10 = r8
                        r8 = r7
                    L5b:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r8 = r8.emit(r10, r0)
                        if (r8 != r1) goto L66
                    L65:
                        return r1
                    L66:
                        j59 r8 = defpackage.j59.a
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, executor, nl3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <R, T extends R> PagingData<R> insertSeparators(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, Executor executor, bm3<? super T, ? super T, ? extends R> bm3Var) {
        pagingData.getClass();
        terminalSeparatorType.getClass();
        executor.getClass();
        bm3Var.getClass();
        return PagingDataTransforms__PagingDataTransformsKt.insertSeparators(pagingData, terminalSeparatorType, new AnonymousClass1(executor, bm3Var, null));
    }

    public static /* synthetic */ PagingData insertSeparators$default(PagingData pagingData, TerminalSeparatorType terminalSeparatorType, Executor executor, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            terminalSeparatorType = TerminalSeparatorType.FULLY_COMPLETE;
        }
        return PagingDataTransforms.insertSeparators(pagingData, terminalSeparatorType, executor, bm3Var);
    }

    public static final <T, R> PagingData<R> map(PagingData<T> pagingData, final Executor executor, final nl3<? super T, ? extends R> nl3Var) {
        pagingData.getClass();
        executor.getClass();
        nl3Var.getClass();
        final hd3<PageEvent<T>> flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData<>(new hd3<PageEvent<R>>() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ Executor $executor$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;
                final /* synthetic */ nl3 $transform$inlined;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2", f = "PagingDataTransforms.jvm.kt", l = {52, 50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, Executor executor, nl3 nl3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$executor$inlined = executor;
                    this.$transform$inlined = nl3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
                
                    if (r8.emit(r10, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r9, defpackage.e02 r10) throws java.lang.Throwable {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r10)
                        goto L66
                    L2b:
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r8)
                        return r3
                    L31:
                        java.lang.Object r8 = r0.L$0
                        id3 r8 = (defpackage.id3) r8
                        defpackage.r57.b(r10)
                        goto L5b
                    L39:
                        defpackage.r57.b(r10)
                        id3 r10 = r8.$this_unsafeFlow
                        androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
                        java.util.concurrent.Executor r2 = r8.$executor$inlined
                        r22 r2 = defpackage.aq5.x(r2)
                        androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$1$1 r6 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$1$1
                        nl3 r8 = r8.$transform$inlined
                        r6.<init>(r9, r8, r3)
                        r0.L$0 = r10
                        r0.label = r5
                        java.lang.Object r8 = defpackage.av0.d(r2, r6, r0)
                        if (r8 != r1) goto L58
                        goto L65
                    L58:
                        r7 = r10
                        r10 = r8
                        r8 = r7
                    L5b:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r8 = r8.emit(r10, r0)
                        if (r8 != r1) goto L66
                    L65:
                        return r1
                    L66:
                        j59 r8 = defpackage.j59.a
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$map$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, executor, nl3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <R, T extends R> PagingData<R> insertSeparators(PagingData<T> pagingData, Executor executor, bm3<? super T, ? super T, ? extends R> bm3Var) {
        pagingData.getClass();
        executor.getClass();
        bm3Var.getClass();
        return insertSeparators$default(pagingData, null, executor, bm3Var, 1, null);
    }
}
