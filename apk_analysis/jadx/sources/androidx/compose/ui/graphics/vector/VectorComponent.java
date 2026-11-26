package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComponent extends VNode {
    public static final int $stable = 8;
    private final DrawCache cacheDrawScope;
    private final nl3<DrawScope, j59> drawVectorBlock;
    private final MutableState intrinsicColorFilter$delegate;
    private ll3<j59> invalidateCallback;
    private boolean isDirty;
    private String name;
    private long previousDrawSize;
    private final GroupComponent root;
    private float rootScaleX;
    private float rootScaleY;
    private ColorFilter tintFilter;
    private final MutableState viewportSize$delegate;

    public VectorComponent(GroupComponent groupComponent) {
        super(null);
        this.root = groupComponent;
        groupComponent.setInvalidateListener$ui(new AnonymousClass1());
        this.name = "";
        this.isDirty = true;
        this.cacheDrawScope = new DrawCache();
        this.invalidateCallback = VectorComponent$invalidateCallback$1.INSTANCE;
        this.intrinsicColorFilter$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        Size.Companion companion = Size.Companion;
        this.viewportSize$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m6044boximpl(companion.m6065getZeroNHjbRc()), null, 2, null);
        this.previousDrawSize = companion.m6064getUnspecifiedNHjbRc();
        this.rootScaleX = 1.0f;
        this.rootScaleY = 1.0f;
        this.drawVectorBlock = new VectorComponent$drawVectorBlock$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doInvalidate() {
        this.isDirty = true;
        this.invalidateCallback.invoke();
    }

    public final void draw(DrawScope drawScope, float f, ColorFilter colorFilter) {
        ImageBitmapConfig.Companion companion;
        int iM6463getArgb8888_sVssgQ;
        DrawScope drawScope2;
        if (this.root.isTintable() && this.root.m6958getTintColor0d7_KjU() != 16 && VectorKt.tintableWithAlphaMask(getIntrinsicColorFilter$ui()) && VectorKt.tintableWithAlphaMask(colorFilter)) {
            companion = ImageBitmapConfig.Companion;
            iM6463getArgb8888_sVssgQ = companion.m6462getAlpha8_sVssgQ();
        } else {
            companion = ImageBitmapConfig.Companion;
            iM6463getArgb8888_sVssgQ = companion.m6463getArgb8888_sVssgQ();
        }
        int i = iM6463getArgb8888_sVssgQ;
        if (!this.isDirty && Size.m6052equalsimpl0(this.previousDrawSize, drawScope.mo6806getSizeNHjbRc()) && ImageBitmapConfig.m6458equalsimpl0(i, m6973getCacheBitmapConfig_sVssgQ$ui())) {
            drawScope2 = drawScope;
        } else {
            this.tintFilter = ImageBitmapConfig.m6458equalsimpl0(i, companion.m6462getAlpha8_sVssgQ()) ? ColorFilter.Companion.m6273tintxETnrds$default(ColorFilter.Companion, VectorKt.m6981toOpaque8_81llA(this.root.m6958getTintColor0d7_KjU()), 0, 2, null) : null;
            this.rootScaleX = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) / Float.intBitsToFloat((int) (m6974getViewportSizeNHjbRc$ui() >> 32));
            this.rootScaleY = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / Float.intBitsToFloat((int) (m6974getViewportSizeNHjbRc$ui() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            drawScope2 = drawScope;
            this.cacheDrawScope.m6956drawCachedImageFqjB98A(i, IntSize.m9208constructorimpl((((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) ((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32))))) << 32)), drawScope2, drawScope.getLayoutDirection(), this.drawVectorBlock);
            this.isDirty = false;
            this.previousDrawSize = drawScope2.mo6806getSizeNHjbRc();
        }
        if (colorFilter == null) {
            colorFilter = getIntrinsicColorFilter$ui() != null ? getIntrinsicColorFilter$ui() : this.tintFilter;
        }
        this.cacheDrawScope.drawInto(drawScope2, f, colorFilter);
    }

    /* JADX INFO: renamed from: getCacheBitmapConfig-_sVssgQ$ui, reason: not valid java name */
    public final int m6973getCacheBitmapConfig_sVssgQ$ui() {
        ImageBitmap mCachedImage = this.cacheDrawScope.getMCachedImage();
        return mCachedImage != null ? mCachedImage.mo6096getConfig_sVssgQ() : ImageBitmapConfig.Companion.m6463getArgb8888_sVssgQ();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ColorFilter getIntrinsicColorFilter$ui() {
        return (ColorFilter) this.intrinsicColorFilter$delegate.getValue();
    }

    public final ll3<j59> getInvalidateCallback$ui() {
        return this.invalidateCallback;
    }

    public final String getName() {
        return this.name;
    }

    public final GroupComponent getRoot() {
        return this.root;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getViewportSize-NH-jbRc$ui, reason: not valid java name */
    public final long m6974getViewportSizeNHjbRc$ui() {
        return ((Size) this.viewportSize$delegate.getValue()).m6061unboximpl();
    }

    public final void setIntrinsicColorFilter$ui(ColorFilter colorFilter) {
        this.intrinsicColorFilter$delegate.setValue(colorFilter);
    }

    public final void setInvalidateCallback$ui(ll3<j59> ll3Var) {
        this.invalidateCallback = ll3Var;
    }

    public final void setName(String str) {
        this.name = str;
    }

    /* JADX INFO: renamed from: setViewportSize-uvyYCjk$ui, reason: not valid java name */
    public final void m6975setViewportSizeuvyYCjk$ui(long j) {
        this.viewportSize$delegate.setValue(Size.m6044boximpl(j));
    }

    public String toString() {
        return "Params: \tname: " + this.name + "\n\tviewportWidth: " + Float.intBitsToFloat((int) (m6974getViewportSizeNHjbRc$ui() >> 32)) + "\n\tviewportHeight: " + Float.intBitsToFloat((int) (m6974getViewportSizeNHjbRc$ui() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + "\n";
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.vector.VectorComponent$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<VNode, j59> {
        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(VNode vNode) {
            invoke2(vNode);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(VNode vNode) {
            VectorComponent.this.doInvalidate();
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void draw(DrawScope drawScope) {
        draw(drawScope, 1.0f, null);
    }
}
