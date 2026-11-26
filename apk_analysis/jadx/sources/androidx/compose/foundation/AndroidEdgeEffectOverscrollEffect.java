package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    public static final int $stable = 0;
    private long containerSize;
    private final Density density;
    private final EdgeEffectWrapper edgeEffectWrapper;
    private boolean invalidationEnabled;
    private final DelegatableNode node;
    private long pointerId;
    private final SuspendingPointerInputModifierNode pointerInputNode;
    private long pointerPosition;
    private final MutableState<j59> redrawSignal;
    private boolean scrollCycleInProgress;

    private AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j, PaddingValues paddingValues) {
        this.density = density;
        this.pointerPosition = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        EdgeEffectWrapper edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.m6286toArgb8_81llA(j));
        this.edgeEffectWrapper = edgeEffectWrapper;
        this.redrawSignal = SnapshotStateKt.mutableStateOf(j59.a, SnapshotStateKt.neverEqualPolicy());
        this.invalidationEnabled = true;
        this.containerSize = Size.Companion.m6065getZeroNHjbRc();
        this.pointerId = PointerId.m7546constructorimpl(-1L);
        SuspendingPointerInputModifierNode SuspendingPointerInputModifierNode = SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1", f = "AndroidOverscroll.android.kt", l = {788, 792}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ AndroidEdgeEffectOverscrollEffect this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.this$0 = androidEdgeEffectOverscrollEffect;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code duplicated, block: B:26:0x0092  */
                /* JADX WARN: Code duplicated, block: B:29:0x00a8 A[LOOP:1: B:25:0x0090->B:29:0x00a8, LOOP_END] */
                /* JADX WARN: Code duplicated, block: B:44:0x00ac A[EDGE_INSN: B:44:0x00ac->B:31:0x00ac BREAK  A[LOOP:1: B:25:0x0090->B:29:0x00a8], SYNTHETIC] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // defpackage.cd0
                public final java.lang.Object invokeSuspend(java.lang.Object r14) {
                    /*
                        Method dump skipped, instruction units count: 223
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass1(this.this$0, null), e02Var);
                return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
            }
        });
        this.pointerInputNode = SuspendingPointerInputModifierNode;
        this.node = Build.VERSION.SDK_INT >= 31 ? new StretchOverscrollNode(SuspendingPointerInputModifierNode, this, edgeEffectWrapper) : new GlowOverscrollNode(SuspendingPointerInputModifierNode, this, edgeEffectWrapper, paddingValues);
    }

    private final void animateToReleaseIfNeeded() {
        boolean z;
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
        boolean z2 = true;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = !edgeEffect.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z = !edgeEffect2.isFinished() || z;
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z = !edgeEffect3.isFinished() || z;
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            if (edgeEffect4.isFinished() && !z) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            invalidateOverscroll$foundation();
        }
    }

    public static /* synthetic */ void getInvalidationEnabled$foundation$annotations() {
    }

    /* JADX INFO: renamed from: pullBottom-k-4lQ0M, reason: not valid java name */
    private final float m1262pullBottomk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (m1269displacementF1C5BW0$foundation() >> 32));
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        EdgeEffect orCreateBottomEffect = this.edgeEffectWrapper.getOrCreateBottomEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateBottomEffect) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * (-edgeEffectCompat.onPullDistanceCompat(orCreateBottomEffect, -fIntBitsToFloat2, 1.0f - fIntBitsToFloat)) : Float.intBitsToFloat(i);
    }

    /* JADX INFO: renamed from: pullLeft-k-4lQ0M, reason: not valid java name */
    private final float m1263pullLeftk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (m1269displacementF1C5BW0$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int i = (int) (j >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        EdgeEffect orCreateLeftEffect = this.edgeEffectWrapper.getOrCreateLeftEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateLeftEffect) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize >> 32)) * edgeEffectCompat.onPullDistanceCompat(orCreateLeftEffect, fIntBitsToFloat2, 1.0f - fIntBitsToFloat) : Float.intBitsToFloat(i);
    }

    /* JADX INFO: renamed from: pullRight-k-4lQ0M, reason: not valid java name */
    private final float m1264pullRightk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (m1269displacementF1C5BW0$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int i = (int) (j >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        EdgeEffect orCreateRightEffect = this.edgeEffectWrapper.getOrCreateRightEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateRightEffect) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize >> 32)) * (-edgeEffectCompat.onPullDistanceCompat(orCreateRightEffect, -fIntBitsToFloat2, fIntBitsToFloat)) : Float.intBitsToFloat(i);
    }

    /* JADX INFO: renamed from: pullTop-k-4lQ0M, reason: not valid java name */
    private final float m1265pullTopk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (m1269displacementF1C5BW0$foundation() >> 32));
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        EdgeEffect orCreateTopEffect = this.edgeEffectWrapper.getOrCreateTopEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateTopEffect) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * edgeEffectCompat.onPullDistanceCompat(orCreateTopEffect, fIntBitsToFloat2, fIntBitsToFloat) : Float.intBitsToFloat(i);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x002d  */
    /* JADX INFO: renamed from: releaseOppositeOverscroll-k-4lQ0M, reason: not valid java name */
    private final boolean m1266releaseOppositeOverscrollk4lQ0M(long j) {
        boolean zIsLeftAnimating;
        if (this.edgeEffectWrapper.isLeftAnimating()) {
            int i = (int) (j >> 32);
            if (Float.intBitsToFloat(i) < 0.0f) {
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateLeftEffect(), Float.intBitsToFloat(i));
                zIsLeftAnimating = this.edgeEffectWrapper.isLeftAnimating();
            } else {
                zIsLeftAnimating = false;
            }
        } else {
            zIsLeftAnimating = false;
        }
        if (this.edgeEffectWrapper.isRightAnimating()) {
            int i2 = (int) (j >> 32);
            if (Float.intBitsToFloat(i2) > 0.0f) {
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateRightEffect(), Float.intBitsToFloat(i2));
                zIsLeftAnimating = zIsLeftAnimating || this.edgeEffectWrapper.isRightAnimating();
            }
        }
        if (this.edgeEffectWrapper.isTopAnimating()) {
            int i3 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            if (Float.intBitsToFloat(i3) < 0.0f) {
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateTopEffect(), Float.intBitsToFloat(i3));
                zIsLeftAnimating = zIsLeftAnimating || this.edgeEffectWrapper.isTopAnimating();
            }
        }
        if (this.edgeEffectWrapper.isBottomAnimating()) {
            int i4 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            if (Float.intBitsToFloat(i4) > 0.0f) {
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateBottomEffect(), Float.intBitsToFloat(i4));
                return zIsLeftAnimating || this.edgeEffectWrapper.isBottomAnimating();
            }
        }
        return zIsLeftAnimating;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r14.invoke(r11, r0) == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0131, code lost:
    
        if (r15 == r1) goto L50;
     */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo1267applyToFlingBMRW4eQ(long r12, defpackage.bm3<? super androidx.compose.ui.unit.Velocity, ? super defpackage.e02<? super androidx.compose.ui.unit.Velocity>, ? extends java.lang.Object> r14, defpackage.e02<? super defpackage.j59> r15) {
        /*
            Method dump skipped, instruction units count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo1267applyToFlingBMRW4eQ(long, bm3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:103:0x022a  */
    /* JADX WARN: Code duplicated, block: B:105:0x022f  */
    /* JADX WARN: Code duplicated, block: B:107:0x0237  */
    /* JADX WARN: Code duplicated, block: B:108:0x023b  */
    /* JADX WARN: Code duplicated, block: B:110:0x023e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:112:0x0242  */
    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b8 A[PHI: r11
      0x00b8: PHI (r11v9 float) = (r11v8 float), (r11v12 float) binds: [B:43:0x00e9, B:32:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132 A[PHI: r14
      0x0132: PHI (r14v9 float) = (r14v8 float), (r14v12 float) binds: [B:67:0x0162, B:56:0x012b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToScroll-Rhakbz0, reason: not valid java name */
    public long mo1268applyToScrollRhakbz0(long j, int i, nl3<? super Offset, Offset> nl3Var) {
        float fM1262pullBottomk4lQ0M;
        float fIntBitsToFloat;
        float fM1264pullRightk4lQ0M;
        float fIntBitsToFloat2;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        if (Size.m6058isEmptyimpl(this.containerSize)) {
            return nl3Var.invoke(Offset.m5976boximpl(j)).m5997unboximpl();
        }
        if (!this.scrollCycleInProgress) {
            if (this.edgeEffectWrapper.isLeftStretched()) {
                m1263pullLeftk4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isRightStretched()) {
                m1264pullRightk4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isTopStretched()) {
                m1265pullTopk4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isBottomStretched()) {
                m1262pullBottomk4lQ0M(Offset.Companion.m6003getZeroF1C5BW0());
            }
            this.scrollCycleInProgress = true;
        }
        float fM1286destretchMultiplierGyEprt8 = AndroidOverscroll_androidKt.m1286destretchMultiplierGyEprt8(i);
        long jM5994timestuRUvjQ = Offset.m5994timestuRUvjQ(j, fM1286destretchMultiplierGyEprt8);
        int i3 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (Float.intBitsToFloat(i3) == 0.0f) {
            fIntBitsToFloat = 0.0f;
        } else if (this.edgeEffectWrapper.isTopStretched() && Float.intBitsToFloat(i3) < 0.0f) {
            fM1262pullBottomk4lQ0M = m1265pullTopk4lQ0M(jM5994timestuRUvjQ);
            if (!this.edgeEffectWrapper.isTopStretched()) {
                this.edgeEffectWrapper.getOrCreateTopEffect().finish();
            }
            if (fM1262pullBottomk4lQ0M == Float.intBitsToFloat((int) (jM5994timestuRUvjQ & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                fIntBitsToFloat = Float.intBitsToFloat(i3);
            } else {
                fIntBitsToFloat = fM1262pullBottomk4lQ0M / fM1286destretchMultiplierGyEprt8;
            }
        } else if (!this.edgeEffectWrapper.isBottomStretched() || Float.intBitsToFloat(i3) <= 0.0f) {
            fIntBitsToFloat = 0.0f;
        } else {
            fM1262pullBottomk4lQ0M = m1262pullBottomk4lQ0M(jM5994timestuRUvjQ);
            if (!this.edgeEffectWrapper.isBottomStretched()) {
                this.edgeEffectWrapper.getOrCreateBottomEffect().finish();
            }
            if (fM1262pullBottomk4lQ0M == Float.intBitsToFloat((int) (jM5994timestuRUvjQ & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                fIntBitsToFloat = Float.intBitsToFloat(i3);
            } else {
                fIntBitsToFloat = fM1262pullBottomk4lQ0M / fM1286destretchMultiplierGyEprt8;
            }
        }
        int i4 = (int) (j >> 32);
        if (Float.intBitsToFloat(i4) == 0.0f) {
            fIntBitsToFloat2 = 0.0f;
        } else if (this.edgeEffectWrapper.isLeftStretched() && Float.intBitsToFloat(i4) < 0.0f) {
            fM1264pullRightk4lQ0M = m1263pullLeftk4lQ0M(jM5994timestuRUvjQ);
            if (!this.edgeEffectWrapper.isLeftStretched()) {
                this.edgeEffectWrapper.getOrCreateLeftEffect().finish();
            }
            if (fM1264pullRightk4lQ0M == Float.intBitsToFloat((int) (jM5994timestuRUvjQ >> 32))) {
                fIntBitsToFloat2 = Float.intBitsToFloat(i4);
            } else {
                fIntBitsToFloat2 = fM1264pullRightk4lQ0M / fM1286destretchMultiplierGyEprt8;
            }
        } else if (!this.edgeEffectWrapper.isRightStretched() || Float.intBitsToFloat(i4) <= 0.0f) {
            fIntBitsToFloat2 = 0.0f;
        } else {
            fM1264pullRightk4lQ0M = m1264pullRightk4lQ0M(jM5994timestuRUvjQ);
            if (!this.edgeEffectWrapper.isRightStretched()) {
                this.edgeEffectWrapper.getOrCreateRightEffect().finish();
            }
            if (fM1264pullRightk4lQ0M == Float.intBitsToFloat((int) (jM5994timestuRUvjQ >> 32))) {
                fIntBitsToFloat2 = Float.intBitsToFloat(i4);
            } else {
                fIntBitsToFloat2 = fM1264pullRightk4lQ0M / fM1286destretchMultiplierGyEprt8;
            }
        }
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        Offset.Companion companion = Offset.Companion;
        if (!Offset.m5984equalsimpl0(jM5979constructorimpl, companion.m6003getZeroF1C5BW0())) {
            invalidateOverscroll$foundation();
        }
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(j, jM5979constructorimpl);
        long jM5997unboximpl = nl3Var.invoke(Offset.m5976boximpl(jM5991minusMKHz9U)).m5997unboximpl();
        long jM5991minusMKHz9U2 = Offset.m5991minusMKHz9U(jM5991minusMKHz9U, jM5997unboximpl);
        if ((Float.intBitsToFloat((int) (jM5991minusMKHz9U >> 32)) != 0.0f || Float.intBitsToFloat((int) (jM5991minusMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) != 0.0f) && (Float.intBitsToFloat((int) (jM5997unboximpl >> 32)) != 0.0f || Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) != 0.0f)) {
            EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
            if (edgeEffectWrapper.isLeftStretched() || edgeEffectWrapper.isTopStretched() || edgeEffectWrapper.isRightStretched() || edgeEffectWrapper.isBottomStretched()) {
                animateToReleaseIfNeeded();
            }
        }
        if (NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7438getUserInputWNlRxjI())) {
            int i5 = (int) (jM5991minusMKHz9U2 >> 32);
            if (Float.intBitsToFloat(i5) > 0.5f) {
                m1263pullLeftk4lQ0M(jM5991minusMKHz9U2);
            } else {
                if (Float.intBitsToFloat(i5) < -0.5f) {
                    m1264pullRightk4lQ0M(jM5991minusMKHz9U2);
                } else {
                    z2 = false;
                }
                i2 = (int) (jM5991minusMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                if (Float.intBitsToFloat(i2) > 0.5f) {
                    m1265pullTopk4lQ0M(jM5991minusMKHz9U2);
                } else {
                    if (Float.intBitsToFloat(i2) < -0.5f) {
                        m1262pullBottomk4lQ0M(jM5991minusMKHz9U2);
                    } else {
                        z3 = false;
                    }
                    if (!z2 || z3) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                z3 = true;
                if (z2) {
                }
                z = true;
            }
            z2 = true;
            i2 = (int) (jM5991minusMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            if (Float.intBitsToFloat(i2) > 0.5f) {
                m1265pullTopk4lQ0M(jM5991minusMKHz9U2);
            } else {
                if (Float.intBitsToFloat(i2) < -0.5f) {
                    m1262pullBottomk4lQ0M(jM5991minusMKHz9U2);
                } else {
                    z3 = false;
                }
                if (z2) {
                }
                z = true;
            }
            z3 = true;
            if (z2) {
            }
            z = true;
        } else {
            z = false;
        }
        if (!Offset.m5984equalsimpl0(jM5991minusMKHz9U, companion.m6003getZeroF1C5BW0())) {
            z = m1266releaseOppositeOverscrollk4lQ0M(j) || z;
        }
        if (z) {
            invalidateOverscroll$foundation();
        }
        return Offset.m5992plusMKHz9U(jM5979constructorimpl, jM5997unboximpl);
    }

    /* JADX INFO: renamed from: displacement-F1C5BW0$foundation, reason: not valid java name */
    public final long m1269displacementF1C5BW0$foundation() {
        long jM6066getCenteruvyYCjk = this.pointerPosition;
        if ((9223372034707292159L & jM6066getCenteruvyYCjk) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            jM6066getCenteruvyYCjk = SizeKt.m6066getCenteruvyYCjk(this.containerSize);
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk >> 32)) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / Float.intBitsToFloat((int) (this.containerSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32));
    }

    public final boolean getInvalidationEnabled$foundation() {
        return this.invalidationEnabled;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public DelegatableNode getNode() {
        return this.node;
    }

    public final MutableState<j59> getRedrawSignal$foundation() {
        return this.redrawSignal;
    }

    public final void invalidateOverscroll$foundation() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(j59.a);
        }
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
        if (edgeEffect != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect2) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect3) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
        return (edgeEffect4 == null || EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect4) == 0.0f) ? false : true;
    }

    public final void setInvalidationEnabled$foundation(boolean z) {
        this.invalidationEnabled = z;
    }

    /* JADX INFO: renamed from: updateSize-uvyYCjk$foundation, reason: not valid java name */
    public final void m1270updateSizeuvyYCjk$foundation(long j) {
        boolean zM6052equalsimpl0 = Size.m6052equalsimpl0(this.containerSize, Size.Companion.m6065getZeroNHjbRc());
        boolean zM6052equalsimpl1 = Size.m6052equalsimpl0(j, this.containerSize);
        this.containerSize = j;
        if (!zM6052equalsimpl1) {
            EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
            int iB = w65.b(Float.intBitsToFloat((int) (j >> 32)));
            edgeEffectWrapper.m1343updateSizeozmzZPI(IntSize.m9208constructorimpl((((long) w65.b(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iB) << 32)));
        }
        if (zM6052equalsimpl0 || zM6052equalsimpl1) {
            return;
        }
        animateToReleaseIfNeeded();
    }

    public /* synthetic */ AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j, PaddingValues paddingValues, jh2 jh2Var) {
        this(context, density, j, paddingValues);
    }
}
