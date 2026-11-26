package androidx.compose.material3.pulltorefresh;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class PullToRefreshModifierNode extends DelegatingNode implements NestedScrollConnection {
    public static final int $stable = 8;
    private final MutableFloatState distancePulled$delegate;
    private boolean enabled;
    private boolean isRefreshing;
    private DelegatableNode nestedScrollNode;
    private ll3<j59> onRefresh;
    private PullToRefreshState state;
    private float threshold;
    private final MutableFloatState verticalOffset$delegate;

    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode", f = "PullToRefresh.kt", l = {RendererCapabilities.DECODER_SUPPORT_MASK}, m = "animateToHidden")
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
            return PullToRefreshModifierNode.this.animateToHidden(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode", f = "PullToRefresh.kt", l = {371}, m = "animateToThreshold")
    public static final class C06141 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06141(e02<? super C06141> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PullToRefreshModifierNode.this.animateToThreshold(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onAttach$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onAttach$1", f = "PullToRefresh.kt", l = {260}, m = "invokeSuspend")
    public static final class C06151 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C06151(e02<? super C06151> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PullToRefreshModifierNode.this.new C06151(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06151) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PullToRefreshState state = PullToRefreshModifierNode.this.getState();
                float f = PullToRefreshModifierNode.this.isRefreshing() ? 1.0f : 0.0f;
                this.label = 1;
                if (state.snapTo(f, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode", f = "PullToRefresh.kt", l = {345}, m = "onRelease")
    public static final class C06161 extends f02 {
        float F$0;
        int label;
        /* synthetic */ Object result;

        public C06161(e02<? super C06161> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PullToRefreshModifierNode.this.onRelease(0.0f, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$update$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$update$1", f = "PullToRefresh.kt", l = {304, 306}, m = "invokeSuspend")
    public static final class C06171 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C06171(e02<? super C06171> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PullToRefreshModifierNode.this.new C06171(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06171) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        
            if (r1.animateToHidden(r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        
            if (r1.animateToThreshold(r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
        
            return r0;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L18
                if (r1 == r3) goto L14
                if (r1 != r2) goto Ld
                goto L14
            Ld:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L14:
                defpackage.r57.b(r5)
                goto L37
            L18:
                defpackage.r57.b(r5)
                androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode r5 = androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.this
                boolean r5 = r5.isRefreshing()
                androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode r1 = androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.this
                if (r5 != 0) goto L2e
                r4.label = r3
                java.lang.Object r4 = androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.access$animateToHidden(r1, r4)
                if (r4 != r0) goto L37
                goto L36
            L2e:
                r4.label = r2
                java.lang.Object r4 = androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.access$animateToThreshold(r1, r4)
                if (r4 != r0) goto L37
            L36:
                return r0
            L37:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.C06171.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private PullToRefreshModifierNode(boolean z, ll3<j59> ll3Var, boolean z2, PullToRefreshState pullToRefreshState, float f) {
        this.isRefreshing = z;
        this.onRefresh = ll3Var;
        this.enabled = z2;
        this.state = pullToRefreshState;
        this.threshold = f;
        this.nestedScrollNode = NestedScrollNodeKt.nestedScrollModifierNode(this, null);
        this.verticalOffset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.distancePulled$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [j59, java.lang.Object] */
    public final Object animateToHidden(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                PullToRefreshState pullToRefreshState = this.state;
                anonymousClass1.label = 1;
                if (pullToRefreshState.animateToHidden(anonymousClass1) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            setDistancePulled(0.0f);
            setVerticalOffset(0.0f);
            this = j59.a;
            return this;
        } catch (Throwable th) {
            this.setDistancePulled(0.0f);
            this.setVerticalOffset(0.0f);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object animateToThreshold(e02<? super j59> e02Var) {
        C06141 c06141;
        if (e02Var instanceof C06141) {
            c06141 = (C06141) e02Var;
            int i = c06141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06141.label = i - Integer.MIN_VALUE;
            } else {
                c06141 = new C06141(e02Var);
            }
        } else {
            c06141 = new C06141(e02Var);
        }
        Object obj = c06141.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06141.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                PullToRefreshState pullToRefreshState = this.state;
                c06141.label = 1;
                if (pullToRefreshState.animateToThreshold(c06141) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            if (isAttached()) {
                setDistancePulled(getThresholdPx());
                setVerticalOffset(getThresholdPx());
            }
            return j59.a;
        } catch (Throwable th) {
            if (isAttached()) {
                setDistancePulled(getThresholdPx());
                setVerticalOffset(getThresholdPx());
            }
            throw th;
        }
    }

    private final float calculateVerticalOffset() {
        if (getAdjustedDistancePulled() <= getThresholdPx()) {
            return getAdjustedDistancePulled();
        }
        float fD = kx6.d(Math.abs(getProgress()) - 1.0f, 0.0f, 2.0f);
        return getThresholdPx() + (getThresholdPx() * (fD - (((float) Math.pow(fD, 2.0d)) / 4.0f)));
    }

    /* JADX INFO: renamed from: consumeAvailableOffset-MK-Hz9U, reason: not valid java name */
    private final long m4482consumeAvailableOffsetMKHz9U(long j) {
        float distancePulled;
        if (this.isRefreshing) {
            distancePulled = 0.0f;
        } else {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + getDistancePulled();
            if (fIntBitsToFloat < 0.0f) {
                fIntBitsToFloat = 0.0f;
            }
            distancePulled = fIntBitsToFloat - getDistancePulled();
            setDistancePulled(fIntBitsToFloat);
            setVerticalOffset(calculateVerticalOffset());
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(distancePulled)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    private final float getAdjustedDistancePulled() {
        return getDistancePulled() * 0.5f;
    }

    private final float getDistancePulled() {
        return this.distancePulled$delegate.getFloatValue();
    }

    private final float getProgress() {
        return getAdjustedDistancePulled() / getThresholdPx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getThresholdPx() {
        return DelegatableNodeKt.requireDensity(this).mo1428roundToPx0680j_4(this.threshold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getVerticalOffset() {
        return this.verticalOffset$delegate.getFloatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object onRelease(float f, e02<? super Float> e02Var) {
        C06161 c06161;
        if (e02Var instanceof C06161) {
            c06161 = (C06161) e02Var;
            int i = c06161.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06161.label = i - Integer.MIN_VALUE;
            } else {
                c06161 = new C06161(e02Var);
            }
        } else {
            c06161 = new C06161(e02Var);
        }
        Object obj = c06161.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = c06161.label;
        if (i2 == 0) {
            r57.b(obj);
            if (this.isRefreshing) {
                return new Float(0.0f);
            }
            if (getAdjustedDistancePulled() > getThresholdPx()) {
                this.onRefresh.invoke();
            }
            if (getDistancePulled() == 0.0f || f < 0.0f) {
                f = 0.0f;
            }
            c06161.F$0 = f;
            c06161.label = 1;
            if (animateToHidden(c06161) == obj2) {
                return obj2;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f = c06161.F$0;
            r57.b(obj);
        }
        setDistancePulled(0.0f);
        return new Float(f);
    }

    private final void setDistancePulled(float f) {
        this.distancePulled$delegate.setFloatValue(f);
    }

    private final void setVerticalOffset(float f) {
        this.verticalOffset$delegate.setFloatValue(f);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final ll3<j59> getOnRefresh() {
        return this.onRefresh;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final PullToRefreshState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: getThreshold-D9Ej5fM, reason: not valid java name */
    public final float m4483getThresholdD9Ej5fM() {
        return this.threshold;
    }

    public final boolean isRefreshing() {
        return this.isRefreshing;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        delegate(this.nestedScrollNode);
        av0.c(getCoroutineScope(), null, null, new C06151(null), 3);
        setVerticalOffset(this.isRefreshing ? getThresholdPx() : 0.0f);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        if (!this.state.isAnimating() && this.enabled && NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7438getUserInputWNlRxjI())) {
            long jM4482consumeAvailableOffsetMKHz9U = m4482consumeAvailableOffsetMKHz9U(j2);
            av0.c(getCoroutineScope(), null, null, new PullToRefreshModifierNode$onPostScroll$1(this, null), 3);
            return jM4482consumeAvailableOffsetMKHz9U;
        }
        return Offset.Companion.m6003getZeroF1C5BW0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreFling-QWom1Mo */
    public Object mo2130onPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        PullToRefreshModifierNode$onPreFling$1 pullToRefreshModifierNode$onPreFling$1;
        float f;
        if (e02Var instanceof PullToRefreshModifierNode$onPreFling$1) {
            pullToRefreshModifierNode$onPreFling$1 = (PullToRefreshModifierNode$onPreFling$1) e02Var;
            int i = pullToRefreshModifierNode$onPreFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pullToRefreshModifierNode$onPreFling$1.label = i - Integer.MIN_VALUE;
            } else {
                pullToRefreshModifierNode$onPreFling$1 = new PullToRefreshModifierNode$onPreFling$1(this, e02Var);
            }
        } else {
            pullToRefreshModifierNode$onPreFling$1 = new PullToRefreshModifierNode$onPreFling$1(this, e02Var);
        }
        Object objOnRelease = pullToRefreshModifierNode$onPreFling$1.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = pullToRefreshModifierNode$onPreFling$1.label;
        if (i2 == 0) {
            r57.b(objOnRelease);
            float fM9281getYimpl = Velocity.m9281getYimpl(j);
            pullToRefreshModifierNode$onPreFling$1.F$0 = 0.0f;
            pullToRefreshModifierNode$onPreFling$1.label = 1;
            objOnRelease = onRelease(fM9281getYimpl, pullToRefreshModifierNode$onPreFling$1);
            if (objOnRelease == obj) {
                return obj;
            }
            f = 0.0f;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f = pullToRefreshModifierNode$onPreFling$1.F$0;
            r57.b(objOnRelease);
        }
        return Velocity.m9271boximpl(VelocityKt.Velocity(f, ((Number) objOnRelease).floatValue()));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        if (!this.state.isAnimating() && this.enabled) {
            return (!NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7438getUserInputWNlRxjI()) || Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)) >= 0.0f) ? Offset.Companion.m6003getZeroF1C5BW0() : m4482consumeAvailableOffsetMKHz9U(j);
        }
        return Offset.Companion.m6003getZeroF1C5BW0();
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setOnRefresh(ll3<j59> ll3Var) {
        this.onRefresh = ll3Var;
    }

    public final void setRefreshing(boolean z) {
        this.isRefreshing = z;
    }

    public final void setState(PullToRefreshState pullToRefreshState) {
        this.state = pullToRefreshState;
    }

    /* JADX INFO: renamed from: setThreshold-0680j_4, reason: not valid java name */
    public final void m4484setThreshold0680j_4(float f) {
        this.threshold = f;
    }

    public final void update() {
        av0.c(getCoroutineScope(), null, null, new C06171(null), 3);
    }

    public /* synthetic */ PullToRefreshModifierNode(boolean z, ll3 ll3Var, boolean z2, PullToRefreshState pullToRefreshState, float f, jh2 jh2Var) {
        this(z, ll3Var, z2, pullToRefreshState, f);
    }
}
