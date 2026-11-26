package androidx.compose.material3;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.b03;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.w65;
import defpackage.y22;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class EnterAlwaysSearchBarScrollBehavior implements SearchBarScrollBehavior {
    public static final Companion Companion = new Companion(null);
    private MutableFloatState _offset;
    private final ll3<Boolean> canScroll;
    private final DecayAnimationSpec<Float> flingAnimationSpec;
    private final NestedScrollConnection nestedScrollConnection = new NestedScrollConnection() { // from class: androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior$nestedScrollConnection$1
        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
        public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
            return !this.this$0.getCanScroll().invoke().booleanValue() ? Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M()) : this.this$0.m3426settleSearchBarOhffZ5M(Velocity.m9281getYimpl(j2), e02Var);
        }

        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
        public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
            if (!this.this$0.getCanScroll().invoke().booleanValue()) {
                return Offset.Companion.m6003getZeroF1C5BW0();
            }
            if (this.this$0.getReverseLayout()) {
                int i2 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                if (Float.intBitsToFloat(i2) > 0.0f) {
                    EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior = this.this$0;
                    enterAlwaysSearchBarScrollBehavior.setScrollOffset(Float.intBitsToFloat(i2) + enterAlwaysSearchBarScrollBehavior.getScrollOffset());
                    return Offset.m5981copydBAh8RU$default(j2, 0.0f, 0.0f, 2, null);
                }
            }
            if (!this.this$0.getReverseLayout()) {
                EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior2 = this.this$0;
                enterAlwaysSearchBarScrollBehavior2.setScrollOffset(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + enterAlwaysSearchBarScrollBehavior2.getScrollOffset());
            }
            return Offset.Companion.m6003getZeroF1C5BW0();
        }

        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
        /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
        public long mo2131onPreScrollOzD1aCk(long j, int i) {
            if (!this.this$0.getCanScroll().invoke().booleanValue()) {
                return Offset.Companion.m6003getZeroF1C5BW0();
            }
            float scrollOffset = this.this$0.getScrollOffset();
            EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior = this.this$0;
            enterAlwaysSearchBarScrollBehavior.setScrollOffset(Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)) + enterAlwaysSearchBarScrollBehavior.getScrollOffset());
            return (this.this$0.getReverseLayout() || scrollOffset == this.this$0.getScrollOffset()) ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5981copydBAh8RU$default(j, 0.0f, 0.0f, 2, null);
        }
    };
    private final boolean reverseLayout;
    private final MutableFloatState scrollOffsetLimit$delegate;
    private final AnimationSpec<Float> snapAnimationSpec;

    public EnterAlwaysSearchBarScrollBehavior(float f, float f2, ll3<Boolean> ll3Var, boolean z, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec) {
        this.canScroll = ll3Var;
        this.reverseLayout = z;
        this.snapAnimationSpec = animationSpec;
        this.flingAnimationSpec = decayAnimationSpec;
        this._offset = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.scrollOffsetLimit$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 searchBarScrollBehavior$lambda$0(EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, float f) {
        enterAlwaysSearchBarScrollBehavior.setScrollOffset(enterAlwaysSearchBarScrollBehavior.getScrollOffset() + f);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult searchBarScrollBehavior$lambda$2(EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        final int iB = w65.b(enterAlwaysSearchBarScrollBehavior.getScrollOffset());
        int height = placeableMo7702measureBRTryo0.getHeight() + iB;
        if (height < 0) {
            height = 0;
        }
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), height, null, new nl3() { // from class: androidx.compose.material3.l1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return EnterAlwaysSearchBarScrollBehavior.searchBarScrollBehavior$lambda$2$lambda$1(placeableMo7702measureBRTryo0, iB, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 searchBarScrollBehavior$lambda$2$lambda$1(Placeable placeable, int i, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, 0, i, 0.0f, (nl3) null, 12, (Object) null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 searchBarScrollBehavior$lambda$3(EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, IntSize intSize) {
        enterAlwaysSearchBarScrollBehavior.setScrollOffsetLimit(-((int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00df  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX INFO: renamed from: settleSearchBar-OhffZ5M, reason: not valid java name */
    public final Object m3426settleSearchBarOhffZ5M(float f, e02<? super Velocity> e02Var) {
        EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1 enterAlwaysSearchBarScrollBehavior$settleSearchBar$1;
        float scrollOffset;
        final o07 o07Var;
        float f2;
        o07 o07Var2;
        AnimationState animationStateAnimationState$default;
        float scrollOffsetLimit;
        Float f3;
        AnimationSpec<Float> animationSpec;
        nl3 nl3Var;
        o07 o07Var3;
        if (e02Var instanceof EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1) {
            enterAlwaysSearchBarScrollBehavior$settleSearchBar$1 = (EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1) e02Var;
            int i = enterAlwaysSearchBarScrollBehavior$settleSearchBar$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                enterAlwaysSearchBarScrollBehavior$settleSearchBar$1.label = i - Integer.MIN_VALUE;
            } else {
                enterAlwaysSearchBarScrollBehavior$settleSearchBar$1 = new EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1(this, e02Var);
            }
        } else {
            enterAlwaysSearchBarScrollBehavior$settleSearchBar$1 = new EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1(this, e02Var);
        }
        EnterAlwaysSearchBarScrollBehavior$settleSearchBar$1 enterAlwaysSearchBarScrollBehavior$settleSearchBar$2 = enterAlwaysSearchBarScrollBehavior$settleSearchBar$1;
        Object obj = enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.label;
        if (i2 != 0) {
            if (i2 == 1) {
                f2 = enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.F$0;
                o07Var2 = (o07) enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.L$0;
                r57.b(obj);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                o07Var3 = (o07) enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.L$0;
                r57.b(obj);
            }
            o07Var = o07Var3;
            return Velocity.m9271boximpl(VelocityKt.Velocity(0.0f, o07Var.b));
        }
        r57.b(obj);
        scrollOffset = getScrollOffsetLimit() == 0.0f ? 0.0f : getScrollOffset() / getScrollOffsetLimit();
        if (scrollOffset < 0.01f || scrollOffset == 1.0f) {
            return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
        }
        o07Var = new o07();
        o07Var.b = f;
        if (Math.abs(f) <= 1.0f) {
            if (getScrollOffsetLimit() < getScrollOffset() && getScrollOffset() < 0.0f) {
                animationStateAnimationState$default = AnimationStateKt.AnimationState$default(getScrollOffset(), 0.0f, 0L, 0L, false, 30, null);
                if (scrollOffset < 0.5f) {
                    scrollOffsetLimit = 0.0f;
                } else {
                    scrollOffsetLimit = getScrollOffsetLimit();
                }
                f3 = new Float(scrollOffsetLimit);
                animationSpec = this.snapAnimationSpec;
                nl3Var = new nl3() { // from class: androidx.compose.material3.k1
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return EnterAlwaysSearchBarScrollBehavior.settleSearchBar_OhffZ5M$lambda$5(this.b, (AnimationScope) obj2);
                    }
                };
                enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.L$0 = o07Var;
                enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.label = 2;
                if (SuspendAnimationKt.animateTo$default(animationStateAnimationState$default, f3, animationSpec, false, nl3Var, enterAlwaysSearchBarScrollBehavior$settleSearchBar$2, 4, null) != a32Var) {
                    o07Var3 = o07Var;
                    o07Var = o07Var3;
                }
            }
            return Velocity.m9271boximpl(VelocityKt.Velocity(0.0f, o07Var.b));
        }
        final o07 o07Var4 = new o07();
        AnimationState animationStateAnimationState$default2 = AnimationStateKt.AnimationState$default(0.0f, f, 0L, 0L, false, 28, null);
        DecayAnimationSpec<Float> decayAnimationSpec = this.flingAnimationSpec;
        nl3 nl3Var2 = new nl3() { // from class: androidx.compose.material3.j1
            @Override // defpackage.nl3
            public final Object invoke(Object obj2) {
                return EnterAlwaysSearchBarScrollBehavior.settleSearchBar_OhffZ5M$lambda$4(o07Var4, this, o07Var, (AnimationScope) obj2);
            }
        };
        enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.L$0 = o07Var;
        enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.F$0 = scrollOffset;
        enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.label = 1;
        if (SuspendAnimationKt.animateDecay$default(animationStateAnimationState$default2, decayAnimationSpec, false, nl3Var2, enterAlwaysSearchBarScrollBehavior$settleSearchBar$2, 2, null) != a32Var) {
            f2 = scrollOffset;
            o07Var2 = o07Var;
        }
        return a32Var;
        scrollOffset = f2;
        o07Var = o07Var2;
        if (getScrollOffsetLimit() < getScrollOffset()) {
            animationStateAnimationState$default = AnimationStateKt.AnimationState$default(getScrollOffset(), 0.0f, 0L, 0L, false, 30, null);
            if (scrollOffset < 0.5f) {
                scrollOffsetLimit = 0.0f;
            } else {
                scrollOffsetLimit = getScrollOffsetLimit();
            }
            f3 = new Float(scrollOffsetLimit);
            animationSpec = this.snapAnimationSpec;
            nl3Var = new nl3() { // from class: androidx.compose.material3.k1
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return EnterAlwaysSearchBarScrollBehavior.settleSearchBar_OhffZ5M$lambda$5(this.b, (AnimationScope) obj2);
                }
            };
            enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.L$0 = o07Var;
            enterAlwaysSearchBarScrollBehavior$settleSearchBar$2.label = 2;
            if (SuspendAnimationKt.animateTo$default(animationStateAnimationState$default, f3, animationSpec, false, nl3Var, enterAlwaysSearchBarScrollBehavior$settleSearchBar$2, 4, null) != a32Var) {
                o07Var3 = o07Var;
                o07Var = o07Var3;
            }
            return a32Var;
        }
        return Velocity.m9271boximpl(VelocityKt.Velocity(0.0f, o07Var.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 settleSearchBar_OhffZ5M$lambda$4(o07 o07Var, EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, o07 o07Var2, AnimationScope animationScope) {
        float fFloatValue = ((Number) animationScope.getValue()).floatValue() - o07Var.b;
        float scrollOffset = enterAlwaysSearchBarScrollBehavior.getScrollOffset();
        enterAlwaysSearchBarScrollBehavior.setScrollOffset(scrollOffset + fFloatValue);
        float fAbs = Math.abs(scrollOffset - enterAlwaysSearchBarScrollBehavior.getScrollOffset());
        o07Var.b = ((Number) animationScope.getValue()).floatValue();
        o07Var2.b = ((Number) animationScope.getVelocity()).floatValue();
        if (Math.abs(fFloatValue - fAbs) > 0.5f) {
            animationScope.cancelAnimation();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 settleSearchBar_OhffZ5M$lambda$5(EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior, AnimationScope animationScope) {
        enterAlwaysSearchBarScrollBehavior.setScrollOffset(((Number) animationScope.getValue()).floatValue());
        return j59.a;
    }

    public final ll3<Boolean> getCanScroll() {
        return this.canScroll;
    }

    public final DecayAnimationSpec<Float> getFlingAnimationSpec() {
        return this.flingAnimationSpec;
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public NestedScrollConnection getNestedScrollConnection() {
        return this.nestedScrollConnection;
    }

    public final boolean getReverseLayout() {
        return this.reverseLayout;
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public float getScrollOffset() {
        return this._offset.getFloatValue();
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public float getScrollOffsetLimit() {
        return this.scrollOffsetLimit$delegate.getFloatValue();
    }

    public final AnimationSpec<Float> getSnapAnimationSpec() {
        return this.snapAnimationSpec;
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public Modifier searchBarScrollBehavior(Modifier modifier) {
        return OnRemeasuredModifierKt.onSizeChanged(LayoutModifierKt.layout(ClipKt.clipToBounds(DraggableKt.draggable$default(modifier, DraggableKt.DraggableState(new m1(this, 0)), Orientation.Vertical, this.canScroll.invoke().booleanValue(), null, false, null, new AnonymousClass2(null), false, 184, null)), new dm3() { // from class: androidx.compose.material3.n1
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return EnterAlwaysSearchBarScrollBehavior.searchBarScrollBehavior$lambda$2(this.b, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        }), new nl3() { // from class: androidx.compose.material3.o1
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return EnterAlwaysSearchBarScrollBehavior.searchBarScrollBehavior$lambda$3(this.b, (IntSize) obj);
            }
        });
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public void setScrollOffset(float f) {
        this._offset.setFloatValue(kx6.d(f, getScrollOffsetLimit(), 0.0f));
    }

    @Override // androidx.compose.material3.SearchBarScrollBehavior
    public void setScrollOffsetLimit(float f) {
        this.scrollOffsetLimit$delegate.setFloatValue(f);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior) {
            return u96.i(Float.valueOf(enterAlwaysSearchBarScrollBehavior.getScrollOffset()), Float.valueOf(enterAlwaysSearchBarScrollBehavior.getScrollOffsetLimit()), Boolean.valueOf(enterAlwaysSearchBarScrollBehavior.getReverseLayout()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final EnterAlwaysSearchBarScrollBehavior Saver$lambda$1(ll3 ll3Var, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, List list) {
            Object obj = list.get(0);
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            Object obj2 = list.get(1);
            obj2.getClass();
            float fFloatValue2 = ((Float) obj2).floatValue();
            Object obj3 = list.get(2);
            obj3.getClass();
            return new EnterAlwaysSearchBarScrollBehavior(fFloatValue, fFloatValue2, ll3Var, ((Boolean) obj3).booleanValue(), animationSpec, decayAnimationSpec);
        }

        public final Saver<EnterAlwaysSearchBarScrollBehavior, ?> Saver(ll3<Boolean> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec) {
            return ListSaverKt.listSaver(new p1(), new b03(ll3Var, animationSpec, decayAnimationSpec, 0));
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior$searchBarScrollBehavior$2", f = "SearchBar.kt", l = {TypedValues.Custom.TYPE_BOOLEAN}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
        /* synthetic */ float F$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
        }

        public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = EnterAlwaysSearchBarScrollBehavior.this.new AnonymousClass2(e02Var);
            anonymousClass2.F$0 = f;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                float f = this.F$0;
                EnterAlwaysSearchBarScrollBehavior enterAlwaysSearchBarScrollBehavior = EnterAlwaysSearchBarScrollBehavior.this;
                this.label = 1;
                if (enterAlwaysSearchBarScrollBehavior.m3426settleSearchBarOhffZ5M(f, this) == a32Var) {
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

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
            return invoke(y22Var, f.floatValue(), e02Var);
        }
    }
}
