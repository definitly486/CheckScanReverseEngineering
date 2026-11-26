package androidx.compose.foundation.gestures;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.aw4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l91;
import defpackage.mb4;
import defpackage.n07;
import defpackage.nl3;
import defpackage.o07;
import defpackage.p91;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.sg;
import defpackage.vg;
import defpackage.w65;
import defpackage.x81;
import defpackage.y22;
import defpackage.yv8;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MouseWheelScrollingLogic extends NonTouchScrollingLogic {
    public static final int $stable = 8;
    private final x81<MouseWheelScrollDelta> channel;
    private final ScrollConfig mouseWheelScrollConfig;
    private mb4 receivingMouseWheelEventsJob;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic", f = "MouseWheelScrollingLogic.kt", l = {219, 273}, m = "dispatchMouseWheelScroll", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MouseWheelScrollingLogic.this.dispatchMouseWheelScroll(null, null, 0.0f, 0.0f, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3", f = "MouseWheelScrollingLogic.kt", l = {228, WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION, 261}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ r07<AnimationState<Float, AnimationVector1D>> $animationState;
        final /* synthetic */ float $speed;
        final /* synthetic */ r07<MouseWheelScrollDelta> $targetScrollDelta;
        final /* synthetic */ o07 $targetValue;
        final /* synthetic */ ScrollingLogic $this_dispatchMouseWheelScroll;
        final /* synthetic */ float $threshold;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ MouseWheelScrollingLogic this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(o07 o07Var, r07<AnimationState<Float, AnimationVector1D>> r07Var, r07<MouseWheelScrollDelta> r07Var2, float f, MouseWheelScrollingLogic mouseWheelScrollingLogic, float f2, ScrollingLogic scrollingLogic, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$targetValue = o07Var;
            this.$animationState = r07Var;
            this.$targetScrollDelta = r07Var2;
            this.$threshold = f;
            this.this$0 = mouseWheelScrollingLogic;
            this.$speed = f2;
            this.$this_dispatchMouseWheelScroll = scrollingLogic;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v4, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
        public static final boolean invokeSuspend$lambda$0(MouseWheelScrollingLogic mouseWheelScrollingLogic, r07 r07Var, o07 o07Var, ScrollingLogic scrollingLogic, n07 n07Var, float f) {
            MouseWheelScrollDelta mouseWheelScrollDeltaSumOrNull = mouseWheelScrollingLogic.sumOrNull(mouseWheelScrollingLogic.channel);
            if (mouseWheelScrollDeltaSumOrNull != null) {
                mouseWheelScrollingLogic.trackVelocity(mouseWheelScrollDeltaSumOrNull);
                ?? Plus = ((MouseWheelScrollDelta) r07Var.b).plus(mouseWheelScrollDeltaSumOrNull);
                r07Var.b = Plus;
                float fM1621toSingleAxisDeltaFromAnglek4lQ0M = scrollingLogic.m1621toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(Plus.m1558getValueF1C5BW0()));
                o07Var.b = fM1621toSingleAxisDeltaFromAnglek4lQ0M;
                n07Var.b = !MouseWheelScrollingLogicKt.isLowScrollingDelta(fM1621toSingleAxisDeltaFromAnglek4lQ0M - f);
            }
            return mouseWheelScrollDeltaSumOrNull != null;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$targetValue, this.$animationState, this.$targetScrollDelta, this.$threshold, this.this$0, this.$speed, this.$this_dispatchMouseWheelScroll, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x006b  */
        /* JADX WARN: Code duplicated, block: B:17:0x008f  */
        /* JADX WARN: Code duplicated, block: B:19:0x0099  */
        /* JADX WARN: Code duplicated, block: B:30:0x012c  */
        /* JADX WARN: Code duplicated, block: B:33:0x014f  */
        /* JADX WARN: Code duplicated, block: B:35:0x015e  */
        /* JADX WARN: Code duplicated, block: B:39:0x0183  */
        /* JADX WARN: Code duplicated, block: B:45:0x0182 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r2v10, types: [T, androidx.compose.animation.core.AnimationState] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x014f -> B:34:0x0150). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x015e -> B:13:0x0067). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            NestedScrollScope nestedScrollScope;
            n07 n07Var;
            NestedScrollScope nestedScrollScope2;
            n07 n07Var2;
            int i;
            Object objDispatchMouseWheelScroll$waitNextScrollDelta;
            n07 n07Var3;
            n07 n07Var4;
            NestedScrollScope nestedScrollScope3;
            Object objDispatchMouseWheelScroll$waitNextScrollDelta2;
            AnonymousClass3 anonymousClass3 = this;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = anonymousClass3.label;
            int i3 = 2;
            if (i2 != 0) {
                if (i2 == 1) {
                    n07 n07Var5 = (n07) anonymousClass3.L$2;
                    n07 n07Var6 = (n07) anonymousClass3.L$1;
                    NestedScrollScope nestedScrollScope4 = (NestedScrollScope) anonymousClass3.L$0;
                    r57.b(obj);
                    n07Var5.b = ((Boolean) obj).booleanValue();
                    anonymousClass3 = this;
                    n07Var = n07Var6;
                    nestedScrollScope = nestedScrollScope4;
                    i3 = 2;
                } else {
                    if (i2 == 2) {
                        i = anonymousClass3.I$0;
                        n07 n07Var7 = (n07) anonymousClass3.L$1;
                        NestedScrollScope nestedScrollScope5 = (NestedScrollScope) anonymousClass3.L$0;
                        r57.b(obj);
                        n07Var2 = n07Var7;
                        nestedScrollScope2 = nestedScrollScope5;
                        if (n07Var2.b) {
                            n07Var = n07Var2;
                            nestedScrollScope = nestedScrollScope2;
                        } else {
                            anonymousClass3.L$0 = nestedScrollScope2;
                            anonymousClass3.L$1 = n07Var2;
                            anonymousClass3.L$2 = n07Var2;
                            anonymousClass3.label = 3;
                            objDispatchMouseWheelScroll$waitNextScrollDelta = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(anonymousClass3.this$0, anonymousClass3.$targetScrollDelta, anonymousClass3.$targetValue, anonymousClass3.$this_dispatchMouseWheelScroll, anonymousClass3.$animationState, 50 - ((long) i), anonymousClass3);
                            if (objDispatchMouseWheelScroll$waitNextScrollDelta != a32Var) {
                                n07Var3 = n07Var2;
                            }
                        }
                        return a32Var;
                    }
                    if (i2 != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    n07 n07Var8 = (n07) anonymousClass3.L$2;
                    n07Var3 = (n07) anonymousClass3.L$1;
                    NestedScrollScope nestedScrollScope6 = (NestedScrollScope) anonymousClass3.L$0;
                    r57.b(obj);
                    n07Var2 = n07Var8;
                    nestedScrollScope2 = nestedScrollScope6;
                    objDispatchMouseWheelScroll$waitNextScrollDelta = obj;
                }
                n07Var2.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta).booleanValue();
                n07Var = n07Var3;
                nestedScrollScope = nestedScrollScope2;
                i3 = 2;
            } else {
                r57.b(obj);
                NestedScrollScope nestedScrollScope7 = (NestedScrollScope) anonymousClass3.L$0;
                n07 n07Var9 = new n07();
                n07Var9.b = true;
                nestedScrollScope = nestedScrollScope7;
                n07Var = n07Var9;
            }
            while (n07Var.b) {
                n07Var.b = false;
                float fFloatValue = anonymousClass3.$targetValue.b - anonymousClass3.$animationState.b.getValue().floatValue();
                if (!anonymousClass3.$targetScrollDelta.b.getShouldApplyImmediately() || Math.abs(fFloatValue) < anonymousClass3.$threshold) {
                    n07Var4 = n07Var;
                    nestedScrollScope3 = nestedScrollScope;
                    anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope3, fFloatValue);
                    MouseWheelScrollingLogic mouseWheelScrollingLogic = anonymousClass3.this$0;
                    r07<MouseWheelScrollDelta> r07Var = anonymousClass3.$targetScrollDelta;
                    o07 o07Var = anonymousClass3.$targetValue;
                    ScrollingLogic scrollingLogic = anonymousClass3.$this_dispatchMouseWheelScroll;
                    r07<AnimationState<Float, AnimationVector1D>> r07Var2 = anonymousClass3.$animationState;
                    anonymousClass3.L$0 = nestedScrollScope3;
                    anonymousClass3.L$1 = n07Var4;
                    anonymousClass3.L$2 = n07Var4;
                    anonymousClass3.label = 1;
                    objDispatchMouseWheelScroll$waitNextScrollDelta2 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(mouseWheelScrollingLogic, r07Var, o07Var, scrollingLogic, r07Var2, 50L, anonymousClass3);
                    if (objDispatchMouseWheelScroll$waitNextScrollDelta2 != a32Var) {
                        n07Var4.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta2).booleanValue();
                        anonymousClass3 = this;
                        n07Var = n07Var4;
                        nestedScrollScope = nestedScrollScope3;
                        i3 = 2;
                    }
                } else {
                    float fSignum = Math.signum(fFloatValue) * anonymousClass3.$threshold;
                    anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope, fSignum);
                    r07<AnimationState<Float, AnimationVector1D>> r07Var3 = anonymousClass3.$animationState;
                    AnimationState<Float, AnimationVector1D> animationState = r07Var3.b;
                    r07Var3.b = AnimationStateKt.copy$default((AnimationState) animationState, animationState.getValue().floatValue() + fSignum, 0.0f, 0L, 0L, false, 30, (Object) null);
                    int iB = w65.b(Math.abs(anonymousClass3.$targetValue.b - anonymousClass3.$animationState.b.getValue().floatValue()) / anonymousClass3.$speed);
                    int i4 = iB > 100 ? 100 : iB;
                    final MouseWheelScrollingLogic mouseWheelScrollingLogic2 = anonymousClass3.this$0;
                    AnimationState<Float, AnimationVector1D> animationState2 = anonymousClass3.$animationState.b;
                    final o07 o07Var2 = anonymousClass3.$targetValue;
                    float f = o07Var2.b;
                    final r07<MouseWheelScrollDelta> r07Var4 = anonymousClass3.$targetScrollDelta;
                    final ScrollingLogic scrollingLogic2 = anonymousClass3.$this_dispatchMouseWheelScroll;
                    final n07 n07Var10 = n07Var;
                    nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.r
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return Boolean.valueOf(MouseWheelScrollingLogic.AnonymousClass3.invokeSuspend$lambda$0(mouseWheelScrollingLogic2, r07Var4, o07Var2, scrollingLogic2, n07Var10, ((Float) obj2).floatValue()));
                        }
                    };
                    n07Var2 = n07Var10;
                    anonymousClass3.L$0 = nestedScrollScope;
                    anonymousClass3.L$1 = n07Var2;
                    anonymousClass3.L$2 = null;
                    anonymousClass3.I$0 = i4;
                    anonymousClass3.label = i3;
                    Object objAnimateMouseWheelScroll = mouseWheelScrollingLogic2.animateMouseWheelScroll(nestedScrollScope, animationState2, f, i4, nl3Var, anonymousClass3);
                    nestedScrollScope2 = nestedScrollScope;
                    if (objAnimateMouseWheelScroll != a32Var) {
                        i = i4;
                        if (n07Var2.b) {
                            anonymousClass3.L$0 = nestedScrollScope2;
                            anonymousClass3.L$1 = n07Var2;
                            anonymousClass3.L$2 = n07Var2;
                            anonymousClass3.label = 3;
                            objDispatchMouseWheelScroll$waitNextScrollDelta = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(anonymousClass3.this$0, anonymousClass3.$targetScrollDelta, anonymousClass3.$targetValue, anonymousClass3.$this_dispatchMouseWheelScroll, anonymousClass3.$animationState, 50 - ((long) i), anonymousClass3);
                            if (objDispatchMouseWheelScroll$waitNextScrollDelta != a32Var) {
                                n07Var3 = n07Var2;
                                n07Var2.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta).booleanValue();
                                n07Var = n07Var3;
                                nestedScrollScope = nestedScrollScope2;
                                i3 = 2;
                                while (n07Var.b) {
                                    n07Var.b = false;
                                    float fFloatValue2 = anonymousClass3.$targetValue.b - anonymousClass3.$animationState.b.getValue().floatValue();
                                    if (anonymousClass3.$targetScrollDelta.b.getShouldApplyImmediately()) {
                                        n07Var4 = n07Var;
                                        nestedScrollScope3 = nestedScrollScope;
                                        anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope3, fFloatValue2);
                                        MouseWheelScrollingLogic mouseWheelScrollingLogic3 = anonymousClass3.this$0;
                                        r07<MouseWheelScrollDelta> r07Var5 = anonymousClass3.$targetScrollDelta;
                                        o07 o07Var3 = anonymousClass3.$targetValue;
                                        ScrollingLogic scrollingLogic3 = anonymousClass3.$this_dispatchMouseWheelScroll;
                                        r07<AnimationState<Float, AnimationVector1D>> r07Var6 = anonymousClass3.$animationState;
                                        anonymousClass3.L$0 = nestedScrollScope3;
                                        anonymousClass3.L$1 = n07Var4;
                                        anonymousClass3.L$2 = n07Var4;
                                        anonymousClass3.label = 1;
                                        objDispatchMouseWheelScroll$waitNextScrollDelta2 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(mouseWheelScrollingLogic3, r07Var5, o07Var3, scrollingLogic3, r07Var6, 50L, anonymousClass3);
                                        if (objDispatchMouseWheelScroll$waitNextScrollDelta2 != a32Var) {
                                            n07Var4.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta2).booleanValue();
                                            anonymousClass3 = this;
                                            n07Var = n07Var4;
                                            nestedScrollScope = nestedScrollScope3;
                                            i3 = 2;
                                        }
                                    } else {
                                        n07Var4 = n07Var;
                                        nestedScrollScope3 = nestedScrollScope;
                                        anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope3, fFloatValue2);
                                        MouseWheelScrollingLogic mouseWheelScrollingLogic4 = anonymousClass3.this$0;
                                        r07<MouseWheelScrollDelta> r07Var7 = anonymousClass3.$targetScrollDelta;
                                        o07 o07Var4 = anonymousClass3.$targetValue;
                                        ScrollingLogic scrollingLogic4 = anonymousClass3.$this_dispatchMouseWheelScroll;
                                        r07<AnimationState<Float, AnimationVector1D>> r07Var8 = anonymousClass3.$animationState;
                                        anonymousClass3.L$0 = nestedScrollScope3;
                                        anonymousClass3.L$1 = n07Var4;
                                        anonymousClass3.L$2 = n07Var4;
                                        anonymousClass3.label = 1;
                                        objDispatchMouseWheelScroll$waitNextScrollDelta2 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(mouseWheelScrollingLogic4, r07Var7, o07Var4, scrollingLogic4, r07Var8, 50L, anonymousClass3);
                                        if (objDispatchMouseWheelScroll$waitNextScrollDelta2 != a32Var) {
                                            n07Var4.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta2).booleanValue();
                                            anonymousClass3 = this;
                                            n07Var = n07Var4;
                                            nestedScrollScope = nestedScrollScope3;
                                            i3 = 2;
                                        }
                                    }
                                }
                            }
                        } else {
                            n07Var = n07Var2;
                            nestedScrollScope = nestedScrollScope2;
                            while (n07Var.b) {
                                n07Var.b = false;
                                float fFloatValue3 = anonymousClass3.$targetValue.b - anonymousClass3.$animationState.b.getValue().floatValue();
                                if (anonymousClass3.$targetScrollDelta.b.getShouldApplyImmediately()) {
                                    n07Var4 = n07Var;
                                    nestedScrollScope3 = nestedScrollScope;
                                    anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope3, fFloatValue3);
                                    MouseWheelScrollingLogic mouseWheelScrollingLogic5 = anonymousClass3.this$0;
                                    r07<MouseWheelScrollDelta> r07Var9 = anonymousClass3.$targetScrollDelta;
                                    o07 o07Var5 = anonymousClass3.$targetValue;
                                    ScrollingLogic scrollingLogic5 = anonymousClass3.$this_dispatchMouseWheelScroll;
                                    r07<AnimationState<Float, AnimationVector1D>> r07Var10 = anonymousClass3.$animationState;
                                    anonymousClass3.L$0 = nestedScrollScope3;
                                    anonymousClass3.L$1 = n07Var4;
                                    anonymousClass3.L$2 = n07Var4;
                                    anonymousClass3.label = 1;
                                    objDispatchMouseWheelScroll$waitNextScrollDelta2 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(mouseWheelScrollingLogic5, r07Var9, o07Var5, scrollingLogic5, r07Var10, 50L, anonymousClass3);
                                    if (objDispatchMouseWheelScroll$waitNextScrollDelta2 != a32Var) {
                                        n07Var4.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta2).booleanValue();
                                        anonymousClass3 = this;
                                        n07Var = n07Var4;
                                        nestedScrollScope = nestedScrollScope3;
                                        i3 = 2;
                                    }
                                } else {
                                    n07Var4 = n07Var;
                                    nestedScrollScope3 = nestedScrollScope;
                                    anonymousClass3.this$0.dispatchMouseWheelScroll(nestedScrollScope3, fFloatValue3);
                                    MouseWheelScrollingLogic mouseWheelScrollingLogic6 = anonymousClass3.this$0;
                                    r07<MouseWheelScrollDelta> r07Var11 = anonymousClass3.$targetScrollDelta;
                                    o07 o07Var6 = anonymousClass3.$targetValue;
                                    ScrollingLogic scrollingLogic6 = anonymousClass3.$this_dispatchMouseWheelScroll;
                                    r07<AnimationState<Float, AnimationVector1D>> r07Var12 = anonymousClass3.$animationState;
                                    anonymousClass3.L$0 = nestedScrollScope3;
                                    anonymousClass3.L$1 = n07Var4;
                                    anonymousClass3.L$2 = n07Var4;
                                    anonymousClass3.label = 1;
                                    objDispatchMouseWheelScroll$waitNextScrollDelta2 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(mouseWheelScrollingLogic6, r07Var11, o07Var6, scrollingLogic6, r07Var12, 50L, anonymousClass3);
                                    if (objDispatchMouseWheelScroll$waitNextScrollDelta2 != a32Var) {
                                        n07Var4.b = ((Boolean) objDispatchMouseWheelScroll$waitNextScrollDelta2).booleanValue();
                                        anonymousClass3 = this;
                                        n07Var = n07Var4;
                                        nestedScrollScope = nestedScrollScope3;
                                        i3 = 2;
                                    }
                                }
                            }
                        }
                    }
                }
                return a32Var;
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1", f = "MouseWheelScrollingLogic.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 112}, m = "invokeSuspend", v = 1)
    public static final class C04901 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public C04901(e02<? super C04901> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04901 c04901 = MouseWheelScrollingLogic.this.new C04901(e02Var);
            c04901.L$0 = obj;
            return c04901;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04901) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
        
            if (r5.dispatchMouseWheelScroll(r6, r7, r8, r9, r10) == r0) goto L29;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0081 -> B:41:0x0032). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
            /*
                r12 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r12.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2b
                if (r1 == r4) goto L23
                if (r1 != r3) goto L1d
                java.lang.Object r1 = r12.L$0
                y22 r1 = (defpackage.y22) r1
                defpackage.r57.b(r13)     // Catch: java.lang.Throwable -> L18
                r10 = r12
            L15:
                r13 = r1
                goto L81
            L18:
                r0 = move-exception
                r13 = r0
                r10 = r12
                goto L8f
            L1d:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r12)
                return r2
            L23:
                java.lang.Object r1 = r12.L$0
                y22 r1 = (defpackage.y22) r1
                defpackage.r57.b(r13)     // Catch: java.lang.Throwable -> L18
                goto L50
            L2b:
                defpackage.r57.b(r13)
                java.lang.Object r13 = r12.L$0
                y22 r13 = (defpackage.y22) r13
            L32:
                o22 r1 = r13.getCoroutineContext()     // Catch: java.lang.Throwable -> L86
                boolean r1 = defpackage.qb4.h(r1)     // Catch: java.lang.Throwable -> L86
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic r5 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.this
                if (r1 == 0) goto L89
                x81 r1 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$getChannel$p(r5)     // Catch: java.lang.Throwable -> L86
                r12.L$0 = r13     // Catch: java.lang.Throwable -> L86
                r12.label = r4     // Catch: java.lang.Throwable -> L86
                java.lang.Object r1 = r1.b(r12)     // Catch: java.lang.Throwable -> L86
                if (r1 != r0) goto L4d
                goto L80
            L4d:
                r11 = r1
                r1 = r13
                r13 = r11
            L50:
                r7 = r13
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta r7 = (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta) r7     // Catch: java.lang.Throwable -> L86
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic r13 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.this     // Catch: java.lang.Throwable -> L86
                androidx.compose.ui.unit.Density r13 = r13.getDensity()     // Catch: java.lang.Throwable -> L86
                float r5 = androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt.access$getAnimationThreshold$p()     // Catch: java.lang.Throwable -> L86
                float r8 = r13.mo1434toPx0680j_4(r5)     // Catch: java.lang.Throwable -> L86
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic r13 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.this     // Catch: java.lang.Throwable -> L86
                androidx.compose.ui.unit.Density r13 = r13.getDensity()     // Catch: java.lang.Throwable -> L86
                float r5 = androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt.access$getAnimationSpeed$p()     // Catch: java.lang.Throwable -> L86
                float r9 = r13.mo1434toPx0680j_4(r5)     // Catch: java.lang.Throwable -> L86
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic r5 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.this     // Catch: java.lang.Throwable -> L86
                androidx.compose.foundation.gestures.ScrollingLogic r6 = r5.getScrollingLogic()     // Catch: java.lang.Throwable -> L86
                r12.L$0 = r1     // Catch: java.lang.Throwable -> L86
                r12.label = r3     // Catch: java.lang.Throwable -> L86
                r10 = r12
                java.lang.Object r12 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$dispatchMouseWheelScroll(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L83
                if (r12 != r0) goto L15
            L80:
                return r0
            L81:
                r12 = r10
                goto L32
            L83:
                r0 = move-exception
            L84:
                r13 = r0
                goto L8f
            L86:
                r0 = move-exception
                r10 = r12
                goto L84
            L89:
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$setReceivingMouseWheelEventsJob$p(r5, r2)
                j59 r12 = defpackage.j59.a
                return r12
            L8f:
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic r12 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.this
                androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$setReceivingMouseWheelEventsJob$p(r12, r2)
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.C04901.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, ScrollConfig scrollConfig, bm3<? super Velocity, ? super e02<? super j59>, ? extends Object> bm3Var, Density density) {
        super(scrollingLogic, bm3Var, density);
        this.mouseWheelScrollConfig = scrollConfig;
        this.channel = l91.a(Integer.MAX_VALUE, null, null, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateMouseWheelScroll(final NestedScrollScope nestedScrollScope, AnimationState<Float, AnimationVector1D> animationState, float f, int i, final nl3<? super Float, Boolean> nl3Var, e02<? super j59> e02Var) {
        final o07 o07Var = new o07();
        o07Var.b = animationState.getValue().floatValue();
        Object objAnimateTo = SuspendAnimationKt.animateTo(animationState, new Float(f), AnimationSpecKt.tween$default(i, 0, EasingKt.getLinearEasing(), 2, null), true, new nl3() { // from class: td5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return MouseWheelScrollingLogic.animateMouseWheelScroll$lambda$0(o07Var, this, nestedScrollScope, nl3Var, (AnimationScope) obj);
            }
        }, e02Var);
        return objAnimateTo == a32.COROUTINE_SUSPENDED ? objAnimateTo : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateMouseWheelScroll$lambda$0(o07 o07Var, MouseWheelScrollingLogic mouseWheelScrollingLogic, NestedScrollScope nestedScrollScope, nl3 nl3Var, AnimationScope animationScope) {
        float fFloatValue = ((Number) animationScope.getValue()).floatValue() - o07Var.b;
        if (!MouseWheelScrollingLogicKt.isLowScrollingDelta(fFloatValue)) {
            if (!MouseWheelScrollingLogicKt.isLowScrollingDelta(fFloatValue - mouseWheelScrollingLogic.dispatchMouseWheelScroll(nestedScrollScope, fFloatValue))) {
                animationScope.cancelAnimation();
                return j59.a;
            }
            o07Var.b += fFloatValue;
        }
        if (((Boolean) nl3Var.invoke(Float.valueOf(o07Var.b))).booleanValue()) {
            animationScope.cancelAnimation();
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: canConsumeDelta-Uv8p0NA, reason: not valid java name */
    private final boolean m1552canConsumeDeltaUv8p0NA(ScrollingLogic scrollingLogic, long j) {
        float fM1621toSingleAxisDeltaFromAnglek4lQ0M = scrollingLogic.m1621toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(j));
        if (fM1621toSingleAxisDeltaFromAnglek4lQ0M == 0.0f) {
            return false;
        }
        return fM1621toSingleAxisDeltaFromAnglek4lQ0M > 0.0f ? scrollingLogic.getScrollableState().getCanScrollForward() : scrollingLogic.getScrollableState().getCanScrollBackward();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0105, code lost:
    
        if (r0.invoke(r1, r9) == r10) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, androidx.compose.animation.core.AnimationState] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object dispatchMouseWheelScroll(androidx.compose.foundation.gestures.ScrollingLogic r24, androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta r25, float r26, float r27, defpackage.e02<? super defpackage.j59> r28) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.dispatchMouseWheelScroll(androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta, float, float, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r1v4, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, androidx.compose.animation.core.AnimationState] */
    public static final Object dispatchMouseWheelScroll$waitNextScrollDelta(MouseWheelScrollingLogic mouseWheelScrollingLogic, r07<MouseWheelScrollDelta> r07Var, o07 o07Var, ScrollingLogic scrollingLogic, r07<AnimationState<Float, AnimationVector1D>> r07Var2, long j, e02<? super Boolean> e02Var) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;
        ScrollingLogic scrollingLogic2;
        r07<AnimationState<Float, AnimationVector1D>> r07Var3;
        r07<MouseWheelScrollDelta> r07Var4;
        o07 o07Var2;
        boolean z;
        MouseWheelScrollingLogic mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
        if (e02Var instanceof MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = (MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) e02Var;
            int i = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label = i - Integer.MIN_VALUE;
            } else {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1(e02Var);
            }
        } else {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1(e02Var);
        }
        Object objC = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label;
        if (i2 == 0) {
            r57.b(objC);
            if (j < 0) {
                return Boolean.FALSE;
            }
            MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(mouseWheelScrollingLogic2, null);
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$0 = mouseWheelScrollingLogic2;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$1 = r07Var;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$2 = o07Var;
            scrollingLogic2 = scrollingLogic;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$3 = scrollingLogic2;
            r07Var3 = r07Var2;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$4 = r07Var3;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label = 1;
            objC = yv8.c(j, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1);
            if (objC == a32Var) {
                return a32Var;
            }
            r07Var4 = r07Var;
            o07Var2 = o07Var;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07<AnimationState<Float, AnimationVector1D>> r07Var5 = (r07) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$4;
            ScrollingLogic scrollingLogic3 = (ScrollingLogic) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$3;
            o07Var2 = (o07) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$2;
            r07Var4 = (r07) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$1;
            MouseWheelScrollingLogic mouseWheelScrollingLogic3 = (MouseWheelScrollingLogic) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$0;
            r57.b(objC);
            r07Var3 = r07Var5;
            scrollingLogic2 = scrollingLogic3;
            mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
        }
        MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) objC;
        if (mouseWheelScrollDelta != null) {
            ?? M1555copy9KIMszo$default = MouseWheelScrollDelta.m1555copy9KIMszo$default(mouseWheelScrollDelta, 0L, 0L, r07Var4.b.getShouldApplyImmediately(), 3, null);
            r07Var4.b = M1555copy9KIMszo$default;
            o07Var2.b = scrollingLogic2.m1621toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic2.m1617reverseIfNeededMKHz9U(M1555copy9KIMszo$default.m1558getValueF1C5BW0()));
            r07Var3.b = AnimationStateKt.AnimationState$default(0.0f, 0.0f, 0L, 0L, false, 30, null);
            mouseWheelScrollingLogic2.trackVelocity(mouseWheelScrollDelta);
            z = !MouseWheelScrollingLogicKt.isLowScrollingDelta(o07Var2.b);
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* JADX INFO: renamed from: onMouseWheel-O0kMr_c, reason: not valid java name */
    private final boolean m1553onMouseWheelO0kMr_c(PointerEvent pointerEvent, long j) {
        long jMo1454calculateMouseWheelScroll8xgXZGE = this.mouseWheelScrollConfig.mo1454calculateMouseWheelScroll8xgXZGE(getDensity(), pointerEvent, j);
        if (m1552canConsumeDeltaUv8p0NA(getScrollingLogic(), jMo1454calculateMouseWheelScroll8xgXZGE)) {
            return !(this.channel.mo0trySendJP2dKIU(new MouseWheelScrollDelta(jMo1454calculateMouseWheelScroll8xgXZGE, ((PointerInputChange) qn1.T(pointerEvent.getChanges())).getUptimeMillis(), !this.mouseWheelScrollConfig.isSmoothScrollingEnabled() || this.mouseWheelScrollConfig.isPreciseWheelScroll(pointerEvent), null)) instanceof p91.b);
        }
        return isScrolling$foundation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MouseWheelScrollDelta sumOrNull(x81<MouseWheelScrollDelta> x81Var) {
        MouseWheelScrollDelta mouseWheelScrollDeltaPlus = null;
        for (MouseWheelScrollDelta mouseWheelScrollDelta : NonTouchScrollingLogicKt.untilNull(new aw4(x81Var, 1))) {
            mouseWheelScrollDeltaPlus = mouseWheelScrollDeltaPlus == null ? mouseWheelScrollDelta : mouseWheelScrollDeltaPlus.plus(mouseWheelScrollDelta);
        }
        return mouseWheelScrollDeltaPlus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MouseWheelScrollDelta sumOrNull$lambda$0(x81 x81Var) {
        return (MouseWheelScrollDelta) p91.b(x81Var.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackVelocity(MouseWheelScrollDelta mouseWheelScrollDelta) {
        getVelocityTracker$foundation().m1478addDeltaUv8p0NA(mouseWheelScrollDelta.getTimeMillis(), mouseWheelScrollDelta.m1558getValueF1C5BW0());
    }

    @Override // androidx.compose.foundation.gestures.NonTouchScrollingLogic
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY, reason: not valid java name */
    public void mo1554onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), PointerEventType.Companion.m7524getScroll7fucELk())) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (changes.get(i).isConsumed()) {
                    return;
                }
            }
            if (pointerEventPass == PointerEventPass.Initial && isScrolling$foundation()) {
                m1553onMouseWheelO0kMr_c(pointerEvent, j);
                consume$foundation(pointerEvent);
            }
            if (pointerEventPass == PointerEventPass.Main && !isScrolling$foundation() && m1553onMouseWheelO0kMr_c(pointerEvent, j)) {
                consume$foundation(pointerEvent);
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.NonTouchScrollingLogic
    public void startReceivingEvents(y22 y22Var) {
        if (this.receivingMouseWheelEventsJob == null) {
            this.receivingMouseWheelEventsJob = av0.c(y22Var, null, null, new C04901(null), 3);
        }
    }

    public static final class MouseWheelScrollDelta {
        private final boolean shouldApplyImmediately;
        private final long timeMillis;
        private final long value;

        private MouseWheelScrollDelta(long j, long j2, boolean z) {
            this.value = j;
            this.timeMillis = j2;
            this.shouldApplyImmediately = z;
        }

        /* JADX INFO: renamed from: copy-9KIMszo$default, reason: not valid java name */
        public static /* synthetic */ MouseWheelScrollDelta m1555copy9KIMszo$default(MouseWheelScrollDelta mouseWheelScrollDelta, long j, long j2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                j = mouseWheelScrollDelta.value;
            }
            long j3 = j;
            if ((i & 2) != 0) {
                j2 = mouseWheelScrollDelta.timeMillis;
            }
            long j4 = j2;
            if ((i & 4) != 0) {
                z = mouseWheelScrollDelta.shouldApplyImmediately;
            }
            return mouseWheelScrollDelta.m1557copy9KIMszo(j3, j4, z);
        }

        /* JADX INFO: renamed from: component1-F1C5BW0, reason: not valid java name */
        public final long m1556component1F1C5BW0() {
            return this.value;
        }

        public final long component2() {
            return this.timeMillis;
        }

        public final boolean component3() {
            return this.shouldApplyImmediately;
        }

        /* JADX INFO: renamed from: copy-9KIMszo, reason: not valid java name */
        public final MouseWheelScrollDelta m1557copy9KIMszo(long j, long j2, boolean z) {
            return new MouseWheelScrollDelta(j, j2, z, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MouseWheelScrollDelta)) {
                return false;
            }
            MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) obj;
            return Offset.m5984equalsimpl0(this.value, mouseWheelScrollDelta.value) && this.timeMillis == mouseWheelScrollDelta.timeMillis && this.shouldApplyImmediately == mouseWheelScrollDelta.shouldApplyImmediately;
        }

        public final boolean getShouldApplyImmediately() {
            return this.shouldApplyImmediately;
        }

        public final long getTimeMillis() {
            return this.timeMillis;
        }

        /* JADX INFO: renamed from: getValue-F1C5BW0, reason: not valid java name */
        public final long m1558getValueF1C5BW0() {
            return this.value;
        }

        public int hashCode() {
            return Boolean.hashCode(this.shouldApplyImmediately) + vg.b(Offset.m5989hashCodeimpl(this.value) * 31, 31, this.timeMillis);
        }

        public final MouseWheelScrollDelta plus(MouseWheelScrollDelta mouseWheelScrollDelta) {
            return new MouseWheelScrollDelta(Offset.m5992plusMKHz9U(this.value, mouseWheelScrollDelta.value), Math.max(this.timeMillis, mouseWheelScrollDelta.timeMillis), this.shouldApplyImmediately, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MouseWheelScrollDelta(value=");
            sb.append((Object) Offset.m5995toStringimpl(this.value));
            sb.append(", timeMillis=");
            sb.append(this.timeMillis);
            sb.append(", shouldApplyImmediately=");
            return sg.d(sb, this.shouldApplyImmediately, ')');
        }

        public /* synthetic */ MouseWheelScrollDelta(long j, long j2, boolean z, jh2 jh2Var) {
            this(j, j2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float dispatchMouseWheelScroll(NestedScrollScope nestedScrollScope, float f) {
        ScrollingLogic scrollingLogic = getScrollingLogic();
        return scrollingLogic.m1619toFloatk4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(nestedScrollScope.mo1559scrollByOzD1aCk(scrollingLogic.m1620toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(f)), NestedScrollSource.Companion.m7438getUserInputWNlRxjI())));
    }
}
