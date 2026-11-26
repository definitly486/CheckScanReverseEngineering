package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorPainter extends Painter {
    public static final int $stable = 8;
    private final MutableState autoMirror$delegate;
    private Composition composition;
    private float currentAlpha;
    private ColorFilter currentColorFilter;
    private final MutableState drawInvalidation$delegate;
    private final MutableState size$delegate;
    private final VectorComponent vector;

    public VectorPainter(GroupComponent groupComponent) {
        this.size$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m6044boximpl(Size.Companion.m6065getZeroNHjbRc()), null, 2, null);
        this.autoMirror$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.setInvalidateCallback$ui(new VectorPainter$vector$1$1(this));
        this.vector = vectorComponent;
        this.drawInvalidation$delegate = SnapshotStateKt.mutableStateOf(j59.a, SnapshotStateKt.neverEqualPolicy());
        this.currentAlpha = 1.0f;
    }

    private final j59 getDrawInvalidation() {
        this.drawInvalidation$delegate.getValue();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDrawInvalidation(j59 j59Var) {
        this.drawInvalidation$delegate.setValue(j59Var);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyAlpha(float f) {
        this.currentAlpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getAutoMirror$ui() {
        return ((Boolean) this.autoMirror$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: renamed from: getBitmapConfig-_sVssgQ$ui, reason: not valid java name */
    public final int m6982getBitmapConfig_sVssgQ$ui() {
        return this.vector.m6973getCacheBitmapConfig_sVssgQ$ui();
    }

    public final Composition getComposition$ui() {
        return this.composition;
    }

    public final ColorFilter getIntrinsicColorFilter$ui() {
        return this.vector.getIntrinsicColorFilter$ui();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public long mo6926getIntrinsicSizeNHjbRc() {
        return m6983getSizeNHjbRc$ui();
    }

    public final String getName$ui() {
        return this.vector.getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getSize-NH-jbRc$ui, reason: not valid java name */
    public final long m6983getSizeNHjbRc$ui() {
        return ((Size) this.size$delegate.getValue()).m6061unboximpl();
    }

    public final VectorComponent getVector$ui() {
        return this.vector;
    }

    /* JADX INFO: renamed from: getViewportSize-NH-jbRc$ui, reason: not valid java name */
    public final long m6984getViewportSizeNHjbRc$ui() {
        return this.vector.m6974getViewportSizeNHjbRc$ui();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(DrawScope drawScope) {
        VectorComponent vectorComponent = this.vector;
        ColorFilter intrinsicColorFilter$ui = this.currentColorFilter;
        if (intrinsicColorFilter$ui == null) {
            intrinsicColorFilter$ui = vectorComponent.getIntrinsicColorFilter$ui();
        }
        if (getAutoMirror$ui() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long jMo6805getCenterF1C5BW0 = drawScope.mo6805getCenterF1C5BW0();
            DrawContext drawContext = drawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6734scale0AR0LA0(-1.0f, 1.0f, jMo6805getCenterF1C5BW0);
                vectorComponent.draw(drawScope, this.currentAlpha, intrinsicColorFilter$ui);
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            } catch (Throwable th) {
                n1.a(drawContext, jMo6727getSizeNHjbRc);
                throw th;
            }
        } else {
            vectorComponent.draw(drawScope, this.currentAlpha, intrinsicColorFilter$ui);
        }
        getDrawInvalidation();
    }

    public final void setAutoMirror$ui(boolean z) {
        this.autoMirror$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setComposition$ui(Composition composition) {
        this.composition = composition;
    }

    public final void setIntrinsicColorFilter$ui(ColorFilter colorFilter) {
        this.vector.setIntrinsicColorFilter$ui(colorFilter);
    }

    public final void setName$ui(String str) {
        this.vector.setName(str);
    }

    /* JADX INFO: renamed from: setSize-uvyYCjk$ui, reason: not valid java name */
    public final void m6985setSizeuvyYCjk$ui(long j) {
        this.size$delegate.setValue(Size.m6044boximpl(j));
    }

    /* JADX INFO: renamed from: setViewportSize-uvyYCjk$ui, reason: not valid java name */
    public final void m6986setViewportSizeuvyYCjk$ui(long j) {
        this.vector.m6975setViewportSizeuvyYCjk$ui(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VectorPainter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VectorPainter(GroupComponent groupComponent, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new GroupComponent() : groupComponent);
    }
}
