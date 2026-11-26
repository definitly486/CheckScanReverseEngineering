package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class InfiniteAnimationPolicyKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2", f = "InfiniteAnimationPolicy.kt", l = {32}, m = "invokeSuspend", v = 1)
    public static final class C04572<R> extends pg8 implements nl3<e02<? super R>, Object> {
        final /* synthetic */ nl3<Long, R> $onFrame;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04572(nl3<? super Long, ? extends R> nl3Var, e02<? super C04572> e02Var) {
            super(1, e02Var);
            this.$onFrame = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C04572(this.$onFrame, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super R> e02Var) {
            return ((C04572) create(e02Var)).invokeSuspend(j59.a);
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
            nl3<Long, R> nl3Var = this.$onFrame;
            this.label = 1;
            Object objWithFrameNanos = MonotonicFrameClockKt.withFrameNanos(nl3Var, this);
            return objWithFrameNanos == a32Var ? a32Var : objWithFrameNanos;
        }
    }

    public static final <R> Object withInfiniteAnimationFrameMillis(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        return withInfiniteAnimationFrameNanos(new AnonymousClass2(nl3Var), e02Var);
    }

    public static final <R> Object withInfiniteAnimationFrameNanos(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) e02Var.getContext().get(InfiniteAnimationPolicy.Key);
        return infiniteAnimationPolicy == null ? MonotonicFrameClockKt.withFrameNanos(nl3Var, e02Var) : infiniteAnimationPolicy.onInfiniteOperation(new C04572(nl3Var, null), e02Var);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2, reason: invalid class name */
    public static final class AnonymousClass2<R> implements nl3<Long, R> {
        final /* synthetic */ nl3<Long, R> $onFrame;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super Long, ? extends R> nl3Var) {
            this.$onFrame = nl3Var;
        }

        public final R invoke(long j) {
            return this.$onFrame.invoke(Long.valueOf(j / 1000000));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Long l) {
            return invoke(l.longValue());
        }
    }
}
