package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;

/* JADX INFO: loaded from: classes2.dex */
public final class Bullet implements AnnotatedString.Annotation {
    private static final Bullet Default;
    private static final long DefaultPadding;
    private static final long DefaultSize;
    private final float alpha;
    private final Brush brush;
    private final DrawStyle drawStyle;
    private final long height;
    private final long padding;
    private final Shape shape;
    private final long width;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = DrawStyle.$stable;
    private static final long DefaultIndentation = TextUnitKt.getEm(1);

    static {
        long em = TextUnitKt.getEm(0.25d);
        DefaultSize = em;
        long em2 = TextUnitKt.getEm(0.25d);
        DefaultPadding = em2;
        Default = new Bullet(CircleShape.INSTANCE, em, em, em2, null, 0.0f, null, 112, null);
    }

    public /* synthetic */ Bullet(Shape shape, long j, long j2, long j3, Brush brush, float f, DrawStyle drawStyle, int i, jh2 jh2Var) {
        this(shape, j, j2, j3, (i & 16) != 0 ? null : brush, (i & 32) != 0 ? Float.NaN : f, (i & 64) != 0 ? Fill.INSTANCE : drawStyle, null);
    }

    /* JADX INFO: renamed from: copy-w_4Rhrw$default, reason: not valid java name */
    public static /* synthetic */ Bullet m8330copyw_4Rhrw$default(Bullet bullet, Shape shape, long j, long j2, long j3, Brush brush, float f, DrawStyle drawStyle, int i, Object obj) {
        if ((i & 1) != 0) {
            shape = bullet.shape;
        }
        if ((i & 2) != 0) {
            j = bullet.width;
        }
        if ((i & 4) != 0) {
            j2 = bullet.height;
        }
        if ((i & 8) != 0) {
            j3 = bullet.padding;
        }
        if ((i & 16) != 0) {
            brush = bullet.brush;
        }
        if ((i & 32) != 0) {
            f = bullet.alpha;
        }
        if ((i & 64) != 0) {
            drawStyle = bullet.drawStyle;
        }
        DrawStyle drawStyle2 = drawStyle;
        Brush brush2 = brush;
        long j4 = j3;
        long j5 = j2;
        return bullet.m8331copyw_4Rhrw(shape, j, j5, j4, brush2, f, drawStyle2);
    }

    /* JADX INFO: renamed from: copy-w_4Rhrw, reason: not valid java name */
    public final Bullet m8331copyw_4Rhrw(Shape shape, long j, long j2, long j3, Brush brush, float f, DrawStyle drawStyle) {
        return new Bullet(shape, j, j2, j3, brush, f, drawStyle, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Bullet)) {
            Bullet bullet = (Bullet) obj;
            return aa4.e(this.shape, bullet.shape) && TextUnit.m9233equalsimpl0(this.width, bullet.width) && TextUnit.m9233equalsimpl0(this.height, bullet.height) && TextUnit.m9233equalsimpl0(this.padding, bullet.padding) && aa4.e(this.brush, bullet.brush) && this.alpha == bullet.alpha && aa4.e(this.drawStyle, bullet.drawStyle);
        }
        return false;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final Brush getBrush() {
        return this.brush;
    }

    public final DrawStyle getDrawStyle() {
        return this.drawStyle;
    }

    /* JADX INFO: renamed from: getHeight-XSAIIZE, reason: not valid java name */
    public final long m8332getHeightXSAIIZE() {
        return this.height;
    }

    /* JADX INFO: renamed from: getPadding-XSAIIZE, reason: not valid java name */
    public final long m8333getPaddingXSAIIZE() {
        return this.padding;
    }

    public final Shape getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: getWidth-XSAIIZE, reason: not valid java name */
    public final long m8334getWidthXSAIIZE() {
        return this.width;
    }

    public int hashCode() {
        int iM9237hashCodeimpl = (TextUnit.m9237hashCodeimpl(this.padding) + ((TextUnit.m9237hashCodeimpl(this.height) + ((TextUnit.m9237hashCodeimpl(this.width) + (this.shape.hashCode() * 31)) * 31)) * 31)) * 31;
        Brush brush = this.brush;
        return this.drawStyle.hashCode() + jn.b(this.alpha, (iM9237hashCodeimpl + (brush != null ? brush.hashCode() : 0)) * 31, 31);
    }

    public String toString() {
        return "Bullet(shape=" + this.shape + ", size=(" + ((Object) TextUnit.m9243toStringimpl(this.width)) + ", " + ((Object) TextUnit.m9243toStringimpl(this.height)) + "), padding=" + ((Object) TextUnit.m9243toStringimpl(this.padding)) + ", brush=" + this.brush + ", alpha=" + this.alpha + ", drawStyle=" + this.drawStyle + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Bullet getDefault() {
            return Bullet.Default;
        }

        /* JADX INFO: renamed from: getDefaultIndentation-XSAIIZE, reason: not valid java name */
        public final long m8335getDefaultIndentationXSAIIZE() {
            return Bullet.DefaultIndentation;
        }

        /* JADX INFO: renamed from: getDefaultPadding-XSAIIZE, reason: not valid java name */
        public final long m8336getDefaultPaddingXSAIIZE() {
            return Bullet.DefaultPadding;
        }

        /* JADX INFO: renamed from: getDefaultSize-XSAIIZE, reason: not valid java name */
        public final long m8337getDefaultSizeXSAIIZE() {
            return Bullet.DefaultSize;
        }

        private Companion() {
        }
    }

    private Bullet(Shape shape, long j, long j2, long j3, Brush brush, float f, DrawStyle drawStyle) {
        this.shape = shape;
        this.width = j;
        this.height = j2;
        this.padding = j3;
        this.brush = brush;
        this.alpha = f;
        this.drawStyle = drawStyle;
    }

    public /* synthetic */ Bullet(Shape shape, long j, long j2, long j3, Brush brush, float f, DrawStyle drawStyle, jh2 jh2Var) {
        this(shape, j, j2, j3, brush, f, drawStyle);
    }
}
