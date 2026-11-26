package androidx.lifecycle;

import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c31;
import defpackage.ch5;
import defpackage.e02;
import defpackage.fg;
import defpackage.gu3;
import defpackage.j59;
import defpackage.mb4;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r07;
import defpackage.r57;
import defpackage.uy4;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z22;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
public final class RepeatOnLifecycleKt {

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {83}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<y22, e02<? super j59>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
        @bd2(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {WebmConstants.MkvEbmlElement.BLOCK}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ bm3<y22, e02<? super j59>, Object> $block;
            final /* synthetic */ Lifecycle.State $state;
            final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, y22 y22Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$this_repeatOnLifecycle = lifecycle;
                this.$state = state;
                this.$$this$coroutineScope = y22Var;
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:23:0x0095  */
            /* JADX WARN: Code duplicated, block: B:26:0x009e  */
            /* JADX WARN: Code duplicated, block: B:33:0x00af  */
            /* JADX WARN: Code duplicated, block: B:36:0x00b8  */
            /* JADX WARN: Code duplicated, block: B:42:? A[SYNTHETIC] */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v3, types: [T, androidx.lifecycle.LifecycleObserver, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) throws Throwable {
                r07 r07Var;
                Throwable th;
                r07 r07Var2;
                mb4 mb4Var;
                LifecycleEventObserver lifecycleEventObserver;
                mb4 mb4Var2;
                LifecycleEventObserver lifecycleEventObserver2;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r07Var = (r07) this.L$1;
                    r07Var2 = (r07) this.L$0;
                    try {
                        r57.b(obj);
                        mb4Var2 = (mb4) r07Var2.b;
                        if (mb4Var2 != null) {
                            mb4Var2.cancel(null);
                        }
                        lifecycleEventObserver2 = (LifecycleEventObserver) r07Var.b;
                        if (lifecycleEventObserver2 != null) {
                            this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                        }
                        return j59.a;
                    } catch (Throwable th2) {
                        th = th2;
                        mb4Var = (mb4) r07Var2.b;
                        if (mb4Var != null) {
                            mb4Var.cancel(null);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) r07Var.b;
                        if (lifecycleEventObserver != null) {
                            throw th;
                        }
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                        throw th;
                    }
                }
                r57.b(obj);
                if (this.$this_repeatOnLifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                    return j59.a;
                }
                final r07 r07Var3 = new r07();
                r07Var = new r07();
                try {
                    Lifecycle.State state = this.$state;
                    Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                    final y22 y22Var = this.$$this$coroutineScope;
                    final bm3<y22, e02<? super j59>, Object> bm3Var = this.$block;
                    this.L$0 = r07Var3;
                    this.L$1 = r07Var;
                    this.L$2 = state;
                    this.L$3 = lifecycle;
                    this.L$4 = y22Var;
                    this.L$5 = bm3Var;
                    this.label = 1;
                    final c31 c31Var = new c31(1, zya.b(this));
                    c31Var.u();
                    Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                    final Lifecycle.Event eventUpTo = companion.upTo(state);
                    final Lifecycle.Event eventDownFrom = companion.downFrom(state);
                    final ch5 ch5Var = new ch5();
                    ?? r3 = new LifecycleEventObserver() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
                        @bd2(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_MORE, 110}, m = "invokeSuspend", v = 1)
                        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                            final /* synthetic */ bm3<y22, e02<? super j59>, Object> $block;
                            final /* synthetic */ yg5 $mutex;
                            Object L$0;
                            Object L$1;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            public AnonymousClass1(yg5 yg5Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
                                super(2, e02Var);
                                this.$mutex = yg5Var;
                                this.$block = bm3Var;
                            }

                            @Override // defpackage.cd0
                            public final e02<j59> create(Object obj, e02<?> e02Var) {
                                return new AnonymousClass1(this.$mutex, this.$block, e02Var);
                            }

                            @Override // defpackage.bm3
                            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                            }

