package androidx.compose.foundation.pager;

import androidx.collection.SieveCacheKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ScrollIndicatorState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.g26;
import defpackage.h26;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.n1;
import defpackage.n7;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.qr1;
import defpackage.r57;
import defpackage.s;
import defpackage.u;
import defpackage.w65;
import defpackage.y22;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public abstract class PagerState implements ScrollableState {
    public static final int $stable = 0;
    private final PagerState$_scrollIndicatorState$1 _scrollIndicatorState;
    private float accumulator;
    private PagerMeasureResult approachLayoutInfo;
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    private final PagerCacheWindowLogic cacheWindowLogic;
    private final MutableState canScrollBackward$delegate;
    private final MutableState canScrollForward$delegate;
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    private Density density;
    private int firstVisiblePage;
    private int firstVisiblePageOffset;
    private boolean hasLookaheadOccurred;
    private int indexToPrefetch;
    private final MutableInteractionSource internalInteractionSource;
    private final MutableState<Boolean> isLastScrollBackwardState;
    private final MutableState<Boolean> isLastScrollForwardState;
    private int latestPageSizeWithSpacing;
    private int layoutWithMeasurement;
    private int layoutWithoutMeasurement;
    private long maxScrollOffset;
    private final MutableState<j59> measurementScopeInvalidator;
    private long minScrollOffset;
    private final PagerState$pagerCacheWindow$1 pagerCacheWindow;
    private MutableState<PagerMeasureResult> pagerLayoutInfoState;
    private final LazyLayoutPinnedItemList pinnedPages;
    private final MutableState<j59> placementScopeInvalidator;
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    private long premeasureConstraints;
    private float previousPassDelta;
    private final MutableIntState programmaticScrollTargetPage$delegate;
    private final MutableState remeasurement$delegate;
    private final RemeasurementModifier remeasurementModifier;
    private final PagerScrollPosition scrollPosition;
    private final ScrollableState scrollableState;
    private final State settledPage$delegate;
    private final MutableIntState settledPageState$delegate;
    private final State targetPage$delegate;
    private final MutableState upDownDifference$delegate;
    private boolean wasPrefetchingForward;

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerState$animateScrollToPage$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.pager.PagerState", f = "PagerState.kt", l = {663, 670}, m = "animateScrollToPage", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PagerState.this.animateScrollToPage(0, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerState$animateScrollToPage$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.pager.PagerState$animateScrollToPage$3", f = "PagerState.kt", l = {672}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ int $targetPage;
        final /* synthetic */ float $targetPageOffsetToSnappedPosition;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(int i, float f, AnimationSpec<Float> animationSpec, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$targetPage = i;
            this.$targetPageOffsetToSnappedPosition = f;
            this.$animationSpec = animationSpec;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(PagerState pagerState, ScrollScope scrollScope, int i) {
            pagerState.updateTargetPage(scrollScope, i);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = PagerState.this.new AnonymousClass3(this.$targetPage, this.$targetPageOffsetToSnappedPosition, this.$animationSpec, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(scrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                LazyLayoutScrollScope LazyLayoutScrollScope = PagerScrollScopeKt.LazyLayoutScrollScope(PagerState.this, (ScrollScope) this.L$0);
                int i2 = this.$targetPage;
                float f = this.$targetPageOffsetToSnappedPosition;
                AnimationSpec<Float> animationSpec = this.$animationSpec;
                final PagerState pagerState = PagerState.this;
                bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.pager.f
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return PagerState.AnonymousClass3.invokeSuspend$lambda$0(pagerState, (ScrollScope) obj2, iIntValue);
                    }
                };
                this.label = 1;
                if (PagerStateKt.animateScrollToPage(LazyLayoutScrollScope, i2, f, animationSpec, bm3Var, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerState$requestScrollToPage$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.pager.PagerState$requestScrollToPage$1", f = "PagerState.kt", l = {634}, m = "invokeSuspend", v = 1)
    public static final class C05541 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C05541(e02<? super C05541> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PagerState.this.new C05541(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05541) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PagerState pagerState = PagerState.this;
                this.label = 1;
                if (ScrollExtensionsKt.stopScroll$default(pagerState, (MutatePriority) null, this, 1, (Object) null) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerState$scroll$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.pager.PagerState", f = "PagerState.kt", l = {691, 696}, m = "scroll$suspendImpl", v = 1)
    public static final class C05551 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05551(e02<? super C05551> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PagerState.scroll$suspendImpl(PagerState.this, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerState$scrollToPage$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.pager.PagerState$scrollToPage$2", f = "PagerState.kt", l = {551}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ int $page;
        final /* synthetic */ float $pageOffsetFraction;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(float f, int i, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$pageOffsetFraction = f;
            this.$page = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PagerState.this.new AnonymousClass2(this.$pageOffsetFraction, this.$page, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(scrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PagerState pagerState = PagerState.this;
                this.label = 1;
                if (pagerState.awaitScrollDependencies(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            float f = this.$pageOffsetFraction;
            double d = f;
            boolean z = false;
            if (-0.5d <= d && d <= 0.5d) {
                z = true;
            }
            if (!z) {
                InlineClassHelperKt.throwIllegalArgumentException("pageOffsetFraction " + f + " is not within the range -0.5 to 0.5");
            }
            PagerState.this.snapToItem$foundation(PagerState.this.coerceInPageRange(this.$page), this.$pageOffsetFraction, true);
            return j59.a;
        }
    }

    /* JADX WARN: Type inference failed for: r12v1, types: [androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow, androidx.compose.foundation.pager.PagerState$pagerCacheWindow$1] */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.foundation.pager.PagerState$_scrollIndicatorState$1] */
    public PagerState(int i, float f, PrefetchScheduler prefetchScheduler) {
        double d = f;
        if (-0.5d > d || d > 0.5d) {
            InlineClassHelperKt.throwIllegalArgumentException("currentPageOffsetFraction " + f + " is not within the range -0.5 to 0.5");
        }
        int i2 = 2;
        this.upDownDifference$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0()), null, 2, null);
        PagerScrollPosition pagerScrollPosition = new PagerScrollPosition(i, f, this);
        this.scrollPosition = pagerScrollPosition;
        this.firstVisiblePage = i;
        this.maxScrollOffset = Long.MAX_VALUE;
        int i3 = 0;
        this.scrollableState = ScrollableStateKt.ScrollableState(new g26(this, i3));
        this.prefetchingEnabled = true;
        this.indexToPrefetch = -1;
        this.pagerLayoutInfoState = SnapshotStateKt.mutableStateOf(PagerStateKt.getEmptyLayoutInfo(), SnapshotStateKt.neverEqualPolicy());
        this.density = PagerStateKt.UnitDensity;
        this.internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
        this.programmaticScrollTargetPage$delegate = SnapshotIntStateKt.mutableIntStateOf(-1);
        this.settledPageState$delegate = SnapshotIntStateKt.mutableIntStateOf(i);
        this.settledPage$delegate = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new h26(this, i3));
        this.targetPage$delegate = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new s(this, i2));
        LazyLayoutPrefetchState lazyLayoutPrefetchState = new LazyLayoutPrefetchState(prefetchScheduler, new u(this, i2));
        this.prefetchState = lazyLayoutPrefetchState;
        ?? r12 = new LazyLayoutCacheWindow() { // from class: androidx.compose.foundation.pager.PagerState$pagerCacheWindow$1
            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow
            public int calculateAheadWindow(Density density, int i4) {
                return this.this$0.getLatestPageSizeWithSpacing$foundation();
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow
            public int calculateBehindWindow(Density density, int i4) {
                return 0;
            }
        };
        this.pagerCacheWindow = r12;
        this._scrollIndicatorState = new ScrollIndicatorState() { // from class: androidx.compose.foundation.pager.PagerState$_scrollIndicatorState$1
            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getContentSize() {
                return PagerLayoutInfoKt.calculateContentSize(this.this$0.getLayoutInfo(), this.this$0.getPageCount());
            }

            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getScrollOffset() {
                return this.this$0.calculateScrollOffset();
            }

            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getViewportSize() {
                return PagerLayoutInfoKt.getMainAxisViewportSize(this.this$0.getLayoutInfo());
            }
        };
        this.cacheWindowLogic = new PagerCacheWindowLogic(r12, lazyLayoutPrefetchState, new qr1(this, i2));
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo();
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.remeasurement$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.pager.PagerState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void onRemeasurementAvailable(Remeasurement remeasurement) {
                this.this$0.setRemeasurement(remeasurement);
            }
        };
        this.premeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
        this.pinnedPages = new LazyLayoutPinnedItemList();
        pagerScrollPosition.getNearestRangeState();
        this.placementScopeInvalidator = ObservableScopeInvalidator.m2235constructorimpl$default(null, 1, null);
        this.measurementScopeInvalidator = ObservableScopeInvalidator.m2235constructorimpl$default(null, 1, null);
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.canScrollBackward$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isLastScrollForwardState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isLastScrollBackwardState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollToPage$default(PagerState pagerState, int i, float f, AnimationSpec animationSpec, e02 e02Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: animateScrollToPage");
            return null;
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        if ((i2 & 4) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return pagerState.animateScrollToPage(i, f, animationSpec, e02Var);
    }

    public static /* synthetic */ void applyMeasureResult$foundation$default(PagerState pagerState, PagerMeasureResult pagerMeasureResult, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: applyMeasureResult");
            return;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        pagerState.applyMeasureResult$foundation(pagerMeasureResult, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitScrollDependencies(e02<? super j59> e02Var) {
        Object objWaitForFirstLayout;
        return (this.pagerLayoutInfoState.getValue() == PagerStateKt.getEmptyLayoutInfo() && (objWaitForFirstLayout = this.awaitLayoutModifier.waitForFirstLayout(e02Var)) == a32.COROUTINE_SUSPENDED) ? objWaitForFirstLayout : j59.a;
    }

    private final int calculatePrefetchIndex(boolean z, PagerLayoutInfo pagerLayoutInfo) {
        if (!z) {
            return (((PageInfo) qn1.T(pagerLayoutInfo.getVisiblePagesInfo())).getIndex() - pagerLayoutInfo.getBeyondViewportPageCount()) - 1;
        }
        int beyondViewportPageCount = pagerLayoutInfo.getBeyondViewportPageCount() + 1;
        if (beyondViewportPageCount < 0) {
            return Integer.MAX_VALUE;
        }
        return ((PageInfo) qn1.b0(pagerLayoutInfo.getVisiblePagesInfo())).getIndex() + beyondViewportPageCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int calculateScrollOffset() {
        long pageSizeWithSpacing$foundation = (((long) getPageSizeWithSpacing$foundation()) * ((long) this.firstVisiblePage)) + ((long) this.firstVisiblePageOffset);
        if (pageSizeWithSpacing$foundation > SieveCacheKt.NodeLinkMask) {
            pageSizeWithSpacing$foundation = 2147483647L;
        }
        return (int) pageSizeWithSpacing$foundation;
    }

    private final void cancelPrefetchIfVisibleItemsChanged(PagerLayoutInfo pagerLayoutInfo) {
        if (this.indexToPrefetch == -1 || pagerLayoutInfo.getVisiblePagesInfo().isEmpty()) {
            return;
        }
        if (this.indexToPrefetch != calculatePrefetchIndex(this.wasPrefetchingForward, pagerLayoutInfo)) {
            this.indexToPrefetch = -1;
            LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = this.currentPrefetchHandle;
            if (prefetchHandle != null) {
                prefetchHandle.cancel();
            }
            this.currentPrefetchHandle = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int coerceInPageRange(int i) {
        if (getPageCount() > 0) {
            return kx6.f(i, 0, getPageCount() - 1);
        }
        return 0;
    }

    private final int getProgrammaticScrollTargetPage() {
        return this.programmaticScrollTargetPage$delegate.getIntValue();
    }

    private final int getSettledPageState() {
        return this.settledPageState$delegate.getIntValue();
    }

    private final boolean isGestureActionMatchesScroll(float f) {
        if (getLayoutInfo().getOrientation() == Orientation.Vertical) {
            if (Math.signum(f) == Math.signum(-Float.intBitsToFloat((int) (m2308getUpDownDifferenceF1C5BW0$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) {
                return true;
            }
        } else if (Math.signum(f) == Math.signum(-Float.intBitsToFloat((int) (m2308getUpDownDifferenceF1C5BW0$foundation() >> 32)))) {
            return true;
        }
        return isNotGestureAction$foundation();
    }

    public static /* synthetic */ int matchScrollPositionWithKey$foundation$default(PagerState pagerState, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: matchScrollPositionWithKey");
            return 0;
        }
        if ((i2 & 2) != 0) {
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                int currentPage = pagerState.scrollPosition.getCurrentPage();
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                i = currentPage;
            } catch (Throwable th) {
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                throw th;
            }
        }
        return pagerState.matchScrollPositionWithKey$foundation(pagerLazyLayoutItemProvider, i);
    }

    private final void notifyPrefetch(float f, PagerLayoutInfo pagerLayoutInfo) {
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle2;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle3;
        if (this.prefetchingEnabled && !pagerLayoutInfo.getVisiblePagesInfo().isEmpty()) {
            boolean z = f > 0.0f;
            int iCalculatePrefetchIndex = calculatePrefetchIndex(z, pagerLayoutInfo);
            if (iCalculatePrefetchIndex < 0 || iCalculatePrefetchIndex >= getPageCount()) {
                return;
            }
            if (iCalculatePrefetchIndex != this.indexToPrefetch) {
                if (this.wasPrefetchingForward != z && (prefetchHandle3 = this.currentPrefetchHandle) != null) {
                    prefetchHandle3.cancel();
                }
                this.wasPrefetchingForward = z;
                this.indexToPrefetch = iCalculatePrefetchIndex;
                this.currentPrefetchHandle = LazyLayoutPrefetchState.m2225schedulePrecompositionAndPremeasureVKLhPVY$default(this.prefetchState, iCalculatePrefetchIndex, this.premeasureConstraints, null, 4, null);
            }
            if (z) {
                if ((((PageInfo) qn1.b0(pagerLayoutInfo.getVisiblePagesInfo())).getOffset() + (pagerLayoutInfo.getPageSpacing() + pagerLayoutInfo.getPageSize())) - pagerLayoutInfo.getViewportEndOffset() >= f || (prefetchHandle2 = this.currentPrefetchHandle) == null) {
                    return;
                }
                prefetchHandle2.markAsUrgent();
                return;
            }
            if (pagerLayoutInfo.getViewportStartOffset() - ((PageInfo) qn1.T(pagerLayoutInfo.getVisiblePagesInfo())).getOffset() >= (-f) || (prefetchHandle = this.currentPrefetchHandle) == null) {
                return;
            }
            prefetchHandle.markAsUrgent();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float performScroll(float f) {
        PagerMeasureResult pagerMeasureResult;
        long jCurrentAbsoluteScrollOffset = PagerScrollPositionKt.currentAbsoluteScrollOffset(this);
        float f2 = this.accumulator + f;
        long jC = w65.c(f2);
        this.accumulator = f2 - jC;
        if (Math.abs(f) < 1.0E-4f) {
            return f;
        }
        long j = jCurrentAbsoluteScrollOffset + jC;
        long jH = kx6.h(j, this.minScrollOffset, this.maxScrollOffset);
        boolean z = j != jH;
        long j2 = jH - jCurrentAbsoluteScrollOffset;
        float f3 = j2;
        this.previousPassDelta = f3;
        if (Math.abs(j2) != 0) {
            this.isLastScrollForwardState.setValue(Boolean.valueOf(f3 > 0.0f));
            this.isLastScrollBackwardState.setValue(Boolean.valueOf(f3 < 0.0f));
        }
        int i = (int) j2;
        int i2 = -i;
        PagerMeasureResult pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure = this.pagerLayoutInfoState.getValue().copyWithScrollDeltaWithoutRemeasure(i2);
        if (pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure != null && (pagerMeasureResult = this.approachLayoutInfo) != null) {
            PagerMeasureResult pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure2 = pagerMeasureResult != null ? pagerMeasureResult.copyWithScrollDeltaWithoutRemeasure(i2) : null;
            if (pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure2 != null) {
                this.approachLayoutInfo = pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure2;
            } else {
                pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure = null;
            }
        }
        if (pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure != null) {
            applyMeasureResult$foundation(pagerMeasureResultCopyWithScrollDeltaWithoutRemeasure, this.hasLookaheadOccurred, true);
            ObservableScopeInvalidator.m2239invalidateScopeimpl(this.placementScopeInvalidator);
            this.layoutWithoutMeasurement++;
        } else {
            this.scrollPosition.applyScrollDelta(i);
            Remeasurement remeasurement$foundation = getRemeasurement$foundation();
            if (remeasurement$foundation != null) {
                remeasurement$foundation.forceRemeasure();
            }
            this.layoutWithMeasurement++;
        }
        return (z ? Long.valueOf(j2) : Float.valueOf(f)).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 prefetchState$lambda$0(PagerState pagerState, NestedPrefetchScope nestedPrefetchScope) {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            nestedPrefetchScope.schedulePrecomposition(pagerState.firstVisiblePage);
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    public static /* synthetic */ void requestScrollToPage$default(PagerState pagerState, int i, float f, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: requestScrollToPage");
            return;
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        pagerState.requestScrollToPage(i, f);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r9.scroll(r7, r8, r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object scroll$suspendImpl(androidx.compose.foundation.pager.PagerState r6, androidx.compose.foundation.MutatePriority r7, defpackage.bm3<? super androidx.compose.foundation.gestures.ScrollScope, ? super defpackage.e02<? super defpackage.j59>, ? extends java.lang.Object> r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.pager.PagerState.C05551
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = (androidx.compose.foundation.pager.PagerState.C05551) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = new androidx.compose.foundation.pager.PagerState$scroll$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            java.lang.Object r6 = r0.L$0
            androidx.compose.foundation.pager.PagerState r6 = (androidx.compose.foundation.pager.PagerState) r6
            defpackage.r57.b(r9)
            goto L77
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r3
        L35:
            java.lang.Object r6 = r0.L$2
            r8 = r6
            bm3 r8 = (defpackage.bm3) r8
            java.lang.Object r6 = r0.L$1
            r7 = r6
            androidx.compose.foundation.MutatePriority r7 = (androidx.compose.foundation.MutatePriority) r7
            java.lang.Object r6 = r0.L$0
            androidx.compose.foundation.pager.PagerState r6 = (androidx.compose.foundation.pager.PagerState) r6
            defpackage.r57.b(r9)
            goto L59
        L47:
            defpackage.r57.b(r9)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r5
            java.lang.Object r9 = r6.awaitScrollDependencies(r0)
            if (r9 != r1) goto L59
            goto L76
        L59:
            boolean r9 = r6.isScrollInProgress()
            if (r9 != 0) goto L66
            int r9 = r6.getCurrentPage()
            r6.setSettledPageState(r9)
        L66:
            androidx.compose.foundation.gestures.ScrollableState r9 = r6.scrollableState
            r0.L$0 = r6
            r0.L$1 = r3
            r0.L$2 = r3
            r0.label = r4
            java.lang.Object r7 = r9.scroll(r7, r8, r0)
            if (r7 != r1) goto L77
        L76:
            return r1
        L77:
            r7 = -1
            r6.setProgrammaticScrollTargetPage(r7)
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.scroll$suspendImpl(androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.MutatePriority, bm3, e02):java.lang.Object");
    }

    public static /* synthetic */ Object scrollToPage$default(PagerState pagerState, int i, float f, e02 e02Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: scrollToPage");
            return null;
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        return pagerState.scrollToPage(i, f, e02Var);
    }

    private final void setCanScrollBackward(boolean z) {
        this.canScrollBackward$delegate.setValue(Boolean.valueOf(z));
    }

    private final void setCanScrollForward(boolean z) {
        this.canScrollForward$delegate.setValue(Boolean.valueOf(z));
    }

    private final void setProgrammaticScrollTargetPage(int i) {
        this.programmaticScrollTargetPage$delegate.setIntValue(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRemeasurement(Remeasurement remeasurement) {
        this.remeasurement$delegate.setValue(remeasurement);
    }

    private final void setSettledPageState(int i) {
        this.settledPageState$delegate.setIntValue(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int settledPage_delegate$lambda$0(PagerState pagerState) {
        return pagerState.isScrollInProgress() ? pagerState.getSettledPageState() : pagerState.getCurrentPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int targetPage_delegate$lambda$0(PagerState pagerState) {
        int currentPage;
        if (!pagerState.isScrollInProgress()) {
            currentPage = pagerState.getCurrentPage();
        } else if (pagerState.getProgrammaticScrollTargetPage() != -1) {
            currentPage = pagerState.getProgrammaticScrollTargetPage();
        } else if (Math.abs(pagerState.getCurrentPageOffsetFraction()) >= Math.abs(pagerState.getPositionThresholdFraction$foundation())) {
            boolean lastScrolledForward = pagerState.getLastScrolledForward();
            int i = pagerState.firstVisiblePage;
            currentPage = lastScrolledForward ? i + 1 : i;
        } else {
            currentPage = pagerState.getCurrentPage();
        }
        return pagerState.coerceInPageRange(currentPage);
    }

    private final void tryRunPrefetch(PagerMeasureResult pagerMeasureResult) {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (this.prefetchingEnabled) {
                if (pagerMeasureResult.getBeyondViewportPageCount() >= getPageCount()) {
                    return;
                }
                if (Math.abs(this.previousPassDelta) <= 0.5f) {
                    return;
                }
                if (isGestureActionMatchesScroll(this.previousPassDelta)) {
                    if (ComposeFoundationFlags.isCacheWindowForPagerEnabled) {
                        this.cacheWindowLogic.onScroll(this.previousPassDelta, pagerMeasureResult);
                    } else {
                        notifyPrefetch(this.previousPassDelta, pagerMeasureResult);
                    }
                    j59 j59Var = j59.a;
                }
            }
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    public static /* synthetic */ void updateCurrentPage$default(PagerState pagerState, ScrollScope scrollScope, int i, float f, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: updateCurrentPage");
            return;
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        pagerState.updateCurrentPage(scrollScope, i, f);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c2, code lost:
    
        if (androidx.compose.foundation.gestures.ScrollableState.scroll$default(r16, null, r2, r6, 1, null) == r7) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateScrollToPage(int r17, float r18, androidx.compose.animation.core.AnimationSpec<java.lang.Float> r19, defpackage.e02<? super defpackage.j59> r20) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r20
            boolean r4 = r3 instanceof androidx.compose.foundation.pager.PagerState.AnonymousClass1
            if (r4 == 0) goto L1c
            r4 = r3
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r4 = (androidx.compose.foundation.pager.PagerState.AnonymousClass1) r4
            int r5 = r4.label
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = r5 & r6
            if (r7 == 0) goto L1c
            int r5 = r5 - r6
            r4.label = r5
        L1a:
            r6 = r4
            goto L22
        L1c:
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r4 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            r4.<init>(r3)
            goto L1a
        L22:
            java.lang.Object r3 = r6.result
            a32 r7 = defpackage.a32.COROUTINE_SUSPENDED
            int r4 = r6.label
            r8 = 0
            r9 = 2
            r5 = 1
            if (r4 == 0) goto L4b
            if (r4 == r5) goto L3c
            if (r4 != r9) goto L36
            defpackage.r57.b(r3)
            goto Lc5
        L36:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            return r8
        L3c:
            float r1 = r6.F$0
            int r2 = r6.I$0
            java.lang.Object r4 = r6.L$0
            androidx.compose.animation.core.AnimationSpec r4 = (androidx.compose.animation.core.AnimationSpec) r4
            defpackage.r57.b(r3)
            r15 = r2
            r2 = r1
            r1 = r15
            goto L78
        L4b:
            defpackage.r57.b(r3)
            int r3 = r0.getCurrentPage()
            if (r1 != r3) goto L5d
            float r3 = r0.getCurrentPageOffsetFraction()
            int r3 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r3 != 0) goto L5d
            goto L63
        L5d:
            int r3 = r0.getPageCount()
            if (r3 != 0) goto L66
        L63:
            j59 r0 = defpackage.j59.a
            return r0
        L66:
            r3 = r19
            r6.L$0 = r3
            r6.I$0 = r1
            r6.F$0 = r2
            r6.label = r5
            java.lang.Object r4 = r0.awaitScrollDependencies(r6)
            if (r4 != r7) goto L77
            goto Lc4
        L77:
            r4 = r3
        L78:
            double r10 = (double) r2
            r12 = -4620693217682128896(0xbfe0000000000000, double:-0.5)
            int r3 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
            r12 = 0
            if (r3 > 0) goto L87
            r13 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            int r3 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1))
            if (r3 > 0) goto L87
            goto L88
        L87:
            r5 = r12
        L88:
            if (r5 != 0) goto La0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r5 = "pageOffsetFraction "
            r3.<init>(r5)
            r3.append(r2)
            java.lang.String r5 = " is not within the range -0.5 to 0.5"
            r3.append(r5)
            java.lang.String r3 = r3.toString()
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalArgumentException(r3)
        La0:
            int r1 = r0.coerceInPageRange(r1)
            int r3 = r0.getPageSizeWithSpacing$foundation()
            float r3 = (float) r3
            float r3 = r3 * r2
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$3 r2 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$3
            r5 = 0
            r15 = r1
            r1 = r0
            r0 = r2
            r2 = r15
            r0.<init>(r2, r3, r4, r5)
            r6.L$0 = r8
            r6.label = r9
            r1 = 0
            r4 = 1
            r2 = r0
            r3 = r6
            r0 = r16
            java.lang.Object r0 = androidx.compose.foundation.gestures.ScrollableState.scroll$default(r0, r1, r2, r3, r4, r5)
            if (r0 != r7) goto Lc5
        Lc4:
            return r7
        Lc5:
            j59 r0 = defpackage.j59.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.animateScrollToPage(int, float, androidx.compose.animation.core.AnimationSpec, e02):java.lang.Object");
    }

    public final void applyMeasureResult$foundation(PagerMeasureResult pagerMeasureResult, boolean z, boolean z2) {
        this.prefetchState.setIdealNestedPrefetchCount$foundation(pagerMeasureResult.getVisiblePagesInfo().size());
        this.latestPageSizeWithSpacing = pagerMeasureResult.getPageSpacing() + pagerMeasureResult.getPageSize();
        if (!z && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = pagerMeasureResult;
            return;
        }
        if (z) {
            this.hasLookaheadOccurred = true;
        }
        PagerScrollPosition pagerScrollPosition = this.scrollPosition;
        if (z2) {
            pagerScrollPosition.updateCurrentPageOffsetFraction(pagerMeasureResult.getCurrentPageOffsetFraction());
        } else {
            pagerScrollPosition.updateFromMeasureResult(pagerMeasureResult);
            if (!ComposeFoundationFlags.isCacheWindowForPagerEnabled) {
                cancelPrefetchIfVisibleItemsChanged(pagerMeasureResult);
            } else if (this.prefetchingEnabled) {
                this.cacheWindowLogic.onVisibleItemsChanged(pagerMeasureResult);
            }
        }
        this.pagerLayoutInfoState.setValue(pagerMeasureResult);
        setCanScrollForward(pagerMeasureResult.getCanScrollForward());
        setCanScrollBackward(pagerMeasureResult.getCanScrollBackward());
        MeasuredPage firstVisiblePage = pagerMeasureResult.getFirstVisiblePage();
        if (firstVisiblePage != null) {
            this.firstVisiblePage = firstVisiblePage.getIndex();
        }
        this.firstVisiblePageOffset = pagerMeasureResult.getFirstVisiblePageScrollOffset();
        tryRunPrefetch(pagerMeasureResult);
        this.maxScrollOffset = PagerStateKt.calculateNewMaxScrollOffset(pagerMeasureResult, getPageCount());
        long jCalculateNewMinScrollOffset = PagerStateKt.calculateNewMinScrollOffset(pagerMeasureResult, getPageCount());
        long j = this.maxScrollOffset;
        if (jCalculateNewMinScrollOffset > j) {
            jCalculateNewMinScrollOffset = j;
        }
        this.minScrollOffset = jCalculateNewMinScrollOffset;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f) {
        return this.scrollableState.dispatchRawDelta(f);
    }

    public final PagerMeasureResult getApproachLayoutInfo$foundation() {
        return this.approachLayoutInfo;
    }

    public final AwaitFirstLayoutModifier getAwaitLayoutModifier$foundation() {
        return this.awaitLayoutModifier;
    }

    public final LazyLayoutBeyondBoundsInfo getBeyondBoundsInfo$foundation() {
        return this.beyondBoundsInfo;
    }

    public final PagerCacheWindowLogic getCacheWindowLogic$foundation() {
        return this.cacheWindowLogic;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
    }

    public final int getCurrentPage() {
        return this.scrollPosition.getCurrentPage();
    }

    public final float getCurrentPageOffsetFraction() {
        return this.scrollPosition.getCurrentPageOffsetFraction();
    }

    public final Density getDensity$foundation() {
        return this.density;
    }

    public final int getFirstVisiblePage$foundation() {
        return this.firstVisiblePage;
    }

    public final int getFirstVisiblePageOffset$foundation() {
        return this.firstVisiblePageOffset;
    }

    public final boolean getHasLookaheadOccurred$foundation() {
        return this.hasLookaheadOccurred;
    }

    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    public final MutableInteractionSource getInternalInteractionSource$foundation() {
        return this.internalInteractionSource;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledBackward() {
        return this.isLastScrollBackwardState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledForward() {
        return this.isLastScrollForwardState.getValue().booleanValue();
    }

    public final int getLatestPageSizeWithSpacing$foundation() {
        return this.latestPageSizeWithSpacing;
    }

    public final PagerLayoutInfo getLayoutInfo() {
        return this.pagerLayoutInfoState.getValue();
    }

    public final int getLayoutWithMeasurement$foundation() {
        return this.layoutWithMeasurement;
    }

    public final long getMaxScrollOffset$foundation() {
        return this.maxScrollOffset;
    }

    /* JADX INFO: renamed from: getMeasurementScopeInvalidator-zYiylxw$foundation, reason: not valid java name */
    public final MutableState<j59> m2305getMeasurementScopeInvalidatorzYiylxw$foundation() {
        return this.measurementScopeInvalidator;
    }

    public final long getMinScrollOffset$foundation() {
        return this.minScrollOffset;
    }

    public final y74 getNearestRange$foundation() {
        return this.scrollPosition.getNearestRangeState().getValue();
    }

    public final int getNumMeasurePasses$foundation() {
        return this.layoutWithMeasurement + this.layoutWithoutMeasurement;
    }

    public final float getOffsetDistanceInPages(int i) {
        boolean z = false;
        if (i >= 0 && i <= getPageCount()) {
            z = true;
        }
        if (!z) {
            StringBuilder sbC = n7.c(i, "page ", " is not within the range 0 to ");
            sbC.append(getPageCount());
            InlineClassHelperKt.throwIllegalArgumentException(sbC.toString());
        }
        return (i - getCurrentPage()) - getCurrentPageOffsetFraction();
    }

    public abstract int getPageCount();

    public final int getPageSize$foundation() {
        return this.pagerLayoutInfoState.getValue().getPageSize();
    }

    public final int getPageSizeWithSpacing$foundation() {
        return getPageSpacing$foundation() + getPageSize$foundation();
    }

    public final int getPageSpacing$foundation() {
        return this.pagerLayoutInfoState.getValue().getPageSpacing();
    }

    public final LazyLayoutPinnedItemList getPinnedPages$foundation() {
        return this.pinnedPages;
    }

    /* JADX INFO: renamed from: getPlacementScopeInvalidator-zYiylxw$foundation, reason: not valid java name */
    public final MutableState<j59> m2306getPlacementScopeInvalidatorzYiylxw$foundation() {
        return this.placementScopeInvalidator;
    }

    public final float getPositionThresholdFraction$foundation() {
        return Math.min(this.density.mo1434toPx0680j_4(PagerStateKt.getDefaultPositionThreshold()), getPageSize$foundation() / 2.0f) / getPageSize$foundation();
    }

    public final LazyLayoutPrefetchState getPrefetchState$foundation() {
        return this.prefetchState;
    }

    public final boolean getPrefetchingEnabled$foundation() {
        return this.prefetchingEnabled;
    }

    /* JADX INFO: renamed from: getPremeasureConstraints-msEJaDk$foundation, reason: not valid java name */
    public final long m2307getPremeasureConstraintsmsEJaDk$foundation() {
        return this.premeasureConstraints;
    }

    public final Remeasurement getRemeasurement$foundation() {
        return (Remeasurement) this.remeasurement$delegate.getValue();
    }

    public final RemeasurementModifier getRemeasurementModifier$foundation() {
        return this.remeasurementModifier;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public ScrollIndicatorState getScrollIndicatorState() {
        return this._scrollIndicatorState;
    }

    public final int getSettledPage() {
        return ((Number) this.settledPage$delegate.getValue()).intValue();
    }

    public final int getTargetPage() {
        return ((Number) this.targetPage$delegate.getValue()).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getUpDownDifference-F1C5BW0$foundation, reason: not valid java name */
    public final long m2308getUpDownDifferenceF1C5BW0$foundation() {
        return ((Offset) this.upDownDifference$delegate.getValue()).m5997unboximpl();
    }

    public final boolean isNotGestureAction$foundation() {
        return ((int) Float.intBitsToFloat((int) (m2308getUpDownDifferenceF1C5BW0$foundation() >> 32))) == 0 && ((int) Float.intBitsToFloat((int) (m2308getUpDownDifferenceF1C5BW0$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) == 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final int matchScrollPositionWithKey$foundation(PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, int i) {
        return this.scrollPosition.matchPageWithKey(pagerLazyLayoutItemProvider, i);
    }

    public final void requestScrollToPage(int i, float f) {
        if (isScrollInProgress()) {
            av0.c(this.pagerLayoutInfoState.getValue().getCoroutineScope(), null, null, new C05541(null), 3);
        }
        snapToItem$foundation(i, f, false);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, bm3<? super ScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        return scroll$suspendImpl(this, mutatePriority, bm3Var, e02Var);
    }

    public final Object scrollToPage(int i, float f, e02<? super j59> e02Var) {
        Object objScroll$default = ScrollableState.scroll$default(this, null, new AnonymousClass2(f, i, null), e02Var, 1, null);
        return objScroll$default == a32.COROUTINE_SUSPENDED ? objScroll$default : j59.a;
    }

    public final void setDensity$foundation(Density density) {
        this.density = density;
    }

    public final void setLatestPageSizeWithSpacing$foundation(int i) {
        this.latestPageSizeWithSpacing = i;
    }

    public final void setMaxScrollOffset$foundation(long j) {
        this.maxScrollOffset = j;
    }

    public final void setMinScrollOffset$foundation(long j) {
        this.minScrollOffset = j;
    }

    public final void setPrefetchingEnabled$foundation(boolean z) {
        this.prefetchingEnabled = z;
    }

    /* JADX INFO: renamed from: setPremeasureConstraints-BRTryo0$foundation, reason: not valid java name */
    public final void m2309setPremeasureConstraintsBRTryo0$foundation(long j) {
        this.premeasureConstraints = j;
    }

    /* JADX INFO: renamed from: setUpDownDifference-k-4lQ0M$foundation, reason: not valid java name */
    public final void m2310setUpDownDifferencek4lQ0M$foundation(long j) {
        this.upDownDifference$delegate.setValue(Offset.m5976boximpl(j));
    }

    public final void snapToItem$foundation(int i, float f, boolean z) {
        if (this.scrollPosition.getCurrentPage() != i || this.scrollPosition.getCurrentPageOffsetFraction() != f) {
            this.cacheWindowLogic.resetStrategy();
        }
        this.scrollPosition.requestPositionAndForgetLastKnownKey(i, f);
        if (!z) {
            ObservableScopeInvalidator.m2239invalidateScopeimpl(this.measurementScopeInvalidator);
            return;
        }
        Remeasurement remeasurement$foundation = getRemeasurement$foundation();
        if (remeasurement$foundation != null) {
            remeasurement$foundation.forceRemeasure();
        }
    }

    public final void updateCurrentPage(ScrollScope scrollScope, int i, float f) {
        snapToItem$foundation(i, f, true);
    }

    public final void updateTargetPage(ScrollScope scrollScope, int i) {
        setProgrammaticScrollTargetPage(coerceInPageRange(i));
    }

    public PagerState() {
        this(0, 0.0f, null, 7, null);
    }

    public /* synthetic */ PagerState(int i, float f, PrefetchScheduler prefetchScheduler, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.0f : f, (i2 & 4) != 0 ? null : prefetchScheduler);
    }

    public /* synthetic */ PagerState(int i, float f, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.0f : f);
    }

    public PagerState(int i, float f) {
        this(i, f, null);
    }
}
