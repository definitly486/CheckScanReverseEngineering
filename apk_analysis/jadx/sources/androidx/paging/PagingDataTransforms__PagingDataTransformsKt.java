package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class PagingDataTransforms__PagingDataTransformsKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$insertFooterItem$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$insertFooterItem$1", f = "PagingDataTransforms.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements dm3<T, T, e02<? super T>, Object> {
        final /* synthetic */ T $item;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(T t, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.$item = t;
        }

        @Override // defpackage.dm3
        public final Object invoke(T t, T t2, e02<? super T> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$item, e02Var);
            anonymousClass1.L$0 = t2;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            if (this.L$0 == null) {
                return this.$item;
            }
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$insertHeaderItem$1", f = "PagingDataTransforms.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C07091<T> extends pg8 implements dm3<T, T, e02<? super T>, Object> {
        final /* synthetic */ T $item;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07091(T t, e02<? super C07091> e02Var) {
            super(3, e02Var);
            this.$item = t;
        }

        @Override // defpackage.dm3
        public final Object invoke(T t, T t2, e02<? super T> e02Var) {
            C07091 c07091 = new C07091(this.$item, e02Var);
            c07091.L$0 = t;
            return c07091.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            if (this.L$0 == null) {
                return this.$item;
            }
            return null;
        }
    }

    public static final /* synthetic */ PagingData filter(PagingData pagingData, final bm3 bm3Var) {
        pagingData.getClass();
        bm3Var.getClass();
        final hd3 flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData(new hd3() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ bm3 $predicate$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2", f = "PagingDataTransforms.kt", l = {52, 50}, m = "emit", v = 1)
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

                public AnonymousClass2(id3 id3Var, bm3 bm3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$predicate$inlined = bm3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
                
                    if (r7.emit(r9, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r9)
                        goto L5b
                    L2b:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r7)
                        return r3
                    L31:
                        java.lang.Object r7 = r0.L$0
                        id3 r7 = (defpackage.id3) r7
                        defpackage.r57.b(r9)
                        goto L50
                    L39:
                        defpackage.r57.b(r9)
                        id3 r9 = r7.$this_unsafeFlow
                        androidx.paging.PageEvent r8 = (androidx.paging.PageEvent) r8
                        bm3 r7 = r7.$predicate$inlined
                        r0.L$0 = r9
                        r0.label = r5
                        java.lang.Object r7 = r8.filter(r7, r0)
                        if (r7 != r1) goto L4d
                        goto L5a
                    L4d:
                        r6 = r9
                        r9 = r7
                        r7 = r6
                    L50:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r7 = r7.emit(r9, r0)
                        if (r7 != r1) goto L5b
                    L5a:
                        return r1
                    L5b:
                        j59 r7 = defpackage.j59.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, bm3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final /* synthetic */ PagingData flatMap(PagingData pagingData, final bm3 bm3Var) {
        pagingData.getClass();
        bm3Var.getClass();
        final hd3 flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData(new hd3() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;
                final /* synthetic */ bm3 $transform$inlined;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2", f = "PagingDataTransforms.kt", l = {52, 50}, m = "emit", v = 1)
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

                public AnonymousClass2(id3 id3Var, bm3 bm3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$transform$inlined = bm3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
                
                    if (r7.emit(r9, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r9)
                        goto L5b
                    L2b:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r7)
                        return r3
                    L31:
                        java.lang.Object r7 = r0.L$0
                        id3 r7 = (defpackage.id3) r7
                        defpackage.r57.b(r9)
                        goto L50
                    L39:
                        defpackage.r57.b(r9)
                        id3 r9 = r7.$this_unsafeFlow
                        androidx.paging.PageEvent r8 = (androidx.paging.PageEvent) r8
                        bm3 r7 = r7.$transform$inlined
                        r0.L$0 = r9
                        r0.label = r5
                        java.lang.Object r7 = r8.flatMap(r7, r0)
                        if (r7 != r1) goto L4d
                        goto L5a
                    L4d:
                        r6 = r9
                        r9 = r7
                        r7 = r6
                    L50:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r7 = r7.emit(r9, r0)
                        if (r7 != r1) goto L5b
                    L5a:
                        return r1
                    L5b:
                        j59 r7 = defpackage.j59.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$flatMap$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, bm3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <T> PagingData<T> insertFooterItem(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, T t) {
        pagingData.getClass();
        terminalSeparatorType.getClass();
        t.getClass();
        return insertSeparators(pagingData, terminalSeparatorType, new AnonymousClass1(t, null));
    }

    public static /* synthetic */ PagingData insertFooterItem$default(PagingData pagingData, TerminalSeparatorType terminalSeparatorType, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            terminalSeparatorType = TerminalSeparatorType.FULLY_COMPLETE;
        }
        return PagingDataTransforms.insertFooterItem(pagingData, terminalSeparatorType, obj);
    }

    public static final <T> PagingData<T> insertHeaderItem(PagingData<T> pagingData, TerminalSeparatorType terminalSeparatorType, T t) {
        pagingData.getClass();
        terminalSeparatorType.getClass();
        t.getClass();
        return insertSeparators(pagingData, terminalSeparatorType, new C07091(t, null));
    }

    public static /* synthetic */ PagingData insertHeaderItem$default(PagingData pagingData, TerminalSeparatorType terminalSeparatorType, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            terminalSeparatorType = TerminalSeparatorType.FULLY_COMPLETE;
        }
        return PagingDataTransforms.insertHeaderItem(pagingData, terminalSeparatorType, obj);
    }

    public static final /* synthetic */ PagingData insertSeparators(PagingData pagingData, TerminalSeparatorType terminalSeparatorType, dm3 dm3Var) {
        pagingData.getClass();
        terminalSeparatorType.getClass();
        dm3Var.getClass();
        return new PagingData(SeparatorsKt.insertEventSeparators(pagingData.getFlow$paging_common(), terminalSeparatorType, dm3Var), pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static /* synthetic */ PagingData insertSeparators$default(PagingData pagingData, TerminalSeparatorType terminalSeparatorType, dm3 dm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            terminalSeparatorType = TerminalSeparatorType.FULLY_COMPLETE;
        }
        return insertSeparators(pagingData, terminalSeparatorType, dm3Var);
    }

    public static final /* synthetic */ PagingData map(PagingData pagingData, final bm3 bm3Var) {
        pagingData.getClass();
        bm3Var.getClass();
        final hd3 flow$paging_common = pagingData.getFlow$paging_common();
        return new PagingData(new hd3() { // from class: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1

            /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;
                final /* synthetic */ bm3 $transform$inlined;

                /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2", f = "PagingDataTransforms.kt", l = {52, 50}, m = "emit", v = 1)
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

                public AnonymousClass2(id3 id3Var, bm3 bm3Var) {
                    this.$this_unsafeFlow = id3Var;
                    this.$transform$inlined = bm3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
                
                    if (r7.emit(r9, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r9)
                        goto L5b
                    L2b:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r7)
                        return r3
                    L31:
                        java.lang.Object r7 = r0.L$0
                        id3 r7 = (defpackage.id3) r7
                        defpackage.r57.b(r9)
                        goto L50
                    L39:
                        defpackage.r57.b(r9)
                        id3 r9 = r7.$this_unsafeFlow
                        androidx.paging.PageEvent r8 = (androidx.paging.PageEvent) r8
                        bm3 r7 = r7.$transform$inlined
                        r0.L$0 = r9
                        r0.label = r5
                        java.lang.Object r7 = r8.map(r7, r0)
                        if (r7 != r1) goto L4d
                        goto L5a
                    L4d:
                        r6 = r9
                        r9 = r7
                        r7 = r6
                    L50:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r7 = r7.emit(r9, r0)
                        if (r7 != r1) goto L5b
                    L5a:
                        return r1
                    L5b:
                        j59 r7 = defpackage.j59.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = flow$paging_common.collect(new AnonymousClass2(id3Var, bm3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <T, R> PagingData<R> transform(PagingData<T> pagingData, bm3<? super PageEvent<T>, ? super e02<? super PageEvent<R>>, ? extends Object> bm3Var) {
        pagingData.getClass();
        bm3Var.getClass();
        return new PagingData<>(new PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1(pagingData.getFlow$paging_common(), bm3Var), pagingData.getUiReceiver$paging_common(), pagingData.getHintReceiver$paging_common(), null, 8, null);
    }

    public static final <T> PagingData<T> insertFooterItem(PagingData<T> pagingData, T t) {
        pagingData.getClass();
        t.getClass();
        return insertFooterItem$default(pagingData, null, t, 1, null);
    }

    public static final <T> PagingData<T> insertHeaderItem(PagingData<T> pagingData, T t) {
        pagingData.getClass();
        t.getClass();
        return insertHeaderItem$default(pagingData, null, t, 1, null);
    }
}
