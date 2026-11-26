package androidx.compose.foundation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jn;
import defpackage.nl3;
import defpackage.qg;
import defpackage.rg;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public final class MagnifierElement extends ModifierNodeElement<MagnifierNode> {
    public static final int $stable = 0;
    private final boolean clippingEnabled;
    private final float cornerRadius;
    private final float elevation;
    private final nl3<Density, Offset> magnifierCenter;
    private final nl3<DpSize, j59> onSizeChanged;
    private final PlatformMagnifierFactory platformMagnifierFactory;
    private final long size;
    private final nl3<Density, Offset> sourceCenter;
    private final boolean useTextDefault;
    private final float zoom;

    public /* synthetic */ MagnifierElement(nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, int i, jh2 jh2Var) {
        this(nl3Var, (i & 2) != 0 ? null : nl3Var2, (i & 4) != 0 ? null : nl3Var3, (i & 8) != 0 ? Float.NaN : f, (i & 16) != 0 ? false : z, (i & 32) != 0 ? DpSize.Companion.m9149getUnspecifiedMYxV2XQ() : j, (i & 64) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, (i & 128) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f3, (i & 256) != 0 ? true : z2, platformMagnifierFactory, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public MagnifierNode create() {
        return new MagnifierNode(this.sourceCenter, this.magnifierCenter, this.onSizeChanged, this.zoom, this.useTextDefault, this.size, this.cornerRadius, this.elevation, this.clippingEnabled, this.platformMagnifierFactory, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MagnifierElement)) {
            return false;
        }
        MagnifierElement magnifierElement = (MagnifierElement) obj;
        return this.sourceCenter == magnifierElement.sourceCenter && this.magnifierCenter == magnifierElement.magnifierCenter && this.zoom == magnifierElement.zoom && this.useTextDefault == magnifierElement.useTextDefault && DpSize.m9137equalsimpl0(this.size, magnifierElement.size) && Dp.m9047equalsimpl0(this.cornerRadius, magnifierElement.cornerRadius) && Dp.m9047equalsimpl0(this.elevation, magnifierElement.elevation) && this.clippingEnabled == magnifierElement.clippingEnabled && this.onSizeChanged == magnifierElement.onSizeChanged && aa4.e(this.platformMagnifierFactory, magnifierElement.platformMagnifierFactory);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = this.sourceCenter.hashCode() * 31;
        nl3<Density, Offset> nl3Var = this.magnifierCenter;
        int iC = tg.c(rg.c(this.elevation, rg.c(this.cornerRadius, (DpSize.m9142hashCodeimpl(this.size) + tg.c(jn.b(this.zoom, (iHashCode + (nl3Var != null ? nl3Var.hashCode() : 0)) * 31, 31), 31, this.useTextDefault)) * 31, 31), 31), 31, this.clippingEnabled);
        nl3<DpSize, j59> nl3Var2 = this.onSizeChanged;
        return this.platformMagnifierFactory.hashCode() + ((iC + (nl3Var2 != null ? nl3Var2.hashCode() : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("magnifier");
        inspectorInfo.getProperties().set("sourceCenter", this.sourceCenter);
        inspectorInfo.getProperties().set("magnifierCenter", this.magnifierCenter);
        inspectorInfo.getProperties().set("zoom", Float.valueOf(this.zoom));
        inspectorInfo.getProperties().set(TJAdUnitConstants.String.SIZE, DpSize.m9128boximpl(this.size));
        qg.e(this.elevation, qg.e(this.cornerRadius, inspectorInfo.getProperties(), "cornerRadius", inspectorInfo), "elevation", inspectorInfo).set("clippingEnabled", Boolean.valueOf(this.clippingEnabled));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(MagnifierNode magnifierNode) {
        magnifierNode.m1354update5F03MCQ(this.sourceCenter, this.magnifierCenter, this.zoom, this.useTextDefault, this.size, this.cornerRadius, this.elevation, this.clippingEnabled, this.onSizeChanged, this.platformMagnifierFactory);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MagnifierElement(nl3<? super Density, Offset> nl3Var, nl3<? super Density, Offset> nl3Var2, nl3<? super DpSize, j59> nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = nl3Var;
        this.magnifierCenter = nl3Var2;
        this.onSizeChanged = nl3Var3;
        this.zoom = f;
        this.useTextDefault = z;
        this.size = j;
        this.cornerRadius = f2;
        this.elevation = f3;
        this.clippingEnabled = z2;
        this.platformMagnifierFactory = platformMagnifierFactory;
    }

    public /* synthetic */ MagnifierElement(nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, jh2 jh2Var) {
        this(nl3Var, nl3Var2, nl3Var3, f, z, j, f2, f3, z2, platformMagnifierFactory);
    }
}
