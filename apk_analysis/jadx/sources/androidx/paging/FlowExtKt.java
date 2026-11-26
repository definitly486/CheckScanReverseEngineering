package androidx.paging;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.hd3;
import defpackage.hq1;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nb4;
import defpackage.pg8;
import defpackage.px;
import defpackage.qb4;
import defpackage.r07;
import defpackage.r57;
import defpackage.tb7;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class FlowExtKt {
    private static final Object NULL = new Object();

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleFlatMapLatest$1, reason: invalid class name */
    @bd2(c = "androidx.paging.FlowExtKt$simpleFlatMapLatest$1", f = "FlowExt.kt", l = {86, 86}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<R, T> extends pg8 implements dm3<id3<? super R>, T, e02<? super j59>, Object> {
        final /* synthetic */ bm3<T, e02<? super hd3<? extends R>>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(bm3<? super T, ? super e02<? super hd3<? extends R>>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.$transform = bm3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super R> id3Var, T t, e02<? super j59> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, e02Var);
            anonymousClass1.L$0 = id3Var;
            anonymousClass1.L$1 = t;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$simpleFlatMapLatest$1<R, T> for r5v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1f
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r6)
                goto L44
            L10:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                r5 = 0
                return r5
            L17:
                java.lang.Object r1 = r5.L$0
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r6)
                goto L36
            L1f:
                defpackage.r57.b(r6)
                java.lang.Object r6 = r5.L$0
                r1 = r6
                id3 r1 = (defpackage.id3) r1
                java.lang.Object r6 = r5.L$1
                bm3<T, e02<? super hd3<? extends R>>, java.lang.Object> r4 = r5.$transform
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r4.invoke(r6, r5)
                if (r6 != r0) goto L36
                goto L43
            L36:
                hd3 r6 = (defpackage.hd3) r6
                r3 = 0
                r5.L$0 = r3
                r5.label = r2
                java.lang.Object r5 = defpackage.px.f(r1, r6, r5)
                if (r5 != r0) goto L44
            L43:
                return r0
            L44:
                j59 r5 = defpackage.j59.a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$simpleFlatMapLatest$1<R, T> for r2v2 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r3) {
            /*
                r2 = this;
                java.lang.Object r3 = r2.L$0
                id3 r3 = (defpackage.id3) r3
                java.lang.Object r0 = r2.L$1
                bm3<T, e02<? super hd3<? extends R>>, java.lang.Object> r1 = r2.$transform
                java.lang.Object r0 = r1.invoke(r0, r2)
                hd3 r0 = (defpackage.hd3) r0
                defpackage.px.f(r3, r0, r2)
                j59 r2 = defpackage.j59.a
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.AnonymousClass1.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleMapLatest$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.FlowExtKt$simpleMapLatest$1", f = "FlowExt.kt", l = {91, 91}, m = "invokeSuspend", v = 1)
    public static final class C06981<R, T> extends pg8 implements dm3<id3<? super R>, T, e02<? super j59>, Object> {
        final /* synthetic */ bm3<T, e02<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06981(bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super C06981> e02Var) {
            super(3, e02Var);
            this.$transform = bm3Var;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super R> id3Var, T t, e02<? super j59> e02Var) {
            C06981 c06981 = new C06981(this.$transform, e02Var);
            c06981.L$0 = id3Var;
            c06981.L$1 = t;
            return c06981.invokeSuspend(j59.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$simpleMapLatest$1<R, T> for r5v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1f
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r6)
                goto L42
            L10:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                r5 = 0
                return r5
            L17:
                java.lang.Object r1 = r5.L$0
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r6)
                goto L36
            L1f:
                defpackage.r57.b(r6)
                java.lang.Object r6 = r5.L$0
                r1 = r6
                id3 r1 = (defpackage.id3) r1
                java.lang.Object r6 = r5.L$1
                bm3<T, e02<? super R>, java.lang.Object> r4 = r5.$transform
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r4.invoke(r6, r5)
                if (r6 != r0) goto L36
                goto L41
            L36:
                r3 = 0
                r5.L$0 = r3
                r5.label = r2
                java.lang.Object r5 = r1.emit(r6, r5)
                if (r5 != r0) goto L42
            L41:
                return r0
            L42:
                j59 r5 = defpackage.j59.a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C06981.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$simpleMapLatest$1<R, T> for r2v2 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r3) {
            /*
                r2 = this;
                java.lang.Object r3 = r2.L$0
                id3 r3 = (defpackage.id3) r3
                java.lang.Object r0 = r2.L$1
                bm3<T, e02<? super R>, java.lang.Object> r1 = r2.$transform
                java.lang.Object r0 = r1.invoke(r0, r2)
                r3.emit(r0, r2)
                j59 r2 = defpackage.j59.a
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C06981.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleRunningReduce$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.FlowExtKt$simpleRunningReduce$1", f = "FlowExt.kt", l = {63}, m = "invokeSuspend", v = 1)
    public static final class C06991<T> extends pg8 implements bm3<id3<? super T>, e02<? super j59>, Object> {
        final /* synthetic */ dm3<T, T, e02<? super T>, Object> $operation;
        final /* synthetic */ hd3<T> $this_simpleRunningReduce;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleRunningReduce$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00961<T> implements id3 {
            final /* synthetic */ id3<T> $$this$flow;
            final /* synthetic */ r07<Object> $accumulator;
            final /* synthetic */ dm3<T, T, e02<? super T>, Object> $operation;

            /* JADX WARN: Multi-variable type inference failed */
            public C00961(r07<Object> r07Var, dm3<? super T, ? super T, ? super e02<? super T>, ? extends Object> dm3Var, id3<? super T> id3Var) {
                this.$accumulator = r07Var;
                this.$operation = dm3Var;
                this.$$this$flow = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
            
                if (r9.emit(r8, r0) == r1) goto L26;
             */
            @Override // defpackage.id3
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(T r9, defpackage.e02<? super defpackage.j59> r10) {
                /*
                    r8 = this;
                    boolean r0 = r10 instanceof androidx.paging.FlowExtKt$simpleRunningReduce$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r10
                    androidx.paging.FlowExtKt$simpleRunningReduce$1$1$emit$1 r0 = (androidx.paging.FlowExtKt$simpleRunningReduce$1$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.paging.FlowExtKt$simpleRunningReduce$1$1$emit$1 r0 = new androidx.paging.FlowExtKt$simpleRunningReduce$1$1$emit$1
                    r0.<init>(r8, r10)
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
                    goto L71
                L2b:
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r8)
                    return r3
                L31:
                    java.lang.Object r9 = r0.L$0
                    r07 r9 = (defpackage.r07) r9
                    defpackage.r57.b(r10)
                    goto L5b
                L39:
                    defpackage.r57.b(r10)
                    r07<java.lang.Object> r10 = r8.$accumulator
                    T r2 = r10.b
                    java.lang.Object r6 = androidx.paging.FlowExtKt.access$getNULL$p()
                    if (r2 != r6) goto L47
                    goto L5e
                L47:
                    dm3<T, T, e02<? super T>, java.lang.Object> r2 = r8.$operation
                    r07<java.lang.Object> r6 = r8.$accumulator
                    T r6 = r6.b
                    r0.L$0 = r10
                    r0.label = r5
                    java.lang.Object r9 = r2.invoke(r6, r9, r0)
                    if (r9 != r1) goto L58
                    goto L70
                L58:
                    r7 = r10
                    r10 = r9
                    r9 = r7
                L5b:
                    r7 = r10
                    r10 = r9
                    r9 = r7
                L5e:
                    r10.b = r9
                    id3<T> r9 = r8.$$this$flow
                    r07<java.lang.Object> r8 = r8.$accumulator
                    T r8 = r8.b
                    r0.L$0 = r3
                    r0.label = r4
                    java.lang.Object r8 = r9.emit(r8, r0)
                    if (r8 != r1) goto L71
                L70:
                    return r1
                L71:
                    j59 r8 = defpackage.j59.a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C06991.C00961.emit(java.lang.Object, e02):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06991(hd3<? extends T> hd3Var, dm3<? super T, ? super T, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super C06991> e02Var) {
            super(2, e02Var);
            this.$this_simpleRunningReduce = hd3Var;
            this.$operation = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06991 c06991 = new C06991(this.$this_simpleRunningReduce, this.$operation, e02Var);
            c06991.L$0 = obj;
            return c06991;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super T> id3Var, e02<? super j59> e02Var) {
            return ((C06991) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                id3 id3Var = (id3) this.L$0;
                r07 r07Var = new r07();
                r07Var.b = (T) FlowExtKt.NULL;
                hd3<T> hd3Var = this.$this_simpleRunningReduce;
                C00961 c00961 = new C00961(r07Var, this.$operation, id3Var);
                this.label = 1;
                if (hd3Var.collect(c00961, this) == a32Var) {
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

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleScan$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.FlowExtKt$simpleScan$1", f = "FlowExt.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 52}, m = "invokeSuspend", v = 1)
    public static final class C07001<R> extends pg8 implements bm3<id3<? super R>, e02<? super j59>, Object> {
        final /* synthetic */ R $initial;
        final /* synthetic */ dm3<R, T, e02<? super R>, Object> $operation;
        final /* synthetic */ hd3<T> $this_simpleScan;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleScan$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00971<T> implements id3 {
            final /* synthetic */ id3<R> $$this$flow;
            final /* synthetic */ r07<R> $accumulator;
            final /* synthetic */ dm3<R, T, e02<? super R>, Object> $operation;

            /* JADX WARN: Multi-variable type inference failed */
            public C00971(r07<R> r07Var, dm3<? super R, ? super T, ? super e02<? super R>, ? extends Object> dm3Var, id3<? super R> id3Var) {
                this.$accumulator = r07Var;
                this.$operation = dm3Var;
                this.$$this$flow = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
            
                if (r9.emit(r8, r0) == r1) goto L22;
             */
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // defpackage.id3
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(T r9, defpackage.e02<? super defpackage.j59> r10) {
                /*
                    r8 = this;
                    boolean r0 = r10 instanceof androidx.paging.FlowExtKt$simpleScan$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r10
                    androidx.paging.FlowExtKt$simpleScan$1$1$emit$1 r0 = (androidx.paging.FlowExtKt$simpleScan$1$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.paging.FlowExtKt$simpleScan$1$1$emit$1 r0 = new androidx.paging.FlowExtKt$simpleScan$1$1$emit$1
                    r0.<init>(r8, r10)
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
                    goto L63
                L2b:
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r8)
                    return r3
                L31:
                    java.lang.Object r9 = r0.L$0
                    r07 r9 = (defpackage.r07) r9
                    defpackage.r57.b(r10)
                    goto L50
                L39:
                    defpackage.r57.b(r10)
                    r07<R> r10 = r8.$accumulator
                    dm3<R, T, e02<? super R>, java.lang.Object> r2 = r8.$operation
                    T r6 = r10.b
                    r0.L$0 = r10
                    r0.label = r5
                    java.lang.Object r9 = r2.invoke(r6, r9, r0)
                    if (r9 != r1) goto L4d
                    goto L62
                L4d:
                    r7 = r10
                    r10 = r9
                    r9 = r7
                L50:
                    r9.b = r10
                    id3<R> r9 = r8.$$this$flow
                    r07<R> r8 = r8.$accumulator
                    T r8 = r8.b
                    r0.L$0 = r3
                    r0.label = r4
                    java.lang.Object r8 = r9.emit(r8, r0)
                    if (r8 != r1) goto L63
                L62:
                    return r1
                L63:
                    j59 r8 = defpackage.j59.a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C07001.C00971.emit(java.lang.Object, e02):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07001(R r, hd3<? extends T> hd3Var, dm3<? super R, ? super T, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super C07001> e02Var) {
            super(2, e02Var);
            this.$initial = r;
            this.$this_simpleScan = hd3Var;
            this.$operation = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C07001 c07001 = new C07001(this.$initial, this.$this_simpleScan, this.$operation, e02Var);
            c07001.L$0 = obj;
            return c07001;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super R> id3Var, e02<? super j59> e02Var) {
            return ((C07001) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.FlowExtKt$simpleScan$1<R> for r7v3 'this'  e02
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r7.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L23
                if (r1 == r4) goto L17
                if (r1 != r3) goto L11
                defpackage.r57.b(r8)
                goto L57
            L11:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                return r2
            L17:
                java.lang.Object r1 = r7.L$1
                r07 r1 = (defpackage.r07) r1
                java.lang.Object r4 = r7.L$0
                id3 r4 = (defpackage.id3) r4
                defpackage.r57.b(r8)
                goto L41
            L23:
                defpackage.r57.b(r8)
                java.lang.Object r8 = r7.L$0
                id3 r8 = (defpackage.id3) r8
                r07 r1 = new r07
                r1.<init>()
                R r5 = r7.$initial
                r1.b = r5
                r7.L$0 = r8
                r7.L$1 = r1
                r7.label = r4
                java.lang.Object r4 = r8.emit(r5, r7)
                if (r4 != r0) goto L40
                goto L56
            L40:
                r4 = r8
            L41:
                hd3<T> r8 = r7.$this_simpleScan
                androidx.paging.FlowExtKt$simpleScan$1$1 r5 = new androidx.paging.FlowExtKt$simpleScan$1$1
                dm3<R, T, e02<? super R>, java.lang.Object> r6 = r7.$operation
                r5.<init>(r1, r6, r4)
                r7.L$0 = r2
                r7.L$1 = r2
                r7.label = r3
                java.lang.Object r7 = r8.collect(r5, r7)
                if (r7 != r0) goto L57
            L56:
                return r0
            L57:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C07001.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleTransformLatest$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.FlowExtKt$simpleTransformLatest$1", f = "FlowExt.kt", l = {80}, m = "invokeSuspend", v = 1)
    public static final class C07011<R> extends pg8 implements bm3<SimpleProducerScope<R>, e02<? super j59>, Object> {
        final /* synthetic */ hd3<T> $this_simpleTransformLatest;
        final /* synthetic */ dm3<id3<? super R>, T, e02<? super j59>, Object> $transform;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* JADX INFO: renamed from: androidx.paging.FlowExtKt$simpleTransformLatest$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.FlowExtKt$simpleTransformLatest$1$1", f = "FlowExt.kt", l = {80}, m = "invokeSuspend", v = 1)
        public static final class C00981<T> extends pg8 implements bm3<T, e02<? super j59>, Object> {
            final /* synthetic */ ChannelFlowCollector<R> $collector;
            final /* synthetic */ dm3<id3<? super R>, T, e02<? super j59>, Object> $transform;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00981(dm3<? super id3<? super R>, ? super T, ? super e02<? super j59>, ? extends Object> dm3Var, ChannelFlowCollector<R> channelFlowCollector, e02<? super C00981> e02Var) {
                super(2, e02Var);
                this.$transform = dm3Var;
                this.$collector = channelFlowCollector;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00981 c00981 = new C00981(this.$transform, this.$collector, e02Var);
                c00981.L$0 = obj;
                return c00981;
            }

            @Override // defpackage.bm3
            public final Object invoke(T t, e02<? super j59> e02Var) {
                return ((C00981) create(t, e02Var)).invokeSuspend(j59.a);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$simpleTransformLatest$1$1<T> for r4v3 'this'  java.lang.Object
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // defpackage.cd0
            public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                /*
                    r4 = this;
                    a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r4.label
                    r2 = 1
                    if (r1 == 0) goto L14
                    if (r1 != r2) goto Ld
                    defpackage.r57.b(r5)
                    goto L26
                Ld:
                    java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r4)
                    r4 = 0
                    return r4
                L14:
                    defpackage.r57.b(r5)
                    java.lang.Object r5 = r4.L$0
                    dm3<id3<? super R>, T, e02<? super j59>, java.lang.Object> r1 = r4.$transform
                    androidx.paging.ChannelFlowCollector<R> r3 = r4.$collector
                    r4.label = r2
                    java.lang.Object r4 = r1.invoke(r3, r5, r4)
                    if (r4 != r0) goto L26
                    return r0
                L26:
                    j59 r4 = defpackage.j59.a
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.C07011.C00981.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07011(hd3<? extends T> hd3Var, dm3<? super id3<? super R>, ? super T, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super C07011> e02Var) {
            super(2, e02Var);
            this.$this_simpleTransformLatest = hd3Var;
            this.$transform = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C07011 c07011 = new C07011(this.$this_simpleTransformLatest, this.$transform, e02Var);
            c07011.L$0 = obj;
            return c07011;
        }

        @Override // defpackage.bm3
        public final Object invoke(SimpleProducerScope<R> simpleProducerScope, e02<? super j59> e02Var) {
            return ((C07011) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
                hd3<T> hd3Var = this.$this_simpleTransformLatest;
                C00981 c00981 = new C00981(this.$transform, new ChannelFlowCollector(simpleProducerScope), null);
                this.label = 1;
                if (px.c(hd3Var, c00981, this) == a32Var) {
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

    public static final <T1, T2, R> Object combineWithoutBatching(hd3<? extends T1> hd3Var, hd3<? extends T2> hd3Var2, fm3<? super T1, ? super T2, ? super CombineSource, ? super e02<? super R>, ? extends Object> fm3Var, e02<? super hd3<? extends R>> e02Var) {
        return SimpleChannelFlowKt.simpleChannelFlow(new AnonymousClass2(hd3Var, hd3Var2, fm3Var, null));
    }

    public static final <T, R> hd3<R> simpleFlatMapLatest(hd3<? extends T> hd3Var, bm3<? super T, ? super e02<? super hd3<? extends R>>, ? extends Object> bm3Var) {
        hd3Var.getClass();
        bm3Var.getClass();
        return simpleTransformLatest(hd3Var, new AnonymousClass1(bm3Var, null));
    }

    public static final <T, R> hd3<R> simpleMapLatest(hd3<? extends T> hd3Var, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var) {
        hd3Var.getClass();
        bm3Var.getClass();
        return simpleTransformLatest(hd3Var, new C06981(bm3Var, null));
    }

    public static final <T> hd3<T> simpleRunningReduce(hd3<? extends T> hd3Var, dm3<? super T, ? super T, ? super e02<? super T>, ? extends Object> dm3Var) {
        hd3Var.getClass();
        dm3Var.getClass();
        return new tb7(new C06991(hd3Var, dm3Var, null));
    }

    public static final <T, R> hd3<R> simpleScan(hd3<? extends T> hd3Var, R r, dm3<? super R, ? super T, ? super e02<? super R>, ? extends Object> dm3Var) {
        hd3Var.getClass();
        dm3Var.getClass();
        return new tb7(new C07001(r, hd3Var, dm3Var, null));
    }

    public static final <T, R> hd3<R> simpleTransformLatest(hd3<? extends T> hd3Var, dm3<? super id3<? super R>, ? super T, ? super e02<? super j59>, ? extends Object> dm3Var) {
        hd3Var.getClass();
        dm3Var.getClass();
        return SimpleChannelFlowKt.simpleChannelFlow(new C07011(hd3Var, dm3Var, null));
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.paging.FlowExtKt$combineWithoutBatching$2, reason: invalid class name */
    @bd2(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2", f = "FlowExt.kt", l = {146}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<R> extends pg8 implements bm3<SimpleProducerScope<R>, e02<? super j59>, Object> {
        final /* synthetic */ hd3<T2> $otherFlow;
        final /* synthetic */ hd3<T1> $this_combineWithoutBatching;
        final /* synthetic */ fm3<T1, T2, CombineSource, e02<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(hd3<? extends T1> hd3Var, hd3<? extends T2> hd3Var2, fm3<? super T1, ? super T2, ? super CombineSource, ? super e02<? super R>, ? extends Object> fm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_combineWithoutBatching = hd3Var;
            this.$otherFlow = hd3Var2;
            this.$transform = fm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_combineWithoutBatching, this.$otherFlow, this.$transform, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(SimpleProducerScope<R> simpleProducerScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
                AtomicInteger atomicInteger = new AtomicInteger(2);
                UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(simpleProducerScope, this.$transform, null));
                nb4 nb4VarA = qb4.a();
                int i2 = 0;
                hd3[] hd3VarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
                int i3 = 0;
                while (i3 < 2) {
                    av0.c(simpleProducerScope, nb4VarA, null, new FlowExtKt$combineWithoutBatching$2$1$1(hd3VarArr[i3], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i2, null), 2);
                    i3++;
                    i2++;
                }
                C00952 c00952 = new C00952(nb4VarA);
                this.label = 1;
                if (simpleProducerScope.awaitClose(c00952, this) == a32Var) {
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

        public final Object invokeSuspend$$forInline(Object obj) {
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            AtomicInteger atomicInteger = new AtomicInteger(2);
            UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(simpleProducerScope, this.$transform, null));
            nb4 nb4VarA = qb4.a();
            int i = 0;
            hd3[] hd3VarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
            int i2 = 0;
            while (i2 < 2) {
                av0.c(simpleProducerScope, nb4VarA, null, new FlowExtKt$combineWithoutBatching$2$1$1(hd3VarArr[i2], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i, null), 2);
                j59 j59Var = j59.a;
                i2++;
                i++;
            }
            simpleProducerScope.awaitClose(new C00952(nb4VarA), this);
            return j59.a;
        }

        /* JADX INFO: renamed from: androidx.paging.FlowExtKt$combineWithoutBatching$2$2, reason: invalid class name and collision with other inner class name */
        public static final class C00952 implements ll3<j59> {
            final /* synthetic */ hq1 $parentJob;

            public C00952(hq1 hq1Var) {
                this.$parentJob = hq1Var;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.$parentJob.cancel(null);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        }
    }
}
