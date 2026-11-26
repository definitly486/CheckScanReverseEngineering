package androidx.room.coroutines;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.c32;
import defpackage.e02;
import defpackage.fr3;
import defpackage.g02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.k57;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;

/* JADX INFO: loaded from: classes3.dex */
public final class RunBlockingUninterruptible_androidKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1", f = "RunBlockingUninterruptible.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1", f = "RunBlockingUninterruptible.android.kt", l = {52}, m = "invokeSuspend")
        public static final class C01131 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
            final /* synthetic */ xp1<T> $deferred;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C01131(xp1<T> xp1Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super C01131> e02Var) {
                super(2, e02Var);
                this.$deferred = xp1Var;
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01131 c01131 = new C01131(this.$deferred, this.$block, e02Var);
                c01131.L$0 = obj;
                return c01131;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C01131) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                xp1<T> xp1Var;
                xp1 xp1Var2;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    y22 y22Var = (y22) this.L$0;
                    xp1<T> xp1Var3 = this.$deferred;
                    bm3<y22, e02<? super T>, Object> bm3Var = this.$block;
                    try {
                        this.L$0 = xp1Var3;
                        this.label = 1;
                        obj = bm3Var.invoke(y22Var, this);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                        xp1Var2 = xp1Var3;
                    } catch (Throwable th) {
                        th = th;
                        xp1Var = xp1Var3;
                        obj = new k57.a(th);
                        xp1Var2 = xp1Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    xp1Var = (xp1) this.L$0;
                    try {
                        r57.b(obj);
                        xp1Var2 = xp1Var;
                    } catch (Throwable th2) {
                        th = th2;
                        obj = new k57.a(th);
                        xp1Var2 = xp1Var;
                    }
                }
                Throwable thA = k57.a(obj);
                if (thA == null) {
                    xp1Var2.f(obj);
                } else {
                    xp1Var2.e(thA);
                }
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2, reason: invalid class name */
        @bd2(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2", f = "RunBlockingUninterruptible.android.kt", l = {58}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super T>, Object> {
            final /* synthetic */ xp1<T> $deferred;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(xp1<T> xp1Var, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.$deferred = xp1Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass2(this.$deferred, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
                return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
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
                xp1<T> xp1Var = this.$deferred;
                this.label = 1;
                Object objZ = xp1Var.Z(this);
                return objZ == a32Var ? a32Var : objZ;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            o22.a aVar = ((y22) this.L$0).getCoroutineContext().get(g02.a.b);
            aVar.getClass();
            g02 g02Var = (g02) aVar;
            yp1 yp1Var = new yp1();
            av0.b(fr3.b, g02Var, c32.UNDISPATCHED, new C01131(yp1Var, this.$block, null));
            while (!yp1Var.P()) {
                try {
                    return bv0.a(g02Var, new AnonymousClass2(yp1Var, null));
                } catch (InterruptedException unused) {
                }
            }
            return yp1Var.G();
        }
    }

    public static final <T> T runBlockingUninterruptible(bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        bm3Var.getClass();
        Thread.interrupted();
        return (T) bv0.a(gx2.b, new AnonymousClass1(bm3Var, null));
    }
}
