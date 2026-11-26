package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s68;
import defpackage.y22;
import defpackage.z22;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAnimationState {
    public static final int $stable = 8;
    private final boolean animate;
    private AtomicReference<mb4> animationJob = new AtomicReference<>(null);
    private final MutableFloatState cursorAlpha$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2", f = "CursorAnimationState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1", f = "CursorAnimationState.kt", l = {WebmConstants.MAX_META_SEEK_SIZE, 77, 79, 81}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ mb4 $oldJob;
            int label;
            final /* synthetic */ CursorAnimationState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(mb4 mb4Var, CursorAnimationState cursorAnimationState, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$oldJob = mb4Var;
                this.this$0 = cursorAnimationState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$oldJob, this.this$0, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:32:0x0064  */
            /* JADX WARN: Code duplicated, block: B:33:0x0065 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:8:0x0017, B:36:0x0073, B:30:0x005c, B:33:0x0065, B:14:0x0024, B:15:0x0028, B:28:0x0056, B:29:0x005b, B:23:0x0040, B:25:0x004d), top: B:40:0x000d }] */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x0070, code lost:
            
                if (defpackage.yk2.b(500, r10) == r0) goto L35;
             */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0070 -> B:36:0x0073). Please report as a decompilation issue!!! */
            @Override // defpackage.cd0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                /*
                    r10 = this;
                    a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r10.label
                    r2 = 0
                    r3 = 500(0x1f4, double:2.47E-321)
                    r5 = 1065353216(0x3f800000, float:1.0)
                    r6 = 4
                    r7 = 3
                    r8 = 2
                    r9 = 1
                    if (r1 == 0) goto L30
                    if (r1 == r9) goto L2c
                    if (r1 == r8) goto L28
                    if (r1 == r7) goto L24
                    if (r1 != r6) goto L1d
                    defpackage.r57.b(r11)     // Catch: java.lang.Throwable -> L1b
                    goto L73
                L1b:
                    r11 = move-exception
                    goto L79
                L1d:
                    java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r10)
                    r10 = 0
                    return r10
                L24:
                    defpackage.r57.b(r11)     // Catch: java.lang.Throwable -> L1b
                    goto L65
                L28:
                    defpackage.r57.b(r11)     // Catch: java.lang.Throwable -> L1b
                    goto L56
                L2c:
                    defpackage.r57.b(r11)
                    goto L40
                L30:
                    defpackage.r57.b(r11)
                    mb4 r11 = r10.$oldJob
                    if (r11 == 0) goto L40
                    r10.label = r9
                    java.lang.Object r11 = defpackage.qb4.c(r11, r10)
                    if (r11 != r0) goto L40
                    goto L72
                L40:
                    androidx.compose.foundation.text.input.internal.CursorAnimationState r11 = r10.this$0     // Catch: java.lang.Throwable -> L1b
                    androidx.compose.foundation.text.input.internal.CursorAnimationState.access$setCursorAlpha(r11, r5)     // Catch: java.lang.Throwable -> L1b
                    androidx.compose.foundation.text.input.internal.CursorAnimationState r11 = r10.this$0     // Catch: java.lang.Throwable -> L1b
                    boolean r11 = r11.getAnimate()     // Catch: java.lang.Throwable -> L1b
                    if (r11 != 0) goto L5c
                    r10.label = r8     // Catch: java.lang.Throwable -> L1b
                    a32 r11 = defpackage.yk2.a(r10)     // Catch: java.lang.Throwable -> L1b
                    if (r11 != r0) goto L56
                    goto L72
                L56:
                    kotlin.KotlinNothingValueException r11 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L1b
                    r11.<init>()     // Catch: java.lang.Throwable -> L1b
                    throw r11     // Catch: java.lang.Throwable -> L1b
                L5c:
                    r10.label = r7     // Catch: java.lang.Throwable -> L1b
                    java.lang.Object r11 = defpackage.yk2.b(r3, r10)     // Catch: java.lang.Throwable -> L1b
                    if (r11 != r0) goto L65
                    goto L72
                L65:
                    androidx.compose.foundation.text.input.internal.CursorAnimationState r11 = r10.this$0     // Catch: java.lang.Throwable -> L1b
                    androidx.compose.foundation.text.input.internal.CursorAnimationState.access$setCursorAlpha(r11, r2)     // Catch: java.lang.Throwable -> L1b
                    r10.label = r6     // Catch: java.lang.Throwable -> L1b
                    java.lang.Object r11 = defpackage.yk2.b(r3, r10)     // Catch: java.lang.Throwable -> L1b
                    if (r11 != r0) goto L73
                L72:
                    return r0
                L73:
                    androidx.compose.foundation.text.input.internal.CursorAnimationState r11 = r10.this$0     // Catch: java.lang.Throwable -> L1b
                    androidx.compose.foundation.text.input.internal.CursorAnimationState.access$setCursorAlpha(r11, r5)     // Catch: java.lang.Throwable -> L1b
                    goto L5c
                L79:
                    androidx.compose.foundation.text.input.internal.CursorAnimationState r10 = r10.this$0
                    androidx.compose.foundation.text.input.internal.CursorAnimationState.access$setCursorAlpha(r10, r2)
                    throw r11
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.CursorAnimationState.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = CursorAnimationState.this.new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            boolean z;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            mb4 mb4Var = (mb4) CursorAnimationState.this.animationJob.getAndSet(null);
            AtomicReference atomicReference = CursorAnimationState.this.animationJob;
            s68 s68VarC = av0.c(y22Var, null, null, new AnonymousClass1(mb4Var, CursorAnimationState.this, null), 3);
            while (!atomicReference.compareAndSet(null, s68VarC)) {
                if (atomicReference.get() != null) {
                    z = false;
                    return Boolean.valueOf(z);
                }
            }
            z = true;
            return Boolean.valueOf(z);
        }
    }

    public CursorAnimationState(boolean z) {
        this.animate = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCursorAlpha(float f) {
        this.cursorAlpha$delegate.setFloatValue(f);
    }

    public final void cancelAndHide() {
        mb4 andSet = this.animationJob.getAndSet(null);
        if (andSet != null) {
            andSet.cancel(null);
        }
    }

    public final boolean getAnimate() {
        return this.animate;
    }

    public final float getCursorAlpha() {
        return this.cursorAlpha$delegate.getFloatValue();
    }

    public final Object snapToVisibleAndAnimate(e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
