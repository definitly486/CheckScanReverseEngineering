package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.VelocityKt;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.media3.muxer.MuxerUtil;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.a32;
import defpackage.ah;
import defpackage.al;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ul2;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, ComposeNodeLifecycleCallback, OwnerScope, OnApplyWindowInsetsListener {
    private nl3<? super Rect, j59> bringIntoViewRequester;
    private final int compositeKeyHash;
    private Density density;
    private final NestedScrollDispatcher dispatcher;
    private boolean hasUpdateBlock;
    private WindowInsetsCompat insets;
    private boolean isDrawing;
    private int lastHeightMeasureSpec;
    private int lastWidthMeasureSpec;
    private final LayoutNode layoutNode;
    private LifecycleOwner lifecycleOwner;
    private final int[] location;
    private Modifier modifier;
    private final NestedScrollingParentHelper nestedScrollingParentHelper;
    private nl3<? super Density, j59> onDensityChanged;
    private nl3<? super Modifier, j59> onModifierChanged;
    private nl3<? super Boolean, j59> onRequestDisallowInterceptTouchEvent;
    private final Owner owner;
    private final int[] position;
    private ll3<j59> release;
    private ll3<j59> reset;
    private final ll3<j59> runInvalidate;
    private final ll3<j59> runUpdate;
    private SavedStateRegistryOwner savedStateRegistryOwner;
    private long size;
    private ll3<j59> update;
    private final View view;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final nl3<AndroidViewHolder, j59> OnCommitAffectingUpdate = AndroidViewHolder$Companion$OnCommitAffectingUpdate$1.INSTANCE;

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1", f = "AndroidViewHolder.android.kt", l = {634, 636}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ boolean $consumed;
        final /* synthetic */ long $viewVelocity;
        int label;
        final /* synthetic */ AndroidViewHolder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, AndroidViewHolder androidViewHolder, long j, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$consumed = z;
            this.this$0 = androidViewHolder;
            this.$viewVelocity = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$consumed, this.this$0, this.$viewVelocity, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        
            if (r11 == r0) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
        
            if (r11 == r0) goto L18;
         */
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
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r11)
                goto L57
            L10:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r10)
                r10 = 0
                return r10
            L17:
                defpackage.r57.b(r11)
                goto L3a
            L1b:
                defpackage.r57.b(r11)
                boolean r11 = r10.$consumed
                androidx.compose.ui.viewinterop.AndroidViewHolder r1 = r10.this$0
                if (r11 != 0) goto L40
                androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r4 = androidx.compose.ui.viewinterop.AndroidViewHolder.access$getDispatcher$p(r1)
                androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.Companion
                long r5 = r11.m9291getZero9UxMQ8M()
                long r7 = r10.$viewVelocity
                r10.label = r3
                r9 = r10
                java.lang.Object r11 = r4.m7419dispatchPostFlingRZ2iAVY(r5, r7, r9)
                if (r11 != r0) goto L3a
                goto L56
            L3a:
                androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
                r11.m9289unboximpl()
                goto L5c
            L40:
                r6 = r10
                androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r1 = androidx.compose.ui.viewinterop.AndroidViewHolder.access$getDispatcher$p(r1)
                r10 = r2
                long r2 = r6.$viewVelocity
                androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.Companion
                long r4 = r11.m9291getZero9UxMQ8M()
                r6.label = r10
                java.lang.Object r11 = r1.m7419dispatchPostFlingRZ2iAVY(r2, r4, r6)
                if (r11 != r0) goto L57
            L56:
                return r0
            L57:
                androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
                r11.m9289unboximpl()
            L5c:
                j59 r10 = defpackage.j59.a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.viewinterop.AndroidViewHolder.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1", f = "AndroidViewHolder.android.kt", l = {645}, m = "invokeSuspend", v = 1)
    public static final class C06551 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ long $toBeConsumed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06551(long j, e02<? super C06551> e02Var) {
            super(2, e02Var);
            this.$toBeConsumed = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return AndroidViewHolder.this.new C06551(this.$toBeConsumed, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06551) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                NestedScrollDispatcher nestedScrollDispatcher = AndroidViewHolder.this.dispatcher;
                long j = this.$toBeConsumed;
                this.label = 1;
                if (nestedScrollDispatcher.m7421dispatchPreFlingQWom1Mo(j, this) == a32Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidViewHolder(Context context, CompositionContext compositionContext, int i, NestedScrollDispatcher nestedScrollDispatcher, View view, Owner owner) {
        super(context);
        this.compositeKeyHash = i;
        this.dispatcher = nestedScrollDispatcher;
        this.view = view;
        this.owner = owner;
        if (compositionContext != null) {
            WindowRecomposer_androidKt.setCompositionContext(this, compositionContext);
        }
        setSaveFromParentEnabled(false);
        addView(view);
        ViewCompat.setWindowInsetsAnimationCallback(this, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder.2
            {
                super(1);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
                return AndroidViewHolder.this.insetToLayoutPosition(windowInsetsCompat);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                return AndroidViewHolder.this.insetBounds(boundsCompat);
            }
        });
        ViewCompat.setOnApplyWindowInsetsListener(this, this);
        this.update = AndroidViewHolder$update$1.INSTANCE;
        this.reset = AndroidViewHolder$reset$1.INSTANCE;
        this.release = AndroidViewHolder$release$1.INSTANCE;
        Modifier.Companion companion = Modifier.Companion;
        this.modifier = companion;
        this.density = DensityKt.Density$default(1.0f, 0.0f, 2, null);
        this.position = new int[2];
        this.size = IntSize.Companion.m9218getZeroYbymL2g();
        this.runUpdate = new AndroidViewHolder$runUpdate$1(this);
        this.runInvalidate = new AndroidViewHolder$runInvalidate$1(this);
        this.location = new int[2];
        this.lastWidthMeasureSpec = Integer.MIN_VALUE;
        this.lastHeightMeasureSpec = Integer.MIN_VALUE;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        Object[] objArr = 0 == true ? 1 : 0;
        final LayoutNode layoutNode = new LayoutNode(false, objArr, 3, null);
        layoutNode.setInteropViewFactoryHolder$ui(this);
        Modifier modifierThen = OnGloballyPositionedModifierKt.onGloballyPositioned(DrawModifierKt.drawBehind(PointerInteropFilter_androidKt.pointerInteropFilter(SemanticsModifierKt.semantics(NestedScrollModifierKt.nestedScroll(companion, AndroidViewHolder_androidKt.NoOpScrollConnection, nestedScrollDispatcher), true, AndroidViewHolder$layoutNode$1$coreModifier$1.INSTANCE), this), new AndroidViewHolder$layoutNode$1$coreModifier$2(this, layoutNode, this)), new AndroidViewHolder$layoutNode$1$coreModifier$3(this, layoutNode)).then(new BringIntoViewElement(new AndroidViewHolder$layoutNode$1$coreModifier$4(this)));
        layoutNode.setCompositeKeyHash(i);
        layoutNode.setModifier(this.modifier.then(modifierThen));
        this.onModifierChanged = new AndroidViewHolder$layoutNode$1$1(layoutNode, modifierThen);
        layoutNode.setDensity(this.density);
        this.onDensityChanged = new AndroidViewHolder$layoutNode$1$2(layoutNode);
        layoutNode.setOnAttach$ui(new AndroidViewHolder$layoutNode$1$3(this, layoutNode));
        layoutNode.setOnDetach$ui(new AndroidViewHolder$layoutNode$1$4(this));
        layoutNode.setMeasurePolicy(new MeasurePolicy() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            private final int intrinsicHeight(int i2) {
                AndroidViewHolder androidViewHolder = this.$this_run;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(androidViewHolder.obtainMeasureSpec(0, i2, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return this.$this_run.getMeasuredHeight();
            }

            private final int intrinsicWidth(int i2) {
                AndroidViewHolder androidViewHolder = this.$this_run;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                AndroidViewHolder androidViewHolder2 = this.$this_run;
                ViewGroup.LayoutParams layoutParams = androidViewHolder2.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(iMakeMeasureSpec, androidViewHolder2.obtainMeasureSpec(0, i2, layoutParams.height));
                return this.$this_run.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i2) {
                return intrinsicHeight(i2);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i2) {
                return intrinsicWidth(i2);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* JADX INFO: renamed from: measure-3p2s80s */
            public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                if (this.$this_run.getChildCount() == 0) {
                    return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, AndroidViewHolder$layoutNode$1$5$measure$1.INSTANCE, 4, null);
                }
                if (Constraints.m8997getMinWidthimpl(j) != 0) {
                    this.$this_run.getChildAt(0).setMinimumWidth(Constraints.m8997getMinWidthimpl(j));
                }
                if (Constraints.m8996getMinHeightimpl(j) != 0) {
                    this.$this_run.getChildAt(0).setMinimumHeight(Constraints.m8996getMinHeightimpl(j));
                }
                AndroidViewHolder androidViewHolder = this.$this_run;
                int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                ViewGroup.LayoutParams layoutParams = this.$this_run.getLayoutParams();
                layoutParams.getClass();
                int iObtainMeasureSpec = androidViewHolder.obtainMeasureSpec(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, layoutParams.width);
                AndroidViewHolder androidViewHolder2 = this.$this_run;
                int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
                int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                ViewGroup.LayoutParams layoutParams2 = this.$this_run.getLayoutParams();
                layoutParams2.getClass();
                androidViewHolder.measure(iObtainMeasureSpec, androidViewHolder2.obtainMeasureSpec(iM8996getMinHeightimpl, iM8994getMaxHeightimpl, layoutParams2.height));
                return MeasureScope.layout$default(measureScope, this.$this_run.getMeasuredWidth(), this.$this_run.getMeasuredHeight(), null, new AndroidViewHolder$layoutNode$1$5$measure$2(this.$this_run, layoutNode), 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i2) {
                return intrinsicHeight(i2);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i2) {
                return intrinsicWidth(i2);
            }
        });
        this.layoutNode = layoutNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            InlineClassHelperKt.throwIllegalStateException("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return this.owner.getSnapshotObserver();
    }

    private final Insets inset(Insets insets, int i, int i2, int i3, int i4) {
        int i5 = insets.left - i;
        if (i5 < 0) {
            i5 = 0;
        }
        int i6 = insets.top - i2;
        if (i6 < 0) {
            i6 = 0;
        }
        int i7 = insets.right - i3;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = insets.bottom - i4;
        return Insets.of(i5, i6, i7, i8 >= 0 ? i8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WindowInsetsAnimationCompat.BoundsCompat insetBounds(WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        NodeCoordinator innerCoordinator$ui = this.layoutNode.getInnerCoordinator$ui();
        if (innerCoordinator$ui.isAttached()) {
            long jM9187roundk4lQ0M = IntOffsetKt.m9187roundk4lQ0M(LayoutCoordinatesKt.positionInRoot(innerCoordinator$ui));
            int iM9170getXimpl = IntOffset.m9170getXimpl(jM9187roundk4lQ0M);
            if (iM9170getXimpl < 0) {
                iM9170getXimpl = 0;
            }
            int iM9171getYimpl = IntOffset.m9171getYimpl(jM9187roundk4lQ0M);
            int i = iM9171getYimpl < 0 ? 0 : iM9171getYimpl;
            long jMo7710getSizeYbymL2g = LayoutCoordinatesKt.findRootCoordinates(innerCoordinator$ui).mo7710getSizeYbymL2g();
            int i2 = (int) (jMo7710getSizeYbymL2g >> 32);
            int i3 = (int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            long jMo7710getSizeYbymL2g2 = innerCoordinator$ui.mo7710getSizeYbymL2g();
            long jM9187roundk4lQ0M2 = IntOffsetKt.m9187roundk4lQ0M(innerCoordinator$ui.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) | (((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 >> 32))) << 32))));
            int iM9170getXimpl2 = i2 - IntOffset.m9170getXimpl(jM9187roundk4lQ0M2);
            if (iM9170getXimpl2 < 0) {
                iM9170getXimpl2 = 0;
            }
            int iM9171getYimpl2 = i3 - IntOffset.m9171getYimpl(jM9187roundk4lQ0M2);
            int i4 = iM9171getYimpl2 >= 0 ? iM9171getYimpl2 : 0;
            if (iM9170getXimpl != 0 || i != 0 || iM9170getXimpl2 != 0 || i4 != 0) {
                int i5 = iM9170getXimpl;
                int i6 = iM9170getXimpl2;
                return new WindowInsetsAnimationCompat.BoundsCompat(inset(boundsCompat.getLowerBound(), i5, i, i6, i4), inset(boundsCompat.getUpperBound(), i5, i, i6, i4));
            }
        }
        return boundsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WindowInsetsCompat insetToLayoutPosition(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.hasInsets()) {
            NodeCoordinator innerCoordinator$ui = this.layoutNode.getInnerCoordinator$ui();
            if (innerCoordinator$ui.isAttached()) {
                long jM9187roundk4lQ0M = IntOffsetKt.m9187roundk4lQ0M(LayoutCoordinatesKt.positionInRoot(innerCoordinator$ui));
                int iM9170getXimpl = IntOffset.m9170getXimpl(jM9187roundk4lQ0M);
                if (iM9170getXimpl < 0) {
                    iM9170getXimpl = 0;
                }
                int iM9171getYimpl = IntOffset.m9171getYimpl(jM9187roundk4lQ0M);
                if (iM9171getYimpl < 0) {
                    iM9171getYimpl = 0;
                }
                long jMo7710getSizeYbymL2g = LayoutCoordinatesKt.findRootCoordinates(innerCoordinator$ui).mo7710getSizeYbymL2g();
                int i = (int) (jMo7710getSizeYbymL2g >> 32);
                int i2 = (int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                long jMo7710getSizeYbymL2g2 = innerCoordinator$ui.mo7710getSizeYbymL2g();
                long jM9187roundk4lQ0M2 = IntOffsetKt.m9187roundk4lQ0M(innerCoordinator$ui.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) | (((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 >> 32))) << 32))));
                int iM9170getXimpl2 = i - IntOffset.m9170getXimpl(jM9187roundk4lQ0M2);
                if (iM9170getXimpl2 < 0) {
                    iM9170getXimpl2 = 0;
                }
                int iM9171getYimpl2 = i2 - IntOffset.m9171getYimpl(jM9187roundk4lQ0M2);
                int i3 = iM9171getYimpl2 >= 0 ? iM9171getYimpl2 : 0;
                if (iM9170getXimpl != 0 || iM9171getYimpl != 0 || iM9170getXimpl2 != 0 || i3 != 0) {
                    return windowInsetsCompat.inset(iM9170getXimpl, iM9171getYimpl, iM9170getXimpl2, i3);
                }
            }
        }
        return windowInsetsCompat;
    }

    private final <T> T insetValue(T t, fm3<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> fm3Var) {
        NodeCoordinator innerCoordinator$ui = this.layoutNode.getInnerCoordinator$ui();
        if (innerCoordinator$ui.isAttached()) {
            long jM9187roundk4lQ0M = IntOffsetKt.m9187roundk4lQ0M(LayoutCoordinatesKt.positionInRoot(innerCoordinator$ui));
            int iM9170getXimpl = IntOffset.m9170getXimpl(jM9187roundk4lQ0M);
            if (iM9170getXimpl < 0) {
                iM9170getXimpl = 0;
            }
            int iM9171getYimpl = IntOffset.m9171getYimpl(jM9187roundk4lQ0M);
            if (iM9171getYimpl < 0) {
                iM9171getYimpl = 0;
            }
            long jMo7710getSizeYbymL2g = LayoutCoordinatesKt.findRootCoordinates(innerCoordinator$ui).mo7710getSizeYbymL2g();
            int i = (int) (jMo7710getSizeYbymL2g >> 32);
            int i2 = (int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            long jMo7710getSizeYbymL2g2 = innerCoordinator$ui.mo7710getSizeYbymL2g();
            long jM9187roundk4lQ0M2 = IntOffsetKt.m9187roundk4lQ0M(innerCoordinator$ui.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) | (((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g2 >> 32))) << 32))));
            int iM9170getXimpl2 = i - IntOffset.m9170getXimpl(jM9187roundk4lQ0M2);
            if (iM9170getXimpl2 < 0) {
                iM9170getXimpl2 = 0;
            }
            int iM9171getYimpl2 = i2 - IntOffset.m9171getYimpl(jM9187roundk4lQ0M2);
            int i3 = iM9171getYimpl2 >= 0 ? iM9171getYimpl2 : 0;
            if (iM9170getXimpl != 0 || iM9171getYimpl != 0 || iM9170getXimpl2 != 0 || i3 != 0) {
                return fm3Var.invoke(Integer.valueOf(iM9170getXimpl), Integer.valueOf(iM9171getYimpl), Integer.valueOf(iM9170getXimpl2), Integer.valueOf(i3));
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int obtainMeasureSpec(int i, int i2, int i3) {
        if (i3 >= 0 || i == i2) {
            return View.MeasureSpec.makeMeasureSpec(kx6.f(i3, i, i2), 1073741824);
        }
        if (i3 != -2 || i2 == Integer.MAX_VALUE) {
            return (i3 != -1 || i2 == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        getLocationInWindow(this.location);
        int[] iArr = this.location;
        int i = iArr[0];
        region.op(i, iArr[1], getWidth() + i, getHeight() + this.location[1], Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final Density getDensity() {
        return this.density;
    }

    public final View getInteropView() {
        return this.view;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.getNestedScrollAxes();
    }

    public final nl3<Density, j59> getOnDensityChanged$ui() {
        return this.onDensityChanged;
    }

    public final nl3<Modifier, j59> getOnModifierChanged$ui() {
        return this.onModifierChanged;
    }

    public final nl3<Boolean, j59> getOnRequestDisallowInterceptTouchEvent$ui() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    public final ll3<j59> getRelease() {
        return this.release;
    }

    public final ll3<j59> getReset() {
        return this.reset;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    public final ll3<j59> getUpdate() {
        return this.update;
    }

    public final View getView() {
        return this.view;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    @ul2
    public ViewParent invalidateChildInParent(int[] iArr, android.graphics.Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        invalidateOrDefer();
        return null;
    }

    public final void invalidateOrDefer() {
        if (this.isDrawing) {
            this.view.postOnAnimation(new al(this.runInvalidate, 0));
        } else {
            this.layoutNode.invalidateLayer$ui();
        }
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.view.isNestedScrollingEnabled();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return isAttachedToWindow();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.insets = new WindowInsetsCompat(windowInsetsCompat);
        return insetToLayoutPosition(windowInsetsCompat);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.runUpdate.invoke();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onDeactivate() {
        this.reset.invoke();
        removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        super.onDescendantInvalidated(view, view2);
        invalidateOrDefer();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().clear$ui(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.view.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            return;
        }
        if (this.view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        this.view.measure(i, i2);
        setMeasuredDimension(this.view.getMeasuredWidth(), this.view.getMeasuredHeight());
        this.lastWidthMeasureSpec = i;
        this.lastHeightMeasureSpec = i2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        av0.c(this.dispatcher.getCoroutineScope(), null, null, new AnonymousClass1(z, this, VelocityKt.Velocity(AndroidViewHolder_androidKt.toComposeVelocity(f), AndroidViewHolder_androidKt.toComposeVelocity(f2)), null), 3);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        av0.c(this.dispatcher.getCoroutineScope(), null, null, new C06551(VelocityKt.Velocity(AndroidViewHolder_androidKt.toComposeVelocity(f), AndroidViewHolder_androidKt.toComposeVelocity(f2)), null), 3);
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            float composeOffset = AndroidViewHolder_androidKt.toComposeOffset(i);
            long jM7422dispatchPreScrollOzD1aCk = nestedScrollDispatcher.m7422dispatchPreScrollOzD1aCk(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(AndroidViewHolder_androidKt.toComposeOffset(i2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(composeOffset) << 32)), AndroidViewHolder_androidKt.toNestedScrollSource(i3));
            iArr[0] = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (jM7422dispatchPreScrollOzD1aCk >> 32)));
            iArr[1] = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (jM7422dispatchPreScrollOzD1aCk & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            float composeOffset = AndroidViewHolder_androidKt.toComposeOffset(i);
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(AndroidViewHolder_androidKt.toComposeOffset(i2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(composeOffset) << 32));
            float composeOffset2 = AndroidViewHolder_androidKt.toComposeOffset(i3);
            long jM7420dispatchPostScrollDzOQY0M = nestedScrollDispatcher.m7420dispatchPostScrollDzOQY0M(jM5979constructorimpl, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(AndroidViewHolder_androidKt.toComposeOffset(i4))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(composeOffset2) << 32)), AndroidViewHolder_androidKt.toNestedScrollSource(i5));
            iArr[0] = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (jM7420dispatchPostScrollDzOQY0M >> 32)));
            iArr[1] = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (jM7420dispatchPostScrollDzOQY0M & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i, i2);
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onRelease() {
        this.release.invoke();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onReuse() {
        if (this.view.getParent() != this) {
            addView(this.view);
        } else {
            this.reset.invoke();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return ((i & 2) == 0 && (i & 1) == 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        this.nestedScrollingParentHelper.onStopNestedScroll(view, i);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public final void remeasure() {
        int i;
        int i2 = this.lastWidthMeasureSpec;
        if (i2 == Integer.MIN_VALUE || (i = this.lastHeightMeasureSpec) == Integer.MIN_VALUE) {
            return;
        }
        measure(i2, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, android.graphics.Rect rect, boolean z) {
        nl3<? super Rect, j59> nl3Var = this.bringIntoViewRequester;
        if (nl3Var == null) {
            return true;
        }
        nl3Var.invoke(rect != null ? RectHelper_androidKt.toComposeRect(rect) : null);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        nl3<? super Boolean, j59> nl3Var = this.onRequestDisallowInterceptTouchEvent;
        if (nl3Var != null) {
            nl3Var.invoke(Boolean.valueOf(z));
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void setDensity(Density density) {
        if (density != this.density) {
            this.density = density;
            nl3<? super Density, j59> nl3Var = this.onDensityChanged;
            if (nl3Var != null) {
                nl3Var.invoke(density);
            }
        }
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.lifecycleOwner) {
            this.lifecycleOwner = lifecycleOwner;
            ViewTreeLifecycleOwner.set(this, lifecycleOwner);
        }
    }

    public final void setModifier(Modifier modifier) {
        if (modifier != this.modifier) {
            this.modifier = modifier;
            nl3<? super Modifier, j59> nl3Var = this.onModifierChanged;
            if (nl3Var != null) {
                nl3Var.invoke(modifier);
            }
        }
    }

    public final void setOnDensityChanged$ui(nl3<? super Density, j59> nl3Var) {
        this.onDensityChanged = nl3Var;
    }

    public final void setOnModifierChanged$ui(nl3<? super Modifier, j59> nl3Var) {
        this.onModifierChanged = nl3Var;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui(nl3<? super Boolean, j59> nl3Var) {
        this.onRequestDisallowInterceptTouchEvent = nl3Var;
    }

    public final void setRelease(ll3<j59> ll3Var) {
        this.release = ll3Var;
    }

    public final void setReset(ll3<j59> ll3Var) {
        this.reset = ll3Var;
    }

    public final void setSavedStateRegistryOwner(SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            ViewTreeSavedStateRegistryOwner.set(this, savedStateRegistryOwner);
        }
    }

    public final void setUpdate(ll3<j59> ll3Var) {
        this.update = ll3Var;
        this.hasUpdateBlock = true;
        this.runUpdate.invoke();
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            float composeOffset = AndroidViewHolder_androidKt.toComposeOffset(i);
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(AndroidViewHolder_androidKt.toComposeOffset(i2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(composeOffset) << 32));
            float composeOffset2 = AndroidViewHolder_androidKt.toComposeOffset(i3);
            nestedScrollDispatcher.m7420dispatchPostScrollDzOQY0M(jM5979constructorimpl, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(AndroidViewHolder_androidKt.toComposeOffset(i4))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(composeOffset2) << 32)), AndroidViewHolder_androidKt.toNestedScrollSource(i5));
        }
    }
}
