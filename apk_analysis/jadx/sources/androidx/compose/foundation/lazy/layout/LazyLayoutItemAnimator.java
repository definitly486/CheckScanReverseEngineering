package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutItemAnimator<T extends LazyLayoutMeasuredItem> {
    public static final int $stable = 8;
    private DrawModifierNode displayingNode;
    private int firstVisibleIndex;
    private LazyLayoutKeyIndexMap keyIndexMap;
    private final MutableScatterMap<Object, LazyLayoutItemAnimator<T>.ItemInfo> keyToItemInfoMap = ScatterMapKt.mutableScatterMapOf();
    private final MutableScatterSet<Object> movingAwayKeys = ScatterSetKt.mutableScatterSetOf();
    private final List<T> movingInFromStartBound = new ArrayList();
    private final List<T> movingInFromEndBound = new ArrayList();
    private final List<T> movingAwayToStartBound = new ArrayList();
    private final List<T> movingAwayToEndBound = new ArrayList();
    private final List<LazyLayoutItemAnimation> disappearingItems = new ArrayList();
    private final Modifier modifier = new DisplayingDisappearingItemsElement(this);

    public static final class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
        private LazyLayoutItemAnimator<?> animator;

        public DisplayingDisappearingItemsNode(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        private final LazyLayoutItemAnimator<?> component1() {
            return this.animator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DisplayingDisappearingItemsNode copy$default(DisplayingDisappearingItemsNode displayingDisappearingItemsNode, LazyLayoutItemAnimator lazyLayoutItemAnimator, int i, Object obj) {
            if ((i & 1) != 0) {
                lazyLayoutItemAnimator = displayingDisappearingItemsNode.animator;
            }
            return displayingDisappearingItemsNode.copy(lazyLayoutItemAnimator);
        }

        public final DisplayingDisappearingItemsNode copy(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            return new DisplayingDisappearingItemsNode(lazyLayoutItemAnimator);
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public void draw(ContentDrawScope contentDrawScope) {
            List list = ((LazyLayoutItemAnimator) this.animator).disappearingItems;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) list.get(i);
                GraphicsLayer layer = lazyLayoutItemAnimation.getLayer();
                if (layer != null) {
                    float fM9170getXimpl = IntOffset.m9170getXimpl(lazyLayoutItemAnimation.m2208getFinalOffsetnOccac());
                    float fM9171getYimpl = IntOffset.m9171getYimpl(lazyLayoutItemAnimation.m2208getFinalOffsetnOccac());
                    float fM9170getXimpl2 = fM9170getXimpl - IntOffset.m9170getXimpl(layer.m6899getTopLeftnOccac());
                    float fM9171getYimpl2 = fM9171getYimpl - IntOffset.m9171getYimpl(layer.m6899getTopLeftnOccac());
                    contentDrawScope.getDrawContext().getTransform().translate(fM9170getXimpl2, fM9171getYimpl2);
                    try {
                        GraphicsLayerKt.drawLayer(contentDrawScope, layer);
                        contentDrawScope.getDrawContext().getTransform().translate(-fM9170getXimpl2, -fM9171getYimpl2);
                    } catch (Throwable th) {
                        contentDrawScope.getDrawContext().getTransform().translate(-fM9170getXimpl2, -fM9171getYimpl2);
                        throw th;
                    }
                }
            }
            contentDrawScope.drawContent();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsNode) && aa4.e(this.animator, ((DisplayingDisappearingItemsNode) obj).animator);
        }

        public int hashCode() {
            return this.animator.hashCode();
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onAttach() {
            ((LazyLayoutItemAnimator) this.animator).displayingNode = this;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onDetach() {
            this.animator.reset();
        }

        public final void setAnimator(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            if (aa4.e(this.animator, lazyLayoutItemAnimator) || !getNode().isAttached()) {
                return;
            }
            this.animator.reset();
            ((LazyLayoutItemAnimator) lazyLayoutItemAnimator).displayingNode = this;
            this.animator = lazyLayoutItemAnimator;
        }

        public String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.animator + ')';
        }
    }

    public final class ItemInfo {
        private Constraints constraints;
        private int crossAxisOffset;
        private int lane;
        private int layoutMaxOffset;
        private int layoutMinOffset;
        private LazyLayoutItemAnimation[] animations = LazyLayoutItemAnimatorKt.EmptyArray;
        private int span = 1;

        public ItemInfo() {
        }

        private final boolean isRunningPlacement() {
            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : this.animations) {
                if (lazyLayoutItemAnimation != null && lazyLayoutItemAnimation.isRunningMovingAwayAnimation()) {
                    return true;
                }
            }
            return false;
        }

        public static /* synthetic */ void updateAnimation$default(ItemInfo itemInfo, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, y22 y22Var, GraphicsContext graphicsContext, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 32) != 0) {
                i3 = LazyLayoutItemAnimator.this.getCrossAxisOffset(lazyLayoutMeasuredItem);
            }
            itemInfo.updateAnimation(lazyLayoutMeasuredItem, y22Var, graphicsContext, i, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 updateAnimation$lambda$0$0(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            DrawModifierNode drawModifierNode = lazyLayoutItemAnimator.displayingNode;
            if (drawModifierNode != null) {
                DrawModifierNodeKt.invalidateDraw(drawModifierNode);
            }
            return j59.a;
        }

        public final LazyLayoutItemAnimation[] getAnimations() {
            return this.animations;
        }

        /* JADX INFO: renamed from: getConstraints-DWUhwKw, reason: not valid java name */
        public final Constraints m2217getConstraintsDWUhwKw() {
            return this.constraints;
        }

        public final int getCrossAxisOffset() {
            return this.crossAxisOffset;
        }

        public final int getLane() {
            return this.lane;
        }

        public final int getLayoutMaxOffset() {
            return this.layoutMaxOffset;
        }

        public final int getLayoutMinOffset() {
            return this.layoutMinOffset;
        }

        public final int getSpan() {
            return this.span;
        }

        /* JADX INFO: renamed from: setConstraints-_Sx5XlM, reason: not valid java name */
        public final void m2218setConstraints_Sx5XlM(Constraints constraints) {
            this.constraints = constraints;
        }

        public final void setCrossAxisOffset(int i) {
            this.crossAxisOffset = i;
        }

        public final void setLane(int i) {
            this.lane = i;
        }

        public final void setSpan(int i) {
            this.span = i;
        }

        public final void updateAnimation(T t, y22 y22Var, GraphicsContext graphicsContext, int i, int i2, int i3) {
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
            if (!isRunningPlacement()) {
                this.layoutMinOffset = i;
                this.layoutMaxOffset = i2;
            }
            int placeablesCount = t.getPlaceablesCount();
            int length = this.animations.length;
            while (true) {
                lazyLayoutItemAnimationArr = this.animations;
                if (placeablesCount >= length) {
                    break;
                }
                LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[placeablesCount];
                if (lazyLayoutItemAnimation != null) {
                    lazyLayoutItemAnimation.release();
                }
                placeablesCount++;
            }
            if (lazyLayoutItemAnimationArr.length != t.getPlaceablesCount()) {
                this.animations = (LazyLayoutItemAnimation[]) Arrays.copyOf(this.animations, t.getPlaceablesCount());
            }
            this.constraints = Constraints.m8982boximpl(t.mo2163getConstraintsmsEJaDk());
            this.crossAxisOffset = i3;
            this.lane = t.getLane();
            this.span = t.getSpan();
            int placeablesCount2 = t.getPlaceablesCount();
            final LazyLayoutItemAnimator<T> lazyLayoutItemAnimator = LazyLayoutItemAnimator.this;
            for (int i4 = 0; i4 < placeablesCount2; i4++) {
                LazyLayoutAnimationSpecsNode specs = LazyLayoutItemAnimatorKt.getSpecs(t.getParentData(i4));
                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = this.animations;
                if (specs == null) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr2[i4];
                    if (lazyLayoutItemAnimation2 != null) {
                        lazyLayoutItemAnimation2.release();
                    }
                    this.animations[i4] = null;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation3 = lazyLayoutItemAnimationArr2[i4];
                    if (lazyLayoutItemAnimation3 == null) {
                        lazyLayoutItemAnimation3 = new LazyLayoutItemAnimation(y22Var, graphicsContext, new ll3() { // from class: androidx.compose.foundation.lazy.layout.d
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return LazyLayoutItemAnimator.ItemInfo.updateAnimation$lambda$0$0(lazyLayoutItemAnimator);
                            }
                        });
                        this.animations[i4] = lazyLayoutItemAnimation3;
                    }
                    lazyLayoutItemAnimation3.setFadeInSpec(specs.getFadeInSpec());
                    lazyLayoutItemAnimation3.setPlacementSpec(specs.getPlacementSpec());
                    lazyLayoutItemAnimation3.setFadeOutSpec(specs.getFadeOutSpec());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCrossAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long jMo2164getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo2164getOffsetBjo55l4(0);
        return !lazyLayoutMeasuredItem.isVertical() ? IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4) : IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4);
    }

    private final boolean getHasAnimations(T t) {
        int placeablesCount = t.getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            if (LazyLayoutItemAnimatorKt.getSpecs(t.getParentData(i)) != null) {
                return true;
            }
        }
        return false;
    }

    private final int getMainAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long jMo2164getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo2164getOffsetBjo55l4(0);
        return lazyLayoutMeasuredItem.isVertical() ? IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4) : IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4);
    }

    private final void initializeAnimation(T t, int i, LazyLayoutItemAnimator<T>.ItemInfo itemInfo) {
        int i2 = 0;
        long jMo2164getOffsetBjo55l4 = t.mo2164getOffsetBjo55l4(0);
        long jM9166copyiSbpLlY$default = t.isVertical() ? IntOffset.m9166copyiSbpLlY$default(jMo2164getOffsetBjo55l4, 0, i, 1, null) : IntOffset.m9166copyiSbpLlY$default(jMo2164getOffsetBjo55l4, i, 0, 2, null);
        LazyLayoutItemAnimation[] animations = itemInfo.getAnimations();
        int length = animations.length;
        int i3 = 0;
        while (i2 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = animations[i2];
            int i4 = i3 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.m2214setRawOffsetgyyYBs(IntOffset.m9174plusqkQi6aY(jM9166copyiSbpLlY$default, IntOffset.m9173minusqkQi6aY(t.mo2164getOffsetBjo55l4(i3), jMo2164getOffsetBjo55l4)));
            }
            i2++;
            i3 = i4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void initializeAnimation$default(LazyLayoutItemAnimator lazyLayoutItemAnimator, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i, ItemInfo itemInfo, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            LazyLayoutItemAnimator<T>.ItemInfo itemInfo2 = lazyLayoutItemAnimator.keyToItemInfoMap.get(lazyLayoutMeasuredItem.getKey());
            itemInfo2.getClass();
            itemInfo = itemInfo2;
        }
        lazyLayoutItemAnimator.initializeAnimation(lazyLayoutMeasuredItem, i, itemInfo);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x005b A[LOOP:0: B:7:0x0015->B:22:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x005e A[EDGE_INSN: B:26:0x005e->B:23:0x005e BREAK  A[LOOP:0: B:7:0x0015->B:22:0x005b], SYNTHETIC] */
    private final void releaseAnimations() {
        if (this.keyToItemInfoMap.isNotEmpty()) {
            MutableScatterMap<Object, LazyLayoutItemAnimator<T>.ItemInfo> mutableScatterMap = this.keyToItemInfoMap;
            Object[] objArr = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i != length) {
                            break;
                            break;
                        }
                        i++;
                    } else {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : ((ItemInfo) objArr[(i << 3) + i3]).getAnimations()) {
                                    if (lazyLayoutItemAnimation != null) {
                                        lazyLayoutItemAnimation.release();
                                    }
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        } else if (i != length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            this.keyToItemInfoMap.clear();
        }
    }

    private final void removeInfoForKey(Object obj) {
        LazyLayoutItemAnimation[] animations;
        LazyLayoutItemAnimator<T>.ItemInfo itemInfoRemove = this.keyToItemInfoMap.remove(obj);
        if (itemInfoRemove == null || (animations = itemInfoRemove.getAnimations()) == null) {
            return;
        }
        for (LazyLayoutItemAnimation lazyLayoutItemAnimation : animations) {
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.release();
            }
        }
    }

    private final void startPlacementAnimationsIfNeeded(T t, boolean z) {
        LazyLayoutItemAnimator<T>.ItemInfo itemInfo = this.keyToItemInfoMap.get(t.getKey());
        itemInfo.getClass();
        LazyLayoutItemAnimation[] animations = itemInfo.getAnimations();
        int length = animations.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = animations[i];
            int i3 = i2 + 1;
            if (lazyLayoutItemAnimation != null) {
                long jMo2164getOffsetBjo55l4 = t.mo2164getOffsetBjo55l4(i2);
                long jM2211getRawOffsetnOccac = lazyLayoutItemAnimation.m2211getRawOffsetnOccac();
                if (!IntOffset.m9169equalsimpl0(jM2211getRawOffsetnOccac, LazyLayoutItemAnimation.Companion.m2215getNotInitializednOccac()) && !IntOffset.m9169equalsimpl0(jM2211getRawOffsetnOccac, jMo2164getOffsetBjo55l4)) {
                    lazyLayoutItemAnimation.m2207animatePlacementDeltaar5cAso(IntOffset.m9173minusqkQi6aY(jMo2164getOffsetBjo55l4, jM2211getRawOffsetnOccac), z);
                }
                lazyLayoutItemAnimation.m2214setRawOffsetgyyYBs(jMo2164getOffsetBjo55l4);
            }
            i++;
            i2 = i3;
        }
    }

    public static /* synthetic */ void startPlacementAnimationsIfNeeded$default(LazyLayoutItemAnimator lazyLayoutItemAnimator, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        lazyLayoutItemAnimator.startPlacementAnimationsIfNeeded(lazyLayoutMeasuredItem, z);
    }

    private final int updateAndReturnOffsetFor(int[] iArr, T t) {
        int lane = t.getLane();
        int span = t.getSpan() + lane;
        int iMax = 0;
        while (lane < span) {
            int mainAxisSizeWithSpacings = t.getMainAxisSizeWithSpacings() + iArr[lane];
            iArr[lane] = mainAxisSizeWithSpacings;
            iMax = Math.max(iMax, mainAxisSizeWithSpacings);
            lane++;
        }
        return iMax;
    }

    public final LazyLayoutItemAnimation getAnimation(Object obj, int i) {
        LazyLayoutItemAnimation[] animations;
        LazyLayoutItemAnimator<T>.ItemInfo itemInfo = this.keyToItemInfoMap.get(obj);
        if (itemInfo == null || (animations = itemInfo.getAnimations()) == null) {
            return null;
        }
        return animations[i];
    }

    /* JADX INFO: renamed from: getMinSizeToFitDisappearingItems-YbymL2g, reason: not valid java name */
    public final long m2216getMinSizeToFitDisappearingItemsYbymL2g() {
        long jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
        List<LazyLayoutItemAnimation> list = this.disappearingItems;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = list.get(i);
            GraphicsLayer layer = lazyLayoutItemAnimation.getLayer();
            if (layer != null) {
                int iMax = Math.max((int) (jM9218getZeroYbymL2g >> 32), IntOffset.m9170getXimpl(lazyLayoutItemAnimation.m2211getRawOffsetnOccac()) + ((int) (layer.m6897getSizeYbymL2g() >> 32)));
                jM9218getZeroYbymL2g = IntSize.m9208constructorimpl((((long) Math.max((int) (jM9218getZeroYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE), IntOffset.m9171getYimpl(lazyLayoutItemAnimation.m2211getRawOffsetnOccac()) + ((int) (layer.m6897getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iMax) << 32));
            }
        }
        return jM9218getZeroYbymL2g;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v30, types: [androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$ItemInfo] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r33v1, types: [androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$ItemInfo] */
    public final void onMeasured(int i, int i2, int i3, List<T> list, final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap, LazyLayoutMeasuredItemProvider<T> lazyLayoutMeasuredItemProvider, boolean z, boolean z2, int i4, boolean z3, int i5, int i6, y22 y22Var, GraphicsContext graphicsContext) {
        int i7;
        Object[] objArr;
        long[] jArr;
        int i8;
        Object[] objArr2;
        long[] jArr2;
        ?? r2;
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
        int i9;
        int i10;
        int i11;
        int i12;
        long[] jArr3;
        int i13 = i4;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap2 = this.keyIndexMap;
        this.keyIndexMap = lazyLayoutKeyIndexMap;
        int size = list.size();
        int i14 = 0;
        while (true) {
            if (i14 >= size) {
                if (!this.keyToItemInfoMap.isEmpty()) {
                    break;
                }
                releaseAnimations();
                return;
            } else if (getHasAnimations(list.get(i14))) {
                break;
            } else {
                i14++;
            }
        }
        int i15 = this.firstVisibleIndex;
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) qn1.V(list);
        this.firstVisibleIndex = lazyLayoutMeasuredItem != null ? lazyLayoutMeasuredItem.getIndex() : 0;
        long jM9164constructorimpl = z ? IntOffset.m9164constructorimpl(((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) : IntOffset.m9164constructorimpl(((long) i) << 32);
        boolean z4 = z2 || !z3;
        MutableScatterMap<Object, LazyLayoutItemAnimator<T>.ItemInfo> mutableScatterMap = this.keyToItemInfoMap;
        Object[] objArr3 = mutableScatterMap.keys;
        long[] jArr4 = mutableScatterMap.metadata;
        int length = jArr4.length - 2;
        if (length >= 0) {
            int i16 = 0;
            while (true) {
                long j = jArr4[i16];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i17 = 8 - ((~(i16 - length)) >>> 31);
                    int i18 = 0;
                    while (i18 < i17) {
                        if ((j & 255) < 128) {
                            this.movingAwayKeys.add(objArr3[(i16 << 3) + i18]);
                        }
                        j >>= 8;
                        i18++;
                        jArr4 = jArr4;
                    }
                    jArr3 = jArr4;
                    if (i17 != 8) {
                        break;
                    }
                } else {
                    jArr3 = jArr4;
                }
                if (i16 == length) {
                    break;
                }
                i16++;
                jArr4 = jArr3;
            }
        }
        int i19 = 0;
        for (int size2 = list.size(); i19 < size2; size2 = size2) {
            T t = list.get(i19);
            this.movingAwayKeys.remove(t.getKey());
            if (getHasAnimations(t)) {
                LazyLayoutItemAnimator<T>.ItemInfo itemInfo = this.keyToItemInfoMap.get(t.getKey());
                int index = lazyLayoutKeyIndexMap2 != null ? lazyLayoutKeyIndexMap2.getIndex(t.getKey()) : -1;
                boolean z5 = index == -1 && lazyLayoutKeyIndexMap2 != null;
                if (itemInfo == null) {
                    LazyLayoutItemAnimator<T>.ItemInfo itemInfo2 = new ItemInfo();
                    ItemInfo.updateAnimation$default(itemInfo2, t, y22Var, graphicsContext, i5, i6, 0, 32, null);
                    this.keyToItemInfoMap.set(t.getKey(), itemInfo2);
                    if (t.getIndex() == index || index == -1) {
                        long jMo2164getOffsetBjo55l4 = t.mo2164getOffsetBjo55l4(0);
                        initializeAnimation(t, t.isVertical() ? IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4) : IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4), itemInfo2);
                        if (z5) {
                            LazyLayoutItemAnimation[] animations = itemInfo2.getAnimations();
                            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : animations) {
                                if (lazyLayoutItemAnimation != null) {
                                    lazyLayoutItemAnimation.animateAppearance();
                                    j59 j59Var = j59.a;
                                }
                            }
                        }
                        j59 j59Var2 = j59.a;
                    } else if (index < i15) {
                        this.movingInFromStartBound.add(t);
                    } else {
                        this.movingInFromEndBound.add(t);
                    }
                    i9 = i15;
                    i10 = i19;
                } else {
                    if (z4) {
                        ItemInfo.updateAnimation$default(itemInfo, t, y22Var, graphicsContext, i5, i6, 0, 32, null);
                        LazyLayoutItemAnimation[] animations2 = itemInfo.getAnimations();
                        int length2 = animations2.length;
                        int i20 = 0;
                        while (i20 < length2) {
                            LazyLayoutItemAnimation lazyLayoutItemAnimation2 = animations2[i20];
                            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = animations2;
                            int i21 = i15;
                            if (lazyLayoutItemAnimation2 != null) {
                                i11 = i19;
                                i12 = length2;
                                if (!IntOffset.m9169equalsimpl0(lazyLayoutItemAnimation2.m2211getRawOffsetnOccac(), LazyLayoutItemAnimation.Companion.m2215getNotInitializednOccac())) {
                                    lazyLayoutItemAnimation2.m2214setRawOffsetgyyYBs(IntOffset.m9174plusqkQi6aY(lazyLayoutItemAnimation2.m2211getRawOffsetnOccac(), jM9164constructorimpl));
                                }
                            } else {
                                i11 = i19;
                                i12 = length2;
                            }
                            i20++;
                            animations2 = lazyLayoutItemAnimationArr2;
                            i15 = i21;
                            i19 = i11;
                            length2 = i12;
                        }
                        i9 = i15;
                        i10 = i19;
                        if (z5) {
                            for (LazyLayoutItemAnimation lazyLayoutItemAnimation3 : itemInfo.getAnimations()) {
                                if (lazyLayoutItemAnimation3 != null) {
                                    if (lazyLayoutItemAnimation3.isDisappearanceAnimationInProgress()) {
                                        this.disappearingItems.remove(lazyLayoutItemAnimation3);
                                        DrawModifierNode drawModifierNode = this.displayingNode;
                                        if (drawModifierNode != null) {
                                            DrawModifierNodeKt.invalidateDraw(drawModifierNode);
                                            j59 j59Var3 = j59.a;
                                        }
                                    }
                                    lazyLayoutItemAnimation3.animateAppearance();
                                }
                            }
                        }
                        startPlacementAnimationsIfNeeded$default(this, t, false, 2, null);
                    } else {
                        i9 = i15;
                        i10 = i19;
                    }
                    j59 j59Var4 = j59.a;
                }
            } else {
                i9 = i15;
                i10 = i19;
                removeInfoForKey(t.getKey());
                j59 j59Var5 = j59.a;
            }
            i19 = i10 + 1;
            i15 = i9;
        }
        int i22 = 2;
        int[] iArr = new int[i13];
        if (!z4 || lazyLayoutKeyIndexMap2 == null) {
            i7 = 2;
        } else {
            if (this.movingInFromStartBound.isEmpty()) {
                i7 = 2;
            } else {
                List<T> list2 = this.movingInFromStartBound;
                if (list2.size() > 1) {
                    nn1.J(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(T t2, T t3) {
                            return pp1.a(Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyLayoutMeasuredItem) t3).getKey())), Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyLayoutMeasuredItem) t2).getKey())));
                        }
                    }, list2);
                }
                List<T> list3 = this.movingInFromStartBound;
                int size3 = list3.size();
                int i23 = 0;
                while (i23 < size3) {
                    T t2 = list3.get(i23);
                    int i24 = i22;
                    initializeAnimation$default(this, t2, i5 - updateAndReturnOffsetFor(iArr, t2), null, 4, null);
                    startPlacementAnimationsIfNeeded$default(this, t2, false, i24, null);
                    i23++;
                    i22 = i24;
                }
                i7 = i22;
                aq5.u(0, 0, 6, iArr);
            }
            if (!this.movingInFromEndBound.isEmpty()) {
                List<T> list4 = this.movingInFromEndBound;
                if (list4.size() > 1) {
                    nn1.J(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t3, T t4) {
                            return pp1.a(Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyLayoutMeasuredItem) t3).getKey())), Integer.valueOf(lazyLayoutKeyIndexMap2.getIndex(((LazyLayoutMeasuredItem) t4).getKey())));
                        }
                    }, list4);
                }
                List<T> list5 = this.movingInFromEndBound;
                int size4 = list5.size();
                for (int i25 = 0; i25 < size4; i25++) {
                    T t3 = list5.get(i25);
                    initializeAnimation$default(this, t3, (i6 + updateAndReturnOffsetFor(iArr, t3)) - t3.getMainAxisSizeWithSpacings(), null, 4, null);
                    startPlacementAnimationsIfNeeded$default(this, t3, false, i7, null);
                }
                aq5.u(0, 0, 6, iArr);
            }
        }
        MutableScatterSet<Object> mutableScatterSet = this.movingAwayKeys;
        Object[] objArr4 = mutableScatterSet.elements;
        long[] jArr5 = mutableScatterSet.metadata;
        int length3 = jArr5.length - i7;
        if (length3 >= 0) {
            int i26 = 0;
            while (true) {
                long j2 = jArr5[i26];
                long[] jArr6 = jArr5;
                Object[] objArr5 = objArr4;
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i27 = 8 - ((~(i26 - length3)) >>> 31);
                    int i28 = 0;
                    while (i28 < i27) {
                        if ((j2 & 255) < 128) {
                            Object obj = objArr5[(i26 << 3) + i28];
                            i8 = i28;
                            LazyLayoutItemAnimator<T>.ItemInfo itemInfo3 = this.keyToItemInfoMap.get(obj);
                            if (itemInfo3 != 0) {
                                objArr2 = objArr5;
                                int index2 = lazyLayoutKeyIndexMap.getIndex(obj);
                                jArr2 = jArr6;
                                itemInfo3.setSpan(Math.min(i13, itemInfo3.getSpan()));
                                itemInfo3.setLane(Math.min(i13 - itemInfo3.getSpan(), itemInfo3.getLane()));
                                if (index2 == -1) {
                                    LazyLayoutItemAnimation[] animations3 = itemInfo3.getAnimations();
                                    int length4 = animations3.length;
                                    int i29 = 0;
                                    boolean z6 = false;
                                    int i30 = 0;
                                    while (i29 < length4) {
                                        ?? r33 = r2;
                                        LazyLayoutItemAnimation lazyLayoutItemAnimation4 = animations3[i29];
                                        int i31 = i30 + 1;
                                        if (lazyLayoutItemAnimation4 != null) {
                                            if (lazyLayoutItemAnimation4.isDisappearanceAnimationInProgress()) {
                                                r2 = itemInfo3;
                                                j59 j59Var6 = j59.a;
                                                lazyLayoutItemAnimationArr = animations3;
                                                z6 = true;
                                            } else if (lazyLayoutItemAnimation4.isDisappearanceAnimationFinished()) {
                                                lazyLayoutItemAnimation4.release();
                                                r33.getAnimations()[i30] = null;
                                                lazyLayoutItemAnimationArr = animations3;
                                                this.disappearingItems.remove(lazyLayoutItemAnimation4);
                                                DrawModifierNode drawModifierNode2 = this.displayingNode;
                                                if (drawModifierNode2 != null) {
                                                    r2 = itemInfo3;
                                                    DrawModifierNodeKt.invalidateDraw(drawModifierNode2);
                                                    j59 j59Var7 = j59.a;
                                                }
                                            } else {
                                                lazyLayoutItemAnimationArr = animations3;
                                                if (lazyLayoutItemAnimation4.getLayer() != null) {
                                                    r2 = itemInfo3;
                                                    lazyLayoutItemAnimation4.animateDisappearance();
                                                }
                                                r2 = itemInfo3;
                                                if (lazyLayoutItemAnimation4.isDisappearanceAnimationInProgress()) {
                                                    this.disappearingItems.add(lazyLayoutItemAnimation4);
                                                    DrawModifierNode drawModifierNode3 = this.displayingNode;
                                                    if (drawModifierNode3 != null) {
                                                        DrawModifierNodeKt.invalidateDraw(drawModifierNode3);
                                                        j59 j59Var8 = j59.a;
                                                    }
                                                    z6 = true;
                                                } else {
                                                    lazyLayoutItemAnimation4.release();
                                                    r33.getAnimations()[i30] = null;
                                                }
                                                j59 j59Var9 = j59.a;
                                            }
                                            i29++;
                                            i30 = i31;
                                            animations3 = lazyLayoutItemAnimationArr;
                                            r2 = r33;
                                        } else {
                                            r2 = itemInfo3;
                                            lazyLayoutItemAnimationArr = animations3;
                                        }
                                        r2 = itemInfo3;
                                        i29++;
                                        i30 = i31;
                                        animations3 = lazyLayoutItemAnimationArr;
                                        r2 = r33;
                                    }
                                    r2 = itemInfo3;
                                    if (!z6) {
                                        removeInfoForKey(obj);
                                    }
                                    j59 j59Var10 = j59.a;
                                } else {
                                    Constraints constraintsM2217getConstraintsDWUhwKw = itemInfo3.m2217getConstraintsDWUhwKw();
                                    constraintsM2217getConstraintsDWUhwKw.getClass();
                                    LazyLayoutMeasuredItem lazyLayoutMeasuredItemMo2166getAndMeasurehBUhpc = lazyLayoutMeasuredItemProvider.mo2166getAndMeasurehBUhpc(index2, itemInfo3.getLane(), itemInfo3.getSpan(), constraintsM2217getConstraintsDWUhwKw.m9001unboximpl());
                                    lazyLayoutMeasuredItemMo2166getAndMeasurehBUhpc.setNonScrollableItem(true);
                                    LazyLayoutItemAnimation[] animations4 = itemInfo3.getAnimations();
                                    int length5 = animations4.length;
                                    int i32 = 0;
                                    while (true) {
                                        if (i32 < length5) {
                                            LazyLayoutItemAnimation lazyLayoutItemAnimation5 = animations4[i32];
                                            int i33 = i32;
                                            if (lazyLayoutItemAnimation5 != null && lazyLayoutItemAnimation5.isPlacementAnimationInProgress()) {
                                            }
                                            i32 = i33 + 1;
                                            length5 = length5;
                                        } else if (lazyLayoutKeyIndexMap2 != null && index2 == lazyLayoutKeyIndexMap2.getIndex(obj)) {
                                            removeInfoForKey(obj);
                                            j59 j59Var11 = j59.a;
                                        }
                                        itemInfo3.updateAnimation(lazyLayoutMeasuredItemMo2166getAndMeasurehBUhpc, y22Var, graphicsContext, i5, i6, itemInfo3.getCrossAxisOffset());
                                        if (index2 < this.firstVisibleIndex) {
                                            this.movingAwayToStartBound.add((T) lazyLayoutMeasuredItemMo2166getAndMeasurehBUhpc);
                                        } else {
                                            this.movingAwayToEndBound.add((T) lazyLayoutMeasuredItemMo2166getAndMeasurehBUhpc);
                                        }
                                    }
                                }
                            }
                            j2 >>= 8;
                            i13 = i4;
                            i28 = i8 + 1;
                            objArr5 = objArr2;
                            jArr6 = jArr2;
                        } else {
                            i8 = i28;
                        }
                        objArr2 = objArr5;
                        jArr2 = jArr6;
                        j2 >>= 8;
                        i13 = i4;
                        i28 = i8 + 1;
                        objArr5 = objArr2;
                        jArr6 = jArr2;
                    }
                    objArr = objArr5;
                    jArr = jArr6;
                    if (i27 != 8) {
                        break;
                    }
                } else {
                    objArr = objArr5;
                    jArr = jArr6;
                }
                if (i26 == length3) {
                    break;
                }
                i26++;
                i13 = i4;
                objArr4 = objArr;
                jArr5 = jArr;
            }
        }
        if (!this.movingAwayToStartBound.isEmpty()) {
            List<T> list6 = this.movingAwayToStartBound;
            if (list6.size() > 1) {
                nn1.J(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(T t4, T t5) {
                        return pp1.a(Integer.valueOf(lazyLayoutKeyIndexMap.getIndex(((LazyLayoutMeasuredItem) t5).getKey())), Integer.valueOf(lazyLayoutKeyIndexMap.getIndex(((LazyLayoutMeasuredItem) t4).getKey())));
                    }
                }, list6);
            }
            List<T> list7 = this.movingAwayToStartBound;
            int size5 = list7.size();
            for (int i34 = 0; i34 < size5; i34++) {
                T t4 = list7.get(i34);
                LazyLayoutItemAnimator<T>.ItemInfo itemInfo4 = this.keyToItemInfoMap.get(t4.getKey());
                itemInfo4.getClass();
                LazyLayoutItemAnimator<T>.ItemInfo itemInfo5 = itemInfo4;
                t4.position((z2 ? getMainAxisOffset((LazyLayoutMeasuredItem) qn1.T(list)) : itemInfo5.getLayoutMinOffset()) - updateAndReturnOffsetFor(iArr, t4), itemInfo5.getCrossAxisOffset(), i2, i3);
                if (z4) {
                    startPlacementAnimationsIfNeeded(t4, true);
                }
            }
            aq5.u(0, 0, 6, iArr);
        }
        if (!this.movingAwayToEndBound.isEmpty()) {
            List<T> list8 = this.movingAwayToEndBound;
            if (list8.size() > 1) {
                nn1.J(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t5, T t6) {
                        return pp1.a(Integer.valueOf(lazyLayoutKeyIndexMap.getIndex(((LazyLayoutMeasuredItem) t5).getKey())), Integer.valueOf(lazyLayoutKeyIndexMap.getIndex(((LazyLayoutMeasuredItem) t6).getKey())));
                    }
                }, list8);
            }
            List<T> list9 = this.movingAwayToEndBound;
            int size6 = list9.size();
            for (int i35 = 0; i35 < size6; i35++) {
                T t5 = list9.get(i35);
                LazyLayoutItemAnimator<T>.ItemInfo itemInfo6 = this.keyToItemInfoMap.get(t5.getKey());
                itemInfo6.getClass();
                LazyLayoutItemAnimator<T>.ItemInfo itemInfo7 = itemInfo6;
                t5.position((itemInfo7.getLayoutMaxOffset() - t5.getMainAxisSizeWithSpacings()) + updateAndReturnOffsetFor(iArr, t5), itemInfo7.getCrossAxisOffset(), i2, i3);
                if (z4) {
                    startPlacementAnimationsIfNeeded(t5, true);
                }
            }
        }
        List<T> list10 = this.movingAwayToStartBound;
        list10.getClass();
        Collections.reverse(list10);
        j59 j59Var12 = j59.a;
        list.addAll(0, list10);
        list.addAll(this.movingAwayToEndBound);
        this.movingInFromStartBound.clear();
        this.movingInFromEndBound.clear();
        this.movingAwayToStartBound.clear();
        this.movingAwayToEndBound.clear();
        this.movingAwayKeys.clear();
    }

    public final void reset() {
        releaseAnimations();
        this.keyIndexMap = null;
        this.firstVisibleIndex = -1;
    }

    public static final class DisplayingDisappearingItemsElement extends ModifierNodeElement<DisplayingDisappearingItemsNode> {
        private final LazyLayoutItemAnimator<?> animator;

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        private final LazyLayoutItemAnimator<?> component1() {
            return this.animator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DisplayingDisappearingItemsElement copy$default(DisplayingDisappearingItemsElement displayingDisappearingItemsElement, LazyLayoutItemAnimator lazyLayoutItemAnimator, int i, Object obj) {
            if ((i & 1) != 0) {
                lazyLayoutItemAnimator = displayingDisappearingItemsElement.animator;
            }
            return displayingDisappearingItemsElement.copy(lazyLayoutItemAnimator);
        }

        public final DisplayingDisappearingItemsElement copy(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            return new DisplayingDisappearingItemsElement(lazyLayoutItemAnimator);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public DisplayingDisappearingItemsNode create() {
            return new DisplayingDisappearingItemsNode(this.animator);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsElement) && aa4.e(this.animator, ((DisplayingDisappearingItemsElement) obj).animator);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public int hashCode() {
            return this.animator.hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void inspectableProperties(InspectorInfo inspectorInfo) {
            inspectorInfo.setName("DisplayingDisappearingItemsElement");
        }

        public String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.animator + ')';
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(DisplayingDisappearingItemsNode displayingDisappearingItemsNode) {
            displayingDisappearingItemsNode.setAnimator(this.animator);
        }
    }
}
