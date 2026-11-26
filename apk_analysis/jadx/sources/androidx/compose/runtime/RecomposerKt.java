package androidx.compose.runtime;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class RecomposerKt {
    public static final int recomposerKey = 1000;
    private static final Object ProduceAnotherFrame = new Object();
    private static final Object FramePending = new Object();

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2, reason: invalid class name */
    @bd2(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2", f = "Recomposer.kt", l = {100, 102}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ dm3<y22, Recomposer, e02<? super R>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1", f = "Recomposer.kt", l = {99}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ Recomposer $recomposer;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Recomposer recomposer, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$recomposer = recomposer;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$recomposer, e02Var);
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
                    Recomposer recomposer = this.$recomposer;
                    this.label = 1;
                    if (recomposer.runRecomposeAndApplyChanges(this) == a32Var) {
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
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(dm3<? super y22, ? super Recomposer, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Recomposer recomposer;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                recomposer = new Recomposer(y22Var.getCoroutineContext());
                av0.c(y22Var, null, null, new AnonymousClass1(recomposer, null), 3);
                dm3<y22, Recomposer, e02<? super R>, Object> dm3Var = this.$block;
                this.L$0 = recomposer;
                this.label = 1;
                obj = dm3Var.invoke(y22Var, recomposer, this);
                if (obj != a32Var) {
                }
            }
            if (i != 1) {
                if (i != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj2 = this.L$0;
                r57.b(obj);
                return obj2;
            }
            recomposer = (Recomposer) this.L$0;
            r57.b(obj);
            recomposer.close();
            this.L$0 = obj;
            this.label = 2;
            return recomposer.join(this) == a32Var ? a32Var : obj;
        }
    }

    private static final long getRecomposerCompoundHashKey() {
        return 1000L;
    }

    public static final <R> Object withRunningRecomposer(dm3<? super y22, ? super Recomposer, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super R> e02Var) {
        return z22.c(new AnonymousClass2(dm3Var, null), e02Var);
    }
}
