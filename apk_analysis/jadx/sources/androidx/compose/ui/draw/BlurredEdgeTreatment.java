package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class BlurredEdgeTreatment {
    public static final Companion Companion = new Companion(null);
    private static final Shape Rectangle = m5757constructorimpl(RectangleShapeKt.getRectangleShape());
    private static final Shape Unbounded = m5757constructorimpl(null);
    private final Shape shape;

    private /* synthetic */ BlurredEdgeTreatment(Shape shape) {
        this.shape = shape;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BlurredEdgeTreatment m5756boximpl(Shape shape) {
        return new BlurredEdgeTreatment(shape);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Shape m5757constructorimpl(Shape shape) {
        return shape;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5758equalsimpl(Shape shape, Object obj) {
        return (obj instanceof BlurredEdgeTreatment) && aa4.e(shape, ((BlurredEdgeTreatment) obj).m5762unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5759equalsimpl0(Shape shape, Shape shape2) {
        return aa4.e(shape, shape2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5760hashCodeimpl(Shape shape) {
        if (shape == null) {
            return 0;
        }
        return shape.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5761toStringimpl(Shape shape) {
        return "BlurredEdgeTreatment(shape=" + shape + ')';
    }

    public boolean equals(Object obj) {
        return m5758equalsimpl(this.shape, obj);
    }

    public final Shape getShape() {
        return this.shape;
    }

    public int hashCode() {
        return m5760hashCodeimpl(this.shape);
    }

    public String toString() {
        return m5761toStringimpl(this.shape);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Shape m5762unboximpl() {
        return this.shape;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getRectangle---Goahg, reason: not valid java name */
        public final Shape m5763getRectangleGoahg() {
            return BlurredEdgeTreatment.Rectangle;
        }

        /* JADX INFO: renamed from: getUnbounded---Goahg, reason: not valid java name */
        public final Shape m5764getUnboundedGoahg() {
            return BlurredEdgeTreatment.Unbounded;
        }

        private Companion() {
        }
    }
}
