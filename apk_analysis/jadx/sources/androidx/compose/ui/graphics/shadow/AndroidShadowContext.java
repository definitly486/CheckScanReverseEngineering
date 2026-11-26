package androidx.compose.ui.graphics.shadow;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jn;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidShadowContext implements PlatformShadowContext, DropShadowRendererProvider, InnerShadowRendererProvider {
    private MutableScatterMap<ShadowKey, DropShadowRenderer> dropShadowCache;
    private MutableScatterMap<ShadowKey, InnerShadowRenderer> innerShadowCache;
    private ShadowKey shadowKey;

    private final MutableScatterMap<ShadowKey, DropShadowRenderer> obtainDropShadowCache() {
        MutableScatterMap<ShadowKey, DropShadowRenderer> mutableScatterMap = this.dropShadowCache;
        if (mutableScatterMap != null) {
            return mutableScatterMap;
        }
        MutableScatterMap<ShadowKey, DropShadowRenderer> mutableScatterMap2 = new MutableScatterMap<>(0, 1, null);
        this.dropShadowCache = mutableScatterMap2;
        return mutableScatterMap2;
    }

    private final MutableScatterMap<ShadowKey, InnerShadowRenderer> obtainInnerShadowCache() {
        MutableScatterMap<ShadowKey, InnerShadowRenderer> mutableScatterMap = this.innerShadowCache;
        if (mutableScatterMap != null) {
            return mutableScatterMap;
        }
        MutableScatterMap<ShadowKey, InnerShadowRenderer> mutableScatterMap2 = new MutableScatterMap<>(0, 1, null);
        this.innerShadowCache = mutableScatterMap2;
        return mutableScatterMap2;
    }

    private final ShadowKey obtainShadowKey() {
        ShadowKey shadowKey = this.shadowKey;
        if (shadowKey != null) {
            return shadowKey;
        }
        ShadowKey shadowKey2 = new ShadowKey(null, 0L, null, 0.0f, null, 31, null);
        this.shadowKey = shadowKey2;
        return shadowKey2;
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowContext
    public void clearCache() {
        synchronized (this) {
            try {
                MutableScatterMap<ShadowKey, DropShadowRenderer> mutableScatterMap = this.dropShadowCache;
                if (mutableScatterMap != null) {
                    mutableScatterMap.clear();
                }
                MutableScatterMap<ShadowKey, InnerShadowRenderer> mutableScatterMap2 = this.innerShadowCache;
                if (mutableScatterMap2 != null) {
                    mutableScatterMap2.clear();
                }
                this.shadowKey = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowContext
    public DropShadowPainter createDropShadowPainter(Shape shape, Shadow shadow) {
        return new DropShadowPainter(shape, shadow, this);
    }

    @Override // androidx.compose.ui.graphics.shadow.ShadowContext
    public InnerShadowPainter createInnerShadowPainter(Shape shape, Shadow shadow) {
        return new InnerShadowPainter(shape, shadow, this);
    }

    @Override // androidx.compose.ui.graphics.shadow.DropShadowRendererProvider
    /* JADX INFO: renamed from: obtainDropShadowRenderer-eZhPAX0, reason: not valid java name */
    public DropShadowRenderer mo6933obtainDropShadowRenderereZhPAX0(Shape shape, long j, LayoutDirection layoutDirection, Density density, Shadow shadow) {
        DropShadowRenderer dropShadowRenderer;
        synchronized (this) {
            ShadowKey shadowKeyObtainShadowKey = obtainShadowKey();
            shadowKeyObtainShadowKey.setShape(shape);
            shadowKeyObtainShadowKey.m6939setSizeuvyYCjk(j);
            shadowKeyObtainShadowKey.setLayoutDirection(layoutDirection);
            shadowKeyObtainShadowKey.setDensity(density.getDensity());
            shadowKeyObtainShadowKey.setShadow(shadow.copyWithoutOffset$ui_graphics());
            dropShadowRenderer = obtainDropShadowCache().get(shadowKeyObtainShadowKey);
            if (dropShadowRenderer == null) {
                DropShadowRenderer dropShadowRenderer2 = new DropShadowRenderer(shadow, shape.mo1345createOutlinePq9zytI(j, layoutDirection, density));
                obtainDropShadowCache().set(ShadowKey.m6935copyeZhPAX0$default(shadowKeyObtainShadowKey, null, 0L, null, 0.0f, null, 31, null), dropShadowRenderer2);
                dropShadowRenderer = dropShadowRenderer2;
            }
        }
        return dropShadowRenderer;
    }

    @Override // androidx.compose.ui.graphics.shadow.InnerShadowRendererProvider
    /* JADX INFO: renamed from: obtainInnerShadowRenderer-eZhPAX0, reason: not valid java name */
    public InnerShadowRenderer mo6934obtainInnerShadowRenderereZhPAX0(Shape shape, long j, LayoutDirection layoutDirection, Density density, Shadow shadow) {
        InnerShadowRenderer innerShadowRenderer;
        synchronized (this) {
            ShadowKey shadowKeyObtainShadowKey = obtainShadowKey();
            shadowKeyObtainShadowKey.setShape(shape);
            shadowKeyObtainShadowKey.m6939setSizeuvyYCjk(j);
            shadowKeyObtainShadowKey.setLayoutDirection(layoutDirection);
            shadowKeyObtainShadowKey.setDensity(density.getDensity());
            shadowKeyObtainShadowKey.setShadow(shadow);
            innerShadowRenderer = obtainInnerShadowCache().get(shadowKeyObtainShadowKey);
            if (innerShadowRenderer == null) {
                InnerShadowRenderer innerShadowRenderer2 = new InnerShadowRenderer(shadow, shape.mo1345createOutlinePq9zytI(j, layoutDirection, density));
                obtainInnerShadowCache().set(ShadowKey.m6935copyeZhPAX0$default(shadowKeyObtainShadowKey, null, 0L, null, 0.0f, null, 31, null), innerShadowRenderer2);
                innerShadowRenderer = innerShadowRenderer2;
            }
        }
        return innerShadowRenderer;
    }

    public static final class ShadowKey {
        public static final int $stable = 8;
        private float density;
        private LayoutDirection layoutDirection;
        private Shadow shadow;
        private Shape shape;
        private long size;

        public /* synthetic */ ShadowKey(Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? RectangleShapeKt.getRectangleShape() : shape, (i & 2) != 0 ? Size.Companion.m6065getZeroNHjbRc() : j, (i & 4) != 0 ? LayoutDirection.Ltr : layoutDirection, (i & 8) != 0 ? 1.0f : f, (i & 16) != 0 ? null : shadow, null);
        }

        /* JADX INFO: renamed from: copy-eZhPAX0$default, reason: not valid java name */
        public static /* synthetic */ ShadowKey m6935copyeZhPAX0$default(ShadowKey shadowKey, Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow, int i, Object obj) {
            if ((i & 1) != 0) {
                shape = shadowKey.shape;
            }
            if ((i & 2) != 0) {
                j = shadowKey.size;
            }
            if ((i & 4) != 0) {
                layoutDirection = shadowKey.layoutDirection;
            }
            if ((i & 8) != 0) {
                f = shadowKey.density;
            }
            if ((i & 16) != 0) {
                shadow = shadowKey.shadow;
            }
            Shadow shadow2 = shadow;
            LayoutDirection layoutDirection2 = layoutDirection;
            return shadowKey.m6937copyeZhPAX0(shape, j, layoutDirection2, f, shadow2);
        }

        public final Shape component1() {
            return this.shape;
        }

        /* JADX INFO: renamed from: component2-NH-jbRc, reason: not valid java name */
        public final long m6936component2NHjbRc() {
            return this.size;
        }

        public final LayoutDirection component3() {
            return this.layoutDirection;
        }

        public final float component4() {
            return this.density;
        }

        public final Shadow component5() {
            return this.shadow;
        }

        /* JADX INFO: renamed from: copy-eZhPAX0, reason: not valid java name */
        public final ShadowKey m6937copyeZhPAX0(Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow) {
            return new ShadowKey(shape, j, layoutDirection, f, shadow, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShadowKey)) {
                return false;
            }
            ShadowKey shadowKey = (ShadowKey) obj;
            return aa4.e(this.shape, shadowKey.shape) && Size.m6052equalsimpl0(this.size, shadowKey.size) && this.layoutDirection == shadowKey.layoutDirection && Float.compare(this.density, shadowKey.density) == 0 && aa4.e(this.shadow, shadowKey.shadow);
        }

        public final float getDensity() {
            return this.density;
        }

        public final LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public final Shadow getShadow() {
            return this.shadow;
        }

        public final Shape getShape() {
            return this.shape;
        }

        /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
        public final long m6938getSizeNHjbRc() {
            return this.size;
        }

        public int hashCode() {
            int iB = jn.b(this.density, (this.layoutDirection.hashCode() + ((Size.m6057hashCodeimpl(this.size) + (this.shape.hashCode() * 31)) * 31)) * 31, 31);
            Shadow shadow = this.shadow;
            return iB + (shadow == null ? 0 : shadow.hashCode());
        }

        public final void setDensity(float f) {
            this.density = f;
        }

        public final void setLayoutDirection(LayoutDirection layoutDirection) {
            this.layoutDirection = layoutDirection;
        }

        public final void setShadow(Shadow shadow) {
            this.shadow = shadow;
        }

        public final void setShape(Shape shape) {
            this.shape = shape;
        }

        /* JADX INFO: renamed from: setSize-uvyYCjk, reason: not valid java name */
        public final void m6939setSizeuvyYCjk(long j) {
            this.size = j;
        }

        public String toString() {
            return "ShadowKey(shape=" + this.shape + ", size=" + ((Object) Size.m6060toStringimpl(this.size)) + ", layoutDirection=" + this.layoutDirection + ", density=" + this.density + ", shadow=" + this.shadow + ')';
        }

        private ShadowKey(Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow) {
            this.shape = shape;
            this.size = j;
            this.layoutDirection = layoutDirection;
            this.density = f;
            this.shadow = shadow;
        }

        public /* synthetic */ ShadowKey(Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow, jh2 jh2Var) {
            this(shape, j, layoutDirection, f, shadow);
        }
    }
}
