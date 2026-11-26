package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1", f = "InfiniteTransition.kt", l = {TsExtractor.TS_STREAM_TYPE_AC4, 193}, m = "invokeSuspend", v = 1)
public final class InfiniteTransition$run$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableState<State<Long>> $toolingOverride;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ InfiniteTransition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfiniteTransition$run$1$1(MutableState<State<Long>> mutableState, InfiniteTransition infiniteTransition, e02<? super InfiniteTransition$run$1$1> e02Var) {
        super(2, e02Var);
        this.$toolingOverride = mutableState;
        this.this$0 = infiniteTransition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(MutableState mutableState, InfiniteTransition infiniteTransition, o07 o07Var, y22 y22Var, long j) {
        State state = (State) mutableState.getValue();
        long jLongValue = state != null ? ((Number) state.getValue()).longValue() : j;
        if (infiniteTransition.startTimeNanos == Long.MIN_VALUE || o07Var.b != SuspendAnimationKt.getDurationScale(y22Var.getCoroutineContext())) {
            infiniteTransition.startTimeNanos = j;
            MutableVector mutableVector = infiniteTransition._animations;
            Object[] objArr = mutableVector.content;
            int size = mutableVector.getSize();
            for (int i = 0; i < size; i++) {
                ((InfiniteTransition.TransitionAnimationState) objArr[i]).reset$animation_core();
            }
            o07Var.b = SuspendAnimationKt.getDurationScale(y22Var.getCoroutineContext());
        }
        if (o07Var.b == 0.0f) {
            MutableVector mutableVector2 = infiniteTransition._animations;
            Object[] objArr2 = mutableVector2.content;
            int size2 = mutableVector2.getSize();
            for (int i2 = 0; i2 < size2; i2++) {
                ((InfiniteTransition.TransitionAnimationState) objArr2[i2]).skipToEnd$animation_core();
            }
        } else {
            infiniteTransition.onFrame((long) ((jLongValue - infiniteTransition.startTimeNanos) / o07Var.b));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invokeSuspend$lambda$1(y22 y22Var) {
        return SuspendAnimationKt.getDurationScale(y22Var.getCoroutineContext());
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        InfiniteTransition$run$1$1 infiniteTransition$run$1$1 = new InfiniteTransition$run$1$1(this.$toolingOverride, this.this$0, e02Var);
        infiniteTransition$run$1$1.L$0 = obj;
        return infiniteTransition$run$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((InfiniteTransition$run$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003d A[PHI: r1 r9
      0x003d: PHI (r1v3 o07) = (r1v1 o07), (r1v2 o07), (r1v2 o07), (r1v7 o07) binds: [B:10:0x002d, B:15:0x0058, B:17:0x0072, B:6:0x000d] A[DONT_GENERATE, DONT_INLINE]
      0x003d: PHI (r9v4 y22) = (r9v2 y22), (r9v3 y22), (r9v3 y22), (r9v6 y22) binds: [B:10:0x002d, B:15:0x0058, B:17:0x0072, B:6:0x000d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x0053 A[PHI: r1 r9
      0x0053: PHI (r1v2 o07) = (r1v3 o07), (r1v5 o07) binds: [B:12:0x0050, B:9:0x0020] A[DONT_GENERATE, DONT_INLINE]
      0x0053: PHI (r9v3 y22) = (r9v4 y22), (r9v5 y22) binds: [B:12:0x0050, B:9:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x005a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0058 -> B:11:0x003d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0072 -> B:11:0x003d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L20
            if (r1 != r3) goto L1a
            java.lang.Object r1 = r8.L$1
            o07 r1 = (defpackage.o07) r1
            java.lang.Object r5 = r8.L$0
            y22 r5 = (defpackage.y22) r5
            defpackage.r57.b(r9)
            r9 = r5
            goto L3d
        L1a:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L20:
            java.lang.Object r1 = r8.L$1
            o07 r1 = (defpackage.o07) r1
            java.lang.Object r5 = r8.L$0
            y22 r5 = (defpackage.y22) r5
            defpackage.r57.b(r9)
            r9 = r5
            goto L53
        L2d:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.L$0
            y22 r9 = (defpackage.y22) r9
            o07 r1 = new o07
            r1.<init>()
            r5 = 1065353216(0x3f800000, float:1.0)
            r1.b = r5
        L3d:
            androidx.compose.runtime.MutableState<androidx.compose.runtime.State<java.lang.Long>> r5 = r8.$toolingOverride
            androidx.compose.animation.core.InfiniteTransition r6 = r8.this$0
            androidx.compose.animation.core.b r7 = new androidx.compose.animation.core.b
            r7.<init>()
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r4
            java.lang.Object r5 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(r7, r8)
            if (r5 != r0) goto L53
            goto L74
        L53:
            float r5 = r1.b
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 != 0) goto L3d
            androidx.compose.animation.core.c r5 = new androidx.compose.animation.core.c
            r5.<init>()
            hd3 r5 = androidx.compose.runtime.SnapshotStateKt.snapshotFlow(r5)
            androidx.compose.animation.core.InfiniteTransition$run$1$1$3 r6 = new androidx.compose.animation.core.InfiniteTransition$run$1$1$3
            r6.<init>(r2)
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r3
            java.lang.Object r5 = defpackage.ue3.b(r5, r6, r8)
            if (r5 != r0) goto L3d
        L74:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.InfiniteTransition$run$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$1$3, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1$3", f = "InfiniteTransition.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<Float, e02<? super Boolean>, Object> {
        /* synthetic */ float F$0;
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(e02Var);
            anonymousClass3.F$0 = ((Number) obj).floatValue();
            return anonymousClass3;
        }

        public final Object invoke(float f, e02<? super Boolean> e02Var) {
            return ((AnonymousClass3) create(Float.valueOf(f), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(this.F$0 > 0.0f);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Float f, e02<? super Boolean> e02Var) {
            return invoke(f.floatValue(), e02Var);
        }
    }
}