                            @Override // defpackage.cd0
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                yg5 yg5Var;
                                bm3<y22, e02<? super j59>, Object> bm3Var;
                                Throwable th;
                                yg5 yg5Var2;
                                a32 a32Var = a32.COROUTINE_SUSPENDED;
                                int i = this.label;
                                try {
                                    if (i == 0) {
                                        r57.b(obj);
                                        yg5Var = this.$mutex;
                                        bm3Var = this.$block;
                                        this.L$0 = yg5Var;
                                        this.L$1 = bm3Var;
                                        this.label = 1;
                                        if (yg5Var.lock(null, this) != a32Var) {
                                        }
                                        return a32Var;
                                    }
                                    if (i != 1) {
                                        if (i != 2) {
                                            ah.f("call to 'resume' before 'invoke' with coroutine");
                                            return null;
                                        }
                                        yg5Var2 = (yg5) this.L$0;
                                        try {
                                            r57.b(obj);
                                            j59 j59Var = j59.a;
                                            yg5Var2.unlock(null);
                                            return j59.a;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            yg5Var2.unlock(null);
                                            throw th;
                                        }
                                    }
                                    bm3Var = (bm3) this.L$1;
                                    yg5 yg5Var3 = (yg5) this.L$0;
                                    r57.b(obj);
                                    yg5Var = yg5Var3;
                                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(bm3Var, null);
                                    this.L$0 = yg5Var;
                                    this.L$1 = null;
                                    this.label = 2;
                                    if (z22.c(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) != a32Var) {
                                        yg5Var2 = yg5Var;
                                        j59 j59Var2 = j59.a;
                                        yg5Var2.unlock(null);
                                        return j59.a;
                                    }
                                    return a32Var;
                                } catch (Throwable th3) {
                                    yg5 yg5Var4 = yg5Var;
                                    th = th3;
                                    yg5Var2 = yg5Var4;
                                    yg5Var2.unlock(null);
                                    throw th;
                                }
                            }
                        }

                        /* JADX WARN: Type inference failed for: r3v4, types: [T, s68] */
                        @Override // androidx.lifecycle.LifecycleEventObserver
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            lifecycleOwner.getClass();
                            event.getClass();
                            if (event == eventUpTo) {
                                r07Var3.b = av0.c(y22Var, null, null, new AnonymousClass1(ch5Var, bm3Var, null), 3);
                                return;
                            }
                            if (event == eventDownFrom) {
                                mb4 mb4Var3 = r07Var3.b;
                                if (mb4Var3 != null) {
                                    mb4Var3.cancel(null);
                                }
                                r07Var3.b = null;
                            }
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                c31Var.resumeWith(j59.a);
                            }
                        }
                    };
                    r07Var.b = r3;
                    lifecycle.addObserver(r3);
                    if (c31Var.s() == a32Var) {
                        return a32Var;
                    }
                    r07Var2 = r07Var3;
                    mb4Var2 = (mb4) r07Var2.b;
                    if (mb4Var2 != null) {
                        mb4Var2.cancel(null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) r07Var.b;
                    if (lifecycleEventObserver2 != null) {
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                    }
                    return j59.a;
                } catch (Throwable th3) {
                    th = th3;
                    r07Var2 = r07Var3;
                    mb4Var = (mb4) r07Var2.b;
                    if (mb4Var != null) {
                        mb4Var.cancel(null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) r07Var.b;
                    if (lifecycleEventObserver != null) {
                        throw th;
                    }
                    this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Lifecycle lifecycle, Lifecycle.State state, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$this_repeatOnLifecycle, this.$state, this.$block, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                oi2 oi2Var = qo2.a;
                gu3 gu3VarK0 = uy4.a.k0();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, y22Var, this.$block, null);
                this.label = 1;
                if (av0.d(gu3VarK0, anonymousClass1, this) == a32Var) {
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

    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objC;
        if (state != Lifecycle.State.INITIALIZED) {
            return (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED && (objC = z22.c(new AnonymousClass3(lifecycle, state, bm3Var, null), e02Var)) == a32.COROUTINE_SUSPENDED) ? objC : j59.a;
        }
        fg.c("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        return null;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objRepeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, bm3Var, e02Var);
        return objRepeatOnLifecycle == a32.COROUTINE_SUSPENDED ? objRepeatOnLifecycle : j59.a;
    }
}
