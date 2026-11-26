package defpackage;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public final class fy1 extends ModifierNodeElement<gy1> {
    public final b24 b;
    public final r14 c;
    public final ns d;
    public final nl3<ps.b, ps.b> e;
    public final nl3<ps.b, j59> f;
    public final int g;
    public final Alignment h;
    public final ContentScale i;
    public final float j = 1.0f;
    public final boolean k = true;
    public final ss l;

    public fy1(b24 b24Var, r14 r14Var, ns nsVar, nl3 nl3Var, nl3 nl3Var2, int i, Alignment alignment, ContentScale contentScale, ss ssVar) {
        this.b = b24Var;
        this.c = r14Var;
        this.d = nsVar;
        this.e = nl3Var;
        this.f = nl3Var2;
        this.g = i;
        this.h = alignment;
        this.i = contentScale;
        this.l = ssVar;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ns nsVar = this.d;
        r14 r14Var = this.c;
        b24 b24Var = this.b;
        ps.a aVar = new ps.a(r14Var, b24Var, nsVar);
        ps psVar = new ps(aVar);
        psVar.j = this.e;
        psVar.k = this.f;
        psVar.l = this.i;
        psVar.m = this.g;
        psVar.n = this.l;
        psVar.c(aVar);
        w18 w18Var = b24Var.o;
        return new gy1(psVar, this.h, this.i, this.j, this.k, w18Var instanceof ox1 ? (ox1) w18Var : null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fy1)) {
            return false;
        }
        fy1 fy1Var = (fy1) obj;
        return aa4.e(this.b, fy1Var.b) && aa4.e(this.c, fy1Var.c) && aa4.e(this.d, fy1Var.d) && aa4.e(this.e, fy1Var.e) && aa4.e(this.f, fy1Var.f) && FilterQuality.m6327equalsimpl0(this.g, fy1Var.g) && aa4.e(this.h, fy1Var.h) && aa4.e(this.i, fy1Var.i) && Float.compare(this.j, fy1Var.j) == 0 && this.k == fy1Var.k && aa4.e(this.l, fy1Var.l);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31)) * 31;
        nl3<ps.b, j59> nl3Var = this.f;
        int iC = tg.c(jn.b(this.j, (this.i.hashCode() + ((this.h.hashCode() + ((FilterQuality.m6328hashCodeimpl(this.g) + ((iHashCode + (nl3Var == null ? 0 : nl3Var.hashCode())) * 31)) * 31)) * 31)) * 31, 961), 31, this.k);
        ss ssVar = this.l;
        return (iC + (ssVar != null ? ssVar.hashCode() : 0)) * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName(FirebaseAnalytics.Param.CONTENT);
        inspectorInfo.getProperties().set("request", this.b);
        inspectorInfo.getProperties().set("imageLoader", this.c);
        inspectorInfo.getProperties().set("modelEqualityDelegate", this.d);
        inspectorInfo.getProperties().set("transform", this.e);
        inspectorInfo.getProperties().set("onState", this.f);
        inspectorInfo.getProperties().set("filterQuality", FilterQuality.m6324boximpl(this.g));
        inspectorInfo.getProperties().set("alignment", this.h);
        inspectorInfo.getProperties().set("contentScale", this.i);
        inspectorInfo.getProperties().set("alpha", Float.valueOf(this.j));
        inspectorInfo.getProperties().set("colorFilter", null);
        il1.c(this.k, inspectorInfo.getProperties(), "clipToBounds", inspectorInfo).set("previewHandler", this.l);
        inspectorInfo.getProperties().set("contentDescription", null);
    }

    public final String toString() {
        return "ContentPainterElement(request=" + this.b + ", imageLoader=" + this.c + ", modelEqualityDelegate=" + this.d + ", transform=" + this.e + ", onState=" + this.f + ", filterQuality=" + FilterQuality.m6329toStringimpl(this.g) + ", alignment=" + this.h + ", contentScale=" + this.i + ", alpha=" + this.j + ", colorFilter=null, clipToBounds=" + this.k + ", previewHandler=" + this.l + ", contentDescription=null)";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        gy1 gy1Var = (gy1) node;
        long jMo6926getIntrinsicSizeNHjbRc = gy1Var.g.mo6926getIntrinsicSizeNHjbRc();
        ox1 ox1Var = gy1Var.f;
        ns nsVar = this.d;
        r14 r14Var = this.c;
        b24 b24Var = this.b;
        ps.a aVar = new ps.a(r14Var, b24Var, nsVar);
        ps psVar = gy1Var.g;
        psVar.j = this.e;
        psVar.k = this.f;
        ContentScale contentScale = this.i;
        psVar.l = contentScale;
        psVar.m = this.g;
        psVar.n = this.l;
        psVar.c(aVar);
        boolean zM6052equalsimpl0 = Size.m6052equalsimpl0(jMo6926getIntrinsicSizeNHjbRc, psVar.mo6926getIntrinsicSizeNHjbRc());
        gy1Var.b = this.h;
        w18 w18Var = b24Var.o;
        gy1Var.f = w18Var instanceof ox1 ? (ox1) w18Var : null;
        gy1Var.c = contentScale;
        gy1Var.d = this.j;
        gy1Var.e = this.k;
        boolean zE = aa4.e(ox1Var, gy1Var.f);
        if (!zM6052equalsimpl0 || !zE) {
            LayoutModifierNodeKt.invalidateMeasurement(gy1Var);
        }
        DrawModifierNodeKt.invalidateDraw(gy1Var);
    }
}
