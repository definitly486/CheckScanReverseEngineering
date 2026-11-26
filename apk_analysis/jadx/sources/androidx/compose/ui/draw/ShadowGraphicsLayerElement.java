package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.ch;
import defpackage.gh4;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ln;
import defpackage.nl3;
import defpackage.qg;
import defpackage.r01;
import defpackage.tg;

/* JADX INFO: loaded from: classes2.dex */
public final class ShadowGraphicsLayerElement extends ModifierNodeElement<BlockGraphicsLayerModifier> {
    public static final int $stable = 0;
    private final long ambientColor;
    private final boolean clip;
    private final float elevation;
    private final Shape shape;
    private final long spotColor;

    private ShadowGraphicsLayerElement(float f, Shape shape, boolean z, long j, long j2) {
        this.elevation = f;
        this.shape = shape;
        this.clip = z;
        this.ambientColor = j;
        this.spotColor = j2;
    }

    /* JADX INFO: renamed from: copy-gNMxBKI$default, reason: not valid java name */
    public static /* synthetic */ ShadowGraphicsLayerElement m5821copygNMxBKI$default(ShadowGraphicsLayerElement shadowGraphicsLayerElement, float f, Shape shape, boolean z, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = shadowGraphicsLayerElement.elevation;
        }
        if ((i & 2) != 0) {
            shape = shadowGraphicsLayerElement.shape;
        }
        if ((i & 4) != 0) {
            z = shadowGraphicsLayerElement.clip;
        }
        if ((i & 8) != 0) {
            j = shadowGraphicsLayerElement.ambientColor;
        }
        if ((i & 16) != 0) {
            j2 = shadowGraphicsLayerElement.spotColor;
        }
        long j3 = j2;
        boolean z2 = z;
        return shadowGraphicsLayerElement.m5825copygNMxBKI(f, shape, z2, j, j3);
    }

    private final nl3<GraphicsLayerScope, j59> createBlock() {
        return new AnonymousClass1();
    }

    /* JADX INFO: renamed from: component1-D9Ej5fM, reason: not valid java name */
    public final float m5822component1D9Ej5fM() {
        return this.elevation;
    }

    public final Shape component2() {
        return this.shape;
    }

    public final boolean component3() {
        return this.clip;
    }

    /* JADX INFO: renamed from: component4-0d7_KjU, reason: not valid java name */
    public final long m5823component40d7_KjU() {
        return this.ambientColor;
    }

    /* JADX INFO: renamed from: component5-0d7_KjU, reason: not valid java name */
    public final long m5824component50d7_KjU() {
        return this.spotColor;
    }

    /* JADX INFO: renamed from: copy-gNMxBKI, reason: not valid java name */
    public final ShadowGraphicsLayerElement m5825copygNMxBKI(float f, Shape shape, boolean z, long j, long j2) {
        return new ShadowGraphicsLayerElement(f, shape, z, j, j2, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public BlockGraphicsLayerModifier create() {
        return new BlockGraphicsLayerModifier(createBlock());
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadowGraphicsLayerElement)) {
            return false;
        }
        ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj;
        return Dp.m9047equalsimpl0(this.elevation, shadowGraphicsLayerElement.elevation) && aa4.e(this.shape, shadowGraphicsLayerElement.shape) && this.clip == shadowGraphicsLayerElement.clip && Color.m6233equalsimpl0(this.ambientColor, shadowGraphicsLayerElement.ambientColor) && Color.m6233equalsimpl0(this.spotColor, shadowGraphicsLayerElement.spotColor);
    }

    /* JADX INFO: renamed from: getAmbientColor-0d7_KjU, reason: not valid java name */
    public final long m5826getAmbientColor0d7_KjU() {
        return this.ambientColor;
    }

    public final boolean getClip() {
        return this.clip;
    }

    /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m5827getElevationD9Ej5fM() {
        return this.elevation;
    }

    public final Shape getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: getSpotColor-0d7_KjU, reason: not valid java name */
    public final long m5828getSpotColor0d7_KjU() {
        return this.spotColor;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Color.m6239hashCodeimpl(this.spotColor) + r01.b(tg.c((this.shape.hashCode() + (Dp.m9048hashCodeimpl(this.elevation) * 31)) * 31, 31, this.clip), 31, this.ambientColor);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("shadow");
        qg.e(this.elevation, inspectorInfo.getProperties(), "elevation", inspectorInfo).set("shape", this.shape);
        il1.c(this.clip, inspectorInfo.getProperties(), "clip", inspectorInfo).set("ambientColor", Color.m6222boximpl(this.ambientColor));
        inspectorInfo.getProperties().set("spotColor", Color.m6222boximpl(this.spotColor));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ShadowGraphicsLayerElement(elevation=");
        ch.d(sb, ", shape=", this.elevation);
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", ambientColor=");
        ln.g(this.ambientColor, ", spotColor=", sb);
        sb.append((Object) Color.m6240toStringimpl(this.spotColor));
        sb.append(')');
        return sb.toString();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(BlockGraphicsLayerModifier blockGraphicsLayerModifier) {
        blockGraphicsLayerModifier.setLayerBlock(createBlock());
        blockGraphicsLayerModifier.invalidateLayerBlock();
    }

    public /* synthetic */ ShadowGraphicsLayerElement(float f, Shape shape, boolean z, long j, long j2, jh2 jh2Var) {
        this(f, shape, z, j, j2);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.draw.ShadowGraphicsLayerElement$createBlock$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
        public AnonymousClass1() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
            graphicsLayerScope.setShadowElevation(graphicsLayerScope.mo1434toPx0680j_4(ShadowGraphicsLayerElement.this.m5827getElevationD9Ej5fM()));
            graphicsLayerScope.setShape(ShadowGraphicsLayerElement.this.getShape());
            graphicsLayerScope.setClip(ShadowGraphicsLayerElement.this.getClip());
            graphicsLayerScope.mo6429setAmbientShadowColor8_81llA(ShadowGraphicsLayerElement.this.m5826getAmbientColor0d7_KjU());
            graphicsLayerScope.mo6432setSpotShadowColor8_81llA(ShadowGraphicsLayerElement.this.m5828getSpotColor0d7_KjU());
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
            invoke2(graphicsLayerScope);
            return j59.a;
        }
    }
}
