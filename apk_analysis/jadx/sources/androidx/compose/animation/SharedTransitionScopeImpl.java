package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.av0;
import defpackage.dm3;
import defpackage.fg;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.v39;
import defpackage.y22;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeImpl implements SharedTransitionScope, LookaheadScope {
    public static final int $stable = 0;
    private final /* synthetic */ LookaheadScope $$delegate_0;
    private LayoutCoordinates _nullableLookaheadRoot;
    private final y22 coroutineScope;
    private ll3<j59> invalidateOverlay;
    private LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
    private LayoutCoordinates nullableRoot;
    private ll3<j59> testBlockToRun;
    private final MutableState isTransitionActive$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
    private final ll3<j59> observeAnimatingBlock = new SharedTransitionScopeImpl$observeAnimatingBlock$1(this);
    private final SnapshotStateList<LayerRenderer> renderers = SnapshotStateKt.mutableStateListOf();
    private final SnapshotStateMap<Object, SharedElement> sharedElements = SnapshotStateKt.mutableStateMapOf();

    public static final class ShapeBasedClip implements SharedTransitionScope.OverlayClip {
        private final Shape clipShape;
        private final Path path = AndroidPath_androidKt.Path();

        public ShapeBasedClip(Shape shape) {
            this.clipShape = shape;
        }

        @Override // androidx.compose.animation.SharedTransitionScope.OverlayClip
        public Path getClipPath(SharedTransitionScope.SharedContentState sharedContentState, Rect rect, LayoutDirection layoutDirection, Density density) {
            this.path.reset();
            OutlineKt.addOutline(this.path, this.clipShape.mo1345createOutlinePq9zytI(rect.m6020getSizeNHjbRc(), layoutDirection, density));
            this.path.mo6124translatek4lQ0M(rect.m6022getTopLeftF1C5BW0());
            return this.path;
        }

        public final Shape getClipShape() {
            return this.clipShape;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeImpl$sharedBounds$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<EnterExitState, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(EnterExitState enterExitState) {
            return Boolean.valueOf(enterExitState == EnterExitState.Visible);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeImpl$sharedElement$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04511 extends gh4 implements nl3<EnterExitState, Boolean> {
        public static final C04511 INSTANCE = new C04511();

        public C04511() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(EnterExitState enterExitState) {
            return Boolean.valueOf(enterExitState == EnterExitState.Visible);
        }
    }

    public SharedTransitionScopeImpl(LookaheadScope lookaheadScope, y22 y22Var) {
        this.$$delegate_0 = lookaheadScope;
        this.coroutineScope = y22Var;
    }

    private final void attachLookaheadAnimationVisualDebugHelper() {
        LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
        if (!IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() || (lookaheadAnimationVisualDebugHelper = this.lookaheadAnimationVisualDebugHelper) == null) {
            return;
        }
        lookaheadAnimationVisualDebugHelper.onAttach$animation(this.coroutineScope);
    }

    private final void detachLookaheadAnimationVisualDebugHelper() {
        LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
        if (!IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() || (lookaheadAnimationVisualDebugHelper = this.lookaheadAnimationVisualDebugHelper) == null) {
            return;
        }
        lookaheadAnimationVisualDebugHelper.onDetach$animation(this.coroutineScope);
    }

    private final Collection<SharedElement> getSharedElementsIterator() {
        return this.sharedElements.toMap().values();
    }

    public static /* synthetic */ void getTestBlockToRun$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedElementEntry rememberSharedElementState(SharedElement sharedElement, BoundsAnimation boundsAnimation, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, SharedTransitionScope.SharedContentState sharedContentState, SharedTransitionScope.OverlayClip overlayClip, float f, boolean z2, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(864401334, i, -1, "androidx.compose.animation.SharedTransitionScopeImpl.rememberSharedElementState (SharedTransitionScope.kt:1368)");
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new SharedElementEntry(sharedElement, boundsAnimation, placeholderSize, z, overlayClip, z2, sharedContentState, f);
            composer.updateRememberedValue(objRememberedValue);
        }
        SharedElementEntry sharedElementEntry = (SharedElementEntry) objRememberedValue;
        sharedContentState.setInternalState$animation(sharedElementEntry);
        sharedElementEntry.setSharedElement(sharedElement);
        sharedElementEntry.setRenderOnlyWhenVisible(z);
        sharedElementEntry.setBoundsAnimation(boundsAnimation);
        sharedElementEntry.setPlaceholderSize(placeholderSize);
        sharedElementEntry.setOverlayClip(overlayClip);
        sharedElementEntry.setZIndex(f);
        sharedElementEntry.setRenderInOverlayDuringTransition(z2);
        sharedElementEntry.setUserState(sharedContentState);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return sharedElementEntry;
    }

    private void setTransitionActive(boolean z) {
        this.isTransitionActive$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Modifier sharedBoundsImpl(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, Transition<T> transition, nl3<? super T, Boolean> nl3Var, BoundsTransform boundsTransform, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, boolean z2, float f, SharedTransitionScope.OverlayClip overlayClip) {
        return ComposedModifierKt.composed$default(modifier, null, new C04501(sharedContentState, transition, nl3Var, this, placeholderSize, z, overlayClip, f, z2, boundsTransform), 1, null);
    }

    public static /* synthetic */ Modifier sharedBoundsWithCallerManagedVisibility$animation$default(SharedTransitionScopeImpl sharedTransitionScopeImpl, Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, boolean z, BoundsTransform boundsTransform, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z2, float f, SharedTransitionScope.OverlayClip overlayClip, int i, Object obj) {
        if ((i & 4) != 0) {
            boundsTransform = SharedTransitionDefaults.INSTANCE.getBoundsTransform();
        }
        BoundsTransform boundsTransform2 = boundsTransform;
        if ((i & 8) != 0) {
            placeholderSize = SharedTransitionScope.PlaceholderSize.Companion.getContentSize();
        }
        return sharedTransitionScopeImpl.sharedBoundsWithCallerManagedVisibility$animation(modifier, sharedContentState, z, boundsTransform2, placeholderSize, (i & 16) != 0 ? true : z2, (i & 32) != 0 ? 0.0f : f, (i & 64) != 0 ? SharedTransitionScopeKt.ParentClip : overlayClip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedElement sharedElementsFor(Object obj) {
        SharedElement sharedElement = this.sharedElements.get(obj);
        if (sharedElement != null) {
            return sharedElement;
        }
        SharedElement sharedElement2 = new SharedElement(obj, this);
        this.sharedElements.put(obj, sharedElement2);
        return sharedElement2;
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public SharedTransitionScope.OverlayClip OverlayClip(Shape shape) {
        return new ShapeBasedClip(shape);
    }

    public final void drawInOverlay$animation(ContentDrawScope contentDrawScope) {
        SnapshotStateList<LayerRenderer> snapshotStateList = this.renderers;
        if (snapshotStateList.size() > 1) {
            nn1.J(new Comparator() { // from class: androidx.compose.animation.SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    LayerRenderer layerRenderer = (LayerRenderer) t;
                    LayerRenderer layerRenderer2 = (LayerRenderer) t2;
                    return pp1.a(Float.valueOf((layerRenderer.getZIndex() == 0.0f && (layerRenderer instanceof SharedElementEntry) && ((SharedElementEntry) layerRenderer).getParentState() == null) ? -1.0f : layerRenderer.getZIndex()), Float.valueOf((layerRenderer2.getZIndex() == 0.0f && (layerRenderer2 instanceof SharedElementEntry) && ((SharedElementEntry) layerRenderer2).getParentState() == null) ? -1.0f : layerRenderer2.getZIndex()));
                }
            }, snapshotStateList);
        }
        SnapshotStateList<LayerRenderer> snapshotStateList2 = this.renderers;
        int size = snapshotStateList2.size();
        for (int i = 0; i < size; i++) {
            snapshotStateList2.get(i).drawInOverlay(contentDrawScope);
        }
    }

    public final y22 getCoroutineScope() {
        return this.coroutineScope;
    }

    public final ll3<j59> getInvalidateOverlay() {
        return this.invalidateOverlay;
    }

    public final LookaheadAnimationVisualDebugHelper getLookaheadAnimationVisualDebugHelper$animation() {
        return this.lookaheadAnimationVisualDebugHelper;
    }

    public final LayoutCoordinates getLookaheadRoot$animation() {
        LayoutCoordinates layoutCoordinates = this._nullableLookaheadRoot;
        if (layoutCoordinates != null) {
            return layoutCoordinates;
        }
        fg.c("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
        return null;
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    public LayoutCoordinates getLookaheadScopeCoordinates(Placeable.PlacementScope placementScope) {
        return this.$$delegate_0.getLookaheadScopeCoordinates(placementScope);
    }

    public final LayoutCoordinates getNullableRoot$animation() {
        return this.nullableRoot;
    }

    public final ll3<j59> getObserveAnimatingBlock$animation() {
        return this.observeAnimatingBlock;
    }

    public final LayoutCoordinates getRoot$animation() {
        LayoutCoordinates layoutCoordinates = this.nullableRoot;
        if (layoutCoordinates != null) {
            return layoutCoordinates;
        }
        fg.c("Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead.");
        return null;
    }

    public final ll3<j59> getTestBlockToRun() {
        return this.testBlockToRun;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.animation.SharedTransitionScope
    public boolean isTransitionActive() {
        return ((Boolean) this.isTransitionActive$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    /* JADX INFO: renamed from: localLookaheadPositionOf-au-aQtc, reason: not valid java name */
    public long mo1155localLookaheadPositionOfauaQtc(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, long j, boolean z) {
        return this.$$delegate_0.mo1155localLookaheadPositionOfauaQtc(layoutCoordinates, layoutCoordinates2, j, z);
    }

    public final void onEntryAdded$animation(SharedElementEntry sharedElementEntry) {
        sharedElementEntry.getSharedElement().addEntry(sharedElementEntry);
        updateTransitionActiveness$animation();
        Iterator<LayerRenderer> it = this.renderers.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            LayerRenderer next = it.next();
            SharedElementEntry sharedElementEntry2 = next instanceof SharedElementEntry ? (SharedElementEntry) next : null;
            if (aa4.e(sharedElementEntry2 != null ? sharedElementEntry2.getSharedElement() : null, sharedElementEntry.getSharedElement())) {
                break;
            } else {
                i++;
            }
        }
        if (i == this.renderers.size() - 1 || i == -1) {
            this.renderers.add(sharedElementEntry);
        } else {
            this.renderers.add(i + 1, sharedElementEntry);
        }
    }

    public final void onEntryRemoved$animation(SharedElementEntry sharedElementEntry) {
        SharedElement sharedElement = sharedElementEntry.getSharedElement();
        sharedElement.removeEntry(sharedElementEntry);
        updateTransitionActiveness$animation();
        this.renderers.remove(sharedElementEntry);
        if (sharedElement.getAllEntries().isEmpty()) {
            av0.c(sharedElement.getScope().coroutineScope, null, null, new SharedTransitionScopeImpl$onEntryRemoved$2$1(sharedElement, sharedElementEntry, null), 3);
        }
    }

    public final void onLayerRendererCreated$animation(LayerRenderer layerRenderer) {
        this.renderers.add(layerRenderer);
    }

    public final void onLayerRendererRemoved$animation(LayerRenderer layerRenderer) {
        this.renderers.remove(layerRenderer);
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public Modifier renderInSharedTransitionScopeOverlay(Modifier modifier, float f, ll3<Boolean> ll3Var) {
        return modifier.then(new RenderInTransitionOverlayNodeElement(this, ll3Var, f));
    }

    public final void setInvalidateOverlay(ll3<j59> ll3Var) {
        this.invalidateOverlay = ll3Var;
    }

    public final void setLookaheadAnimationVisualDebugHelper$animation(LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper) {
        this.lookaheadAnimationVisualDebugHelper = lookaheadAnimationVisualDebugHelper;
    }

    public final void setLookaheadRoot$animation(LayoutCoordinates layoutCoordinates) {
        this._nullableLookaheadRoot = layoutCoordinates;
    }

    public final void setRoot$animation(LayoutCoordinates layoutCoordinates) {
        this.nullableRoot = layoutCoordinates;
    }

    public final void setTestBlockToRun(ll3<j59> ll3Var) {
        this.testBlockToRun = ll3Var;
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public Modifier sharedBounds(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, BoundsTransform boundsTransform, SharedTransitionScope.ResizeMode resizeMode, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, float f, SharedTransitionScope.OverlayClip overlayClip) {
        return ComposedModifierKt.composed$default(sharedBoundsImpl(modifier, sharedContentState, animatedVisibilityScope.getTransition(), AnonymousClass1.INSTANCE, boundsTransform, placeholderSize, false, z, f, overlayClip), null, new AnonymousClass2(animatedVisibilityScope, enterTransition, exitTransition, sharedContentState, resizeMode), 1, null);
    }

    public final Modifier sharedBoundsWithCallerManagedVisibility$animation(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, boolean z, BoundsTransform boundsTransform, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z2, float f, SharedTransitionScope.OverlayClip overlayClip) {
        return sharedBoundsImpl(modifier, sharedContentState, null, new SharedTransitionScopeImpl$sharedBoundsWithCallerManagedVisibility$1(z), boundsTransform, placeholderSize, false, z2, f, overlayClip);
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public Modifier sharedElement(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, BoundsTransform boundsTransform, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, float f, SharedTransitionScope.OverlayClip overlayClip) {
        return sharedBoundsImpl(modifier, sharedContentState, animatedVisibilityScope.getTransition(), C04511.INSTANCE, boundsTransform, placeholderSize, true, z, f, overlayClip);
    }

    @Override // androidx.compose.animation.SharedTransitionScope
    public Modifier sharedElementWithCallerManagedVisibility(Modifier modifier, SharedTransitionScope.SharedContentState sharedContentState, boolean z, BoundsTransform boundsTransform, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z2, float f, SharedTransitionScope.OverlayClip overlayClip) {
        return sharedBoundsImpl(modifier, sharedContentState, null, new C04521(z), boundsTransform, placeholderSize, true, z2, f, overlayClip);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.animation.SharedTransitionScope
    public Modifier skipToLookaheadSize(Modifier modifier, ll3<Boolean> ll3Var) {
        return modifier.then(new SkipToLookaheadSizeElement(null, ll3Var, 1, 0 == true ? 1 : 0));
    }

    @Override // androidx.compose.ui.layout.LookaheadScope
    public LayoutCoordinates toLookaheadCoordinates(LayoutCoordinates layoutCoordinates) {
        return this.$$delegate_0.toLookaheadCoordinates(layoutCoordinates);
    }

    public final void updateTransitionActiveness$animation() {
        Collection<SharedElement> collectionValues = this.sharedElements.toMap().values();
        boolean z = false;
        for (SharedElement sharedElement : collectionValues) {
            z = z || (sharedElement.getFoundMatch() && sharedElement.isAnimating());
            sharedElement.updateMatch$animation();
        }
        if (z != isTransitionActive()) {
            setTransitionActive(z);
            if (z) {
                detachLookaheadAnimationVisualDebugHelper();
                return;
            }
            attachLookaheadAnimationVisualDebugHelper();
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                ((SharedElement) it.next()).onSharedTransitionFinished();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeImpl$sharedElementWithCallerManagedVisibility$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04521 extends gh4 implements nl3<j59, Boolean> {
        final /* synthetic */ boolean $visible;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04521(boolean z) {
            super(1);
            this.$visible = z;
        }

        @Override // defpackage.nl3
        public final Boolean invoke(j59 j59Var) {
            return Boolean.valueOf(this.$visible);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeImpl$sharedBounds$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements dm3<Modifier, Composer, Integer, Modifier> {
        final /* synthetic */ AnimatedVisibilityScope $animatedVisibilityScope;
        final /* synthetic */ EnterTransition $enter;
        final /* synthetic */ ExitTransition $exit;
        final /* synthetic */ SharedTransitionScope.ResizeMode $resizeMode;
        final /* synthetic */ SharedTransitionScope.SharedContentState $sharedContentState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, SharedTransitionScope.SharedContentState sharedContentState, SharedTransitionScope.ResizeMode resizeMode) {
            super(3);
            this.$animatedVisibilityScope = animatedVisibilityScope;
            this.$enter = enterTransition;
            this.$exit = exitTransition;
            this.$sharedContentState = sharedContentState;
            this.$resizeMode = resizeMode;
        }

        public final Modifier invoke(Modifier modifier, Composer composer, int i) {
            Modifier modifierCreateContentScaleModifier;
            composer.startReplaceGroup(-233734437);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-233734437, i, -1, "androidx.compose.animation.SharedTransitionScopeImpl.sharedBounds.<anonymous> (SharedTransitionScope.kt:1087)");
            }
            Transition<EnterExitState> transition = this.$animatedVisibilityScope.getTransition();
            EnterTransition enterTransition = this.$enter;
            ExitTransition exitTransition = this.$exit;
            boolean zChangedInstance = composer.changedInstance(this.$sharedContentState);
            SharedTransitionScope.SharedContentState sharedContentState = this.$sharedContentState;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new SharedTransitionScopeImpl$sharedBounds$2$1$1(sharedContentState);
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierCreateModifier = EnterExitTransitionKt.createModifier(transition, enterTransition, exitTransition, false, (ll3) objRememberedValue, "enter/exit for " + this.$sharedContentState.getKey(), composer, 0, 4);
            if (this.$resizeMode instanceof ScaleToBoundsImpl) {
                composer.startReplaceGroup(-1039792755);
                Modifier.Companion companion = Modifier.Companion;
                ScaleToBoundsImpl scaleToBoundsImpl = (ScaleToBoundsImpl) this.$resizeMode;
                boolean zChangedInstance2 = composer.changedInstance(this.$sharedContentState);
                SharedTransitionScope.SharedContentState sharedContentState2 = this.$sharedContentState;
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new SharedTransitionScopeImpl$sharedBounds$2$2$1(sharedContentState2);
                    composer.updateRememberedValue(objRememberedValue2);
                }
                modifierCreateContentScaleModifier = SkipToLookaheadSizeNodeKt.createContentScaleModifier(companion, scaleToBoundsImpl, (ll3) objRememberedValue2);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-1039175545);
                composer.endReplaceGroup();
                modifierCreateContentScaleModifier = Modifier.Companion;
            }
            Modifier modifierThen = modifierCreateModifier.then(modifierCreateContentScaleModifier);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierThen;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
            return invoke(modifier, composer, num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeImpl$sharedBoundsImpl$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04501 extends gh4 implements dm3<Modifier, Composer, Integer, Modifier> {
        final /* synthetic */ BoundsTransform $boundsTransform;
        final /* synthetic */ SharedTransitionScope.OverlayClip $clipInOverlayDuringTransition;
        final /* synthetic */ Transition<T> $parentTransition;
        final /* synthetic */ SharedTransitionScope.PlaceholderSize $placeholderSize;
        final /* synthetic */ boolean $renderInOverlayDuringTransition;
        final /* synthetic */ boolean $renderOnlyWhenVisible;
        final /* synthetic */ SharedTransitionScope.SharedContentState $sharedContentState;
        final /* synthetic */ nl3<T, Boolean> $visible;
        final /* synthetic */ float $zIndexInOverlay;
        final /* synthetic */ SharedTransitionScopeImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04501(SharedTransitionScope.SharedContentState sharedContentState, Transition<T> transition, nl3<? super T, Boolean> nl3Var, SharedTransitionScopeImpl sharedTransitionScopeImpl, SharedTransitionScope.PlaceholderSize placeholderSize, boolean z, SharedTransitionScope.OverlayClip overlayClip, float f, boolean z2, BoundsTransform boundsTransform) {
            super(3);
            this.$sharedContentState = sharedContentState;
            this.$parentTransition = transition;
            this.$visible = nl3Var;
            this.this$0 = sharedTransitionScopeImpl;
            this.$placeholderSize = placeholderSize;
            this.$renderOnlyWhenVisible = z;
            this.$clipInOverlayDuringTransition = overlayClip;
            this.$zIndexInOverlay = f;
            this.$renderInOverlayDuringTransition = z2;
            this.$boundsTransform = boundsTransform;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Modifier invoke(Modifier modifier, Composer composer, int i) {
            Transition transitionRememberTransition;
            Composer composer2 = composer;
            composer2.startReplaceGroup(-1539505585);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1539505585, i, -1, "androidx.compose.animation.SharedTransitionScopeImpl.sharedBoundsImpl.<anonymous> (SharedTransitionScope.kt:1284)");
            }
            Object key = this.$sharedContentState.getKey();
            composer2.startMovableGroup(-1996110647, key);
            SharedTransitionScopeImpl sharedTransitionScopeImpl = this.this$0;
            Object objRememberedValue = composer2.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = sharedTransitionScopeImpl.sharedElementsFor(key);
                composer2.updateRememberedValue(objRememberedValue);
            }
            SharedElement sharedElement = (SharedElement) objRememberedValue;
            composer2.startMovableGroup(-1996106866, this.$parentTransition);
            boolean z = false;
            if (this.$parentTransition != 0) {
                composer2.startReplaceGroup(-1749734647);
                Transition<T> transition = this.$parentTransition;
                String string = key.toString();
                nl3<T, Boolean> nl3Var = this.$visible;
                boolean zChanged = composer2.changed(transition);
                Object objRememberedValue2 = composer2.rememberedValue();
                if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = transition.getCurrentState();
                    composer2.updateRememberedValue(objRememberedValue2);
                }
                if (transition.isSeeking()) {
                    objRememberedValue2 = transition.getCurrentState();
                }
                composer2.startReplaceGroup(1498260051);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1498260051, 0, -1, "androidx.compose.animation.SharedTransitionScopeImpl.sharedBoundsImpl.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SharedTransitionScope.kt:1293)");
                }
                Boolean boolInvoke = nl3Var.invoke((T) objRememberedValue2);
                boolInvoke.getClass();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2.endReplaceGroup();
                Object targetState = transition.getTargetState();
                composer2.startReplaceGroup(1498260051);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1498260051, 0, -1, "androidx.compose.animation.SharedTransitionScopeImpl.sharedBoundsImpl.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SharedTransitionScope.kt:1293)");
                }
                Boolean boolInvoke2 = nl3Var.invoke((T) targetState);
                boolInvoke2.getClass();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2.endReplaceGroup();
                transitionRememberTransition = androidx.compose.animation.core.TransitionKt.createChildTransitionInternal(transition, boolInvoke, boolInvoke2, string, composer2, 0);
                composer2 = composer2;
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(-1749482679);
                nl3<T, Boolean> nl3Var2 = this.$visible;
                nl3Var2.getClass();
                v39.c(1, nl3Var2);
                Boolean boolInvoke3 = nl3Var2.invoke((T) j59.a);
                boolean zBooleanValue = boolInvoke3.booleanValue();
                Object objRememberedValue3 = composer2.rememberedValue();
                if (objRememberedValue3 == companion.getEmpty()) {
                    if (sharedElement.getEnabledEntries().isEmpty()) {
                        z = zBooleanValue;
                    } else if (!zBooleanValue) {
                        z = true;
                    }
                    objRememberedValue3 = new MutableTransitionState(Boolean.valueOf(z));
                    composer2.updateRememberedValue(objRememberedValue3);
                }
                MutableTransitionState mutableTransitionState = (MutableTransitionState) objRememberedValue3;
                mutableTransitionState.setTargetState$animation_core(boolInvoke3);
                transitionRememberTransition = androidx.compose.animation.core.TransitionKt.rememberTransition(mutableTransitionState, null, composer2, MutableTransitionState.$stable, 2);
                composer2.endReplaceGroup();
            }
            composer2.startMovableGroup(-1996043323, Boolean.valueOf(this.this$0.isTransitionActive()));
            Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> deferredAnimationCreateDeferredAnimation = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transitionRememberTransition, VectorConvertersKt.getVectorConverter(Rect.Companion), null, composer2, 0, 2);
            composer2.endMovableGroup();
            boolean zChanged2 = composer2.changed(transitionRememberTransition);
            SharedTransitionScopeImpl sharedTransitionScopeImpl2 = this.this$0;
            BoundsTransform boundsTransform = this.$boundsTransform;
            Object objRememberedValue4 = composer2.rememberedValue();
            if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                BoundsAnimation boundsAnimation = new BoundsAnimation(sharedTransitionScopeImpl2, transitionRememberTransition, deferredAnimationCreateDeferredAnimation, boundsTransform, sharedElement.getMomentumAnimationOffset());
                composer2.updateRememberedValue(boundsAnimation);
                objRememberedValue4 = boundsAnimation;
            }
            BoundsAnimation boundsAnimation2 = (BoundsAnimation) objRememberedValue4;
            boundsAnimation2.updateAnimation(deferredAnimationCreateDeferredAnimation, this.$boundsTransform);
            composer2.endMovableGroup();
            SharedElementEntry sharedElementEntryRememberSharedElementState = this.this$0.rememberSharedElementState(sharedElement, boundsAnimation2, this.$placeholderSize, this.$renderOnlyWhenVisible, this.$sharedContentState, this.$clipInOverlayDuringTransition, this.$zIndexInOverlay, this.$renderInOverlayDuringTransition, composer, 0);
            composer.endMovableGroup();
            Modifier modifierThen = modifier.then(new SharedBoundsNodeElement(sharedElementEntryRememberSharedElementState));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierThen;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
            return invoke(modifier, composer, num.intValue());
        }
    }
}
