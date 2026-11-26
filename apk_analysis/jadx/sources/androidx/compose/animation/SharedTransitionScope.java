package androidx.compose.animation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.LookaheadScopeKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fg;
import defpackage.gh4;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface SharedTransitionScope extends LookaheadScope {

    public interface OverlayClip {
        Path getClipPath(SharedContentState sharedContentState, Rect rect, LayoutDirection layoutDirection, Density density);
    }

    public interface PlaceholderSize {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            private static final PlaceholderSize AnimatedSize = new PlaceholderSize() { // from class: androidx.compose.animation.SharedTransitionScope$PlaceholderSize$Companion$AnimatedSize$1
                @Override // androidx.compose.animation.SharedTransitionScope.PlaceholderSize
                /* JADX INFO: renamed from: calculateSize-JyjRU_E */
                public final long mo1150calculateSizeJyjRU_E(long j, long j2) {
                    return j2;
                }
            };
            private static final PlaceholderSize ContentSize = new PlaceholderSize() { // from class: androidx.compose.animation.SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1
                @Override // androidx.compose.animation.SharedTransitionScope.PlaceholderSize
                /* JADX INFO: renamed from: calculateSize-JyjRU_E */
                public final long mo1150calculateSizeJyjRU_E(long j, long j2) {
                    return j;
                }
            };

            private Companion() {
            }

            public final PlaceholderSize getAnimatedSize() {
                return AnimatedSize;
            }

            public final PlaceholderSize getContentSize() {
                return ContentSize;
            }
        }

        /* JADX INFO: renamed from: calculateSize-JyjRU_E, reason: not valid java name */
        long mo1150calculateSizeJyjRU_E(long j, long j2);
    }

    public interface ResizeMode {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            private static final ResizeMode RemeasureToBounds = RemeasureImpl.INSTANCE;

            private Companion() {
            }

            public static /* synthetic */ ResizeMode scaleToBounds$default(Companion companion, ContentScale contentScale, Alignment alignment, int i, Object obj) {
                if ((i & 1) != 0) {
                    contentScale = ContentScale.Companion.getFillWidth();
                }
                if ((i & 2) != 0) {
                    alignment = Alignment.Companion.getCenter();
                }
                return companion.scaleToBounds(contentScale, alignment);
            }

            public final ResizeMode getRemeasureToBounds() {
                return RemeasureToBounds;
            }

            public final ResizeMode scaleToBounds(ContentScale contentScale, Alignment alignment) {
                return SharedTransitionScopeKt.ScaleToBoundsCached(contentScale, alignment);
            }
        }
    }

    public interface SharedContentConfig {
        /* JADX INFO: renamed from: alternativeTargetBoundsInTransitionScopeAfterRemoval-cSwnlzA, reason: not valid java name */
        default Rect m1151alternativeTargetBoundsInTransitionScopeAfterRemovalcSwnlzA(SharedContentState sharedContentState, Rect rect, long j) {
            return null;
        }

        default boolean getShouldKeepEnabledForOngoingAnimation() {
            return true;
        }

        default boolean isEnabled(SharedContentState sharedContentState) {
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$renderInSharedTransitionScopeOverlay$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<Boolean> {
        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(SharedTransitionScope.this.isTransitionActive());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$skipToLookaheadPosition$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04481 extends gh4 implements ll3<Boolean> {
        public C04481() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(SharedTransitionScope.this.isTransitionActive());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$skipToLookaheadPosition$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<IntSize, Boolean> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Boolean invoke(IntSize intSize) {
            return m1153invokeozmzZPI(intSize.m9217unboximpl());
        }

        /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
        public final Boolean m1153invokeozmzZPI(long j) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$skipToLookaheadPosition$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements dm3<ApproachMeasureScope, Measurable, Constraints, MeasureResult> {
        final /* synthetic */ ll3<Boolean> $enabled;
        final /* synthetic */ SharedTransitionScope this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(ll3<Boolean> ll3Var, SharedTransitionScope sharedTransitionScope) {
            super(3);
            this.$enabled = ll3Var;
            this.this$0 = sharedTransitionScope;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ MeasureResult invoke(ApproachMeasureScope approachMeasureScope, Measurable measurable, Constraints constraints) {
            return m1154invoke3p2s80s(approachMeasureScope, measurable, constraints.m9001unboximpl());
        }

        /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
        public final MeasureResult m1154invoke3p2s80s(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j) {
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(approachMeasureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new SharedTransitionScope$skipToLookaheadPosition$4$1$1(this.$enabled, placeableMo7702measureBRTryo0, this.this$0), 4, null);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$skipToLookaheadSize$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04491 extends gh4 implements ll3<Boolean> {
        public C04491() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(SharedTransitionScope.this.isTransitionActive());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Modifier renderInSharedTransitionScopeOverlay$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, float f, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: renderInSharedTransitionScopeOverlay");
            return null;
        }
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            ll3Var = sharedTransitionScope.new AnonymousClass1();
        }
        return sharedTransitionScope.renderInSharedTransitionScopeOverlay(modifier, f, ll3Var);
    }

    static /* synthetic */ Modifier sharedBounds$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, BoundsTransform boundsTransform, ResizeMode resizeMode, PlaceholderSize placeholderSize, boolean z, float f, OverlayClip overlayClip, int i, Object obj) {
        if (obj == null) {
            return sharedTransitionScope.sharedBounds(modifier, sharedContentState, animatedVisibilityScope, (i & 4) != 0 ? EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null) : enterTransition, (i & 8) != 0 ? EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null) : exitTransition, (i & 16) != 0 ? SharedTransitionDefaults.INSTANCE.getBoundsTransform() : boundsTransform, (i & 32) != 0 ? ResizeMode.Companion.scaleToBounds(ContentScale.Companion.getFillWidth(), Alignment.Companion.getCenter()) : resizeMode, (i & 64) != 0 ? PlaceholderSize.Companion.getContentSize() : placeholderSize, (i & 128) != 0 ? true : z, (i & 256) != 0 ? 0.0f : f, (i & 512) != 0 ? SharedTransitionScopeKt.ParentClip : overlayClip);
        }
        n1.e("Super calls with default arguments not supported in this target, function: sharedBounds");
        return null;
    }

    static /* synthetic */ Modifier sharedElement$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, BoundsTransform boundsTransform, PlaceholderSize placeholderSize, boolean z, float f, OverlayClip overlayClip, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: sharedElement");
            return null;
        }
        if ((i & 4) != 0) {
            boundsTransform = SharedTransitionDefaults.INSTANCE.getBoundsTransform();
        }
        BoundsTransform boundsTransform2 = boundsTransform;
        if ((i & 8) != 0) {
            placeholderSize = PlaceholderSize.Companion.getContentSize();
        }
        return sharedTransitionScope.sharedElement(modifier, sharedContentState, animatedVisibilityScope, boundsTransform2, placeholderSize, (i & 16) != 0 ? true : z, (i & 32) != 0 ? 0.0f : f, (i & 64) != 0 ? SharedTransitionScopeKt.ParentClip : overlayClip);
    }

    static /* synthetic */ Modifier sharedElementWithCallerManagedVisibility$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, SharedContentState sharedContentState, boolean z, BoundsTransform boundsTransform, PlaceholderSize placeholderSize, boolean z2, float f, OverlayClip overlayClip, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: sharedElementWithCallerManagedVisibility");
            return null;
        }
        if ((i & 4) != 0) {
            boundsTransform = SharedTransitionDefaults.INSTANCE.getBoundsTransform();
        }
        BoundsTransform boundsTransform2 = boundsTransform;
        if ((i & 8) != 0) {
            placeholderSize = PlaceholderSize.Companion.getContentSize();
        }
        return sharedTransitionScope.sharedElementWithCallerManagedVisibility(modifier, sharedContentState, z, boundsTransform2, placeholderSize, (i & 16) != 0 ? true : z2, (i & 32) != 0 ? 0.0f : f, (i & 64) != 0 ? SharedTransitionScopeKt.ParentClip : overlayClip);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Modifier skipToLookaheadPosition$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: skipToLookaheadPosition");
            return null;
        }
        if ((i & 1) != 0) {
            ll3Var = sharedTransitionScope.new C04481();
        }
        return sharedTransitionScope.skipToLookaheadPosition(modifier, ll3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Modifier skipToLookaheadSize$default(SharedTransitionScope sharedTransitionScope, Modifier modifier, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: skipToLookaheadSize");
            return null;
        }
        if ((i & 1) != 0) {
            ll3Var = sharedTransitionScope.new C04491();
        }
        return sharedTransitionScope.skipToLookaheadSize(modifier, ll3Var);
    }

    OverlayClip OverlayClip(Shape shape);

    default SharedContentConfig SharedContentConfig() {
        return CachedSharedContentConfig.INSTANCE;
    }

    boolean isTransitionActive();

    default SharedContentState rememberSharedContentState(Object obj, SharedContentConfig sharedContentConfig, Composer composer, int i) {
        composer.startReplaceGroup(-148945892);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-148945892, i, -1, "androidx.compose.animation.SharedTransitionScope.rememberSharedContentState (SharedTransitionScope.kt:850)");
        }
        boolean zChanged = composer.changed(obj);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new SharedContentState(obj, sharedContentConfig);
            composer.updateRememberedValue(objRememberedValue);
        }
        SharedContentState sharedContentState = (SharedContentState) objRememberedValue;
        sharedContentState.setConfig$animation(sharedContentConfig);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return sharedContentState;
    }

    Modifier renderInSharedTransitionScopeOverlay(Modifier modifier, float f, ll3<Boolean> ll3Var);

    Modifier sharedBounds(Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, BoundsTransform boundsTransform, ResizeMode resizeMode, PlaceholderSize placeholderSize, boolean z, float f, OverlayClip overlayClip);

    Modifier sharedElement(Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, BoundsTransform boundsTransform, PlaceholderSize placeholderSize, boolean z, float f, OverlayClip overlayClip);

    Modifier sharedElementWithCallerManagedVisibility(Modifier modifier, SharedContentState sharedContentState, boolean z, BoundsTransform boundsTransform, PlaceholderSize placeholderSize, boolean z2, float f, OverlayClip overlayClip);

    default Modifier skipToLookaheadPosition(Modifier modifier, ll3<Boolean> ll3Var) {
        return LookaheadScopeKt.approachLayout(modifier, AnonymousClass2.INSTANCE, new AnonymousClass3(ll3Var), new AnonymousClass4(ll3Var, this));
    }

    Modifier skipToLookaheadSize(Modifier modifier, ll3<Boolean> ll3Var);

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScope$skipToLookaheadPosition$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements bm3<Placeable.PlacementScope, LayoutCoordinates, Boolean> {
        final /* synthetic */ ll3<Boolean> $enabled;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(ll3<Boolean> ll3Var) {
            super(2);
            this.$enabled = ll3Var;
        }

        @Override // defpackage.bm3
        public final Boolean invoke(Placeable.PlacementScope placementScope, LayoutCoordinates layoutCoordinates) {
            return this.$enabled.invoke();
        }
    }

    public static final class SharedContentState {
        public static final int $stable = 8;
        private final MutableState config$delegate;
        private final MutableState internalState$delegate;
        private final Object key;

        public SharedContentState(Object obj, SharedContentConfig sharedContentConfig) {
            this.key = obj;
            this.config$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(sharedContentConfig, null, 2, null);
            this.internalState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        }

        private final SharedElementEntry getNonNullInternalState() {
            SharedElementEntry internalState$animation = getInternalState$animation();
            if (internalState$animation != null) {
                return internalState$animation;
            }
            fg.c("Error: SharedContentState has not been added to a sharedElement/sharedBoundsmodifier yet. Therefore the internal state has not been initialized.");
            return null;
        }

        public final Path getClipPathInOverlay() {
            return getNonNullInternalState().getClipPathInOverlay$animation();
        }

        public final SharedContentConfig getConfig$animation() {
            return (SharedContentConfig) this.config$delegate.getValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final SharedElementEntry getInternalState$animation() {
            return (SharedElementEntry) this.internalState$delegate.getValue();
        }

        public final Object getKey() {
            return this.key;
        }

        public final SharedContentState getParentSharedContentState() {
            SharedElementEntry parentState = getNonNullInternalState().getParentState();
            if (parentState != null) {
                return parentState.getUserState();
            }
            return null;
        }

        public final boolean isAnimating$animation() {
            BoundsAnimation boundsAnimation;
            SharedElementEntry internalState$animation = getInternalState$animation();
            return ((internalState$animation == null || (boundsAnimation = internalState$animation.getBoundsAnimation()) == null) ? null : boundsAnimation.getAnimationState()) != null;
        }

        public final boolean isEnabledByUser$animation() {
            SharedContentConfig config$animation = getConfig$animation();
            if (config$animation.isEnabled(this)) {
                return true;
            }
            return isAnimating$animation() && config$animation.getShouldKeepEnabledForOngoingAnimation();
        }

        public final boolean isMatchFound() {
            SharedElement sharedElement;
            SharedElementEntry internalState$animation = getInternalState$animation();
            if (internalState$animation == null || (sharedElement = internalState$animation.getSharedElement()) == null) {
                return false;
            }
            return sharedElement.getFoundMatch();
        }

        /* JADX INFO: renamed from: prepareTransitionWithInitialVelocity-TH1AsA0, reason: not valid java name */
        public final void m1152prepareTransitionWithInitialVelocityTH1AsA0(long j) {
            SharedElementEntry nonNullInternalState = getNonNullInternalState();
            if (getConfig$animation().isEnabled(this)) {
                nonNullInternalState.getSharedElement().m1147updateExitVelocityTH1AsA0$animation(j);
            }
        }

        public final void setConfig$animation(SharedContentConfig sharedContentConfig) {
            this.config$delegate.setValue(sharedContentConfig);
        }

        public final void setInternalState$animation(SharedElementEntry sharedElementEntry) {
            this.internalState$delegate.setValue(sharedElementEntry);
        }

        public /* synthetic */ SharedContentState(Object obj, SharedContentConfig sharedContentConfig, int i, jh2 jh2Var) {
            this(obj, (i & 2) != 0 ? SharedTransitionDefaults.SharedContentConfig.INSTANCE : sharedContentConfig);
        }
    }

    default SharedContentState rememberSharedContentState(Object obj, Composer composer, int i) {
        composer.startReplaceGroup(800730162);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(800730162, i, -1, "androidx.compose.animation.SharedTransitionScope.rememberSharedContentState (SharedTransitionScope.kt:828)");
        }
        SharedContentState sharedContentStateRememberSharedContentState = rememberSharedContentState(obj, SharedTransitionDefaults.SharedContentConfig.INSTANCE, composer, ((i << 3) & 896) | (i & 14) | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return sharedContentStateRememberSharedContentState;
    }
}
