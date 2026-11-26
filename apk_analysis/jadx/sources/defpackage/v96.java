package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class v96 implements cc9<PointF> {
    public static final v96 b = new v96();

    @Override // defpackage.cc9
    public final PointF e(td4 td4Var, float f) {
        td4.b bVarU = td4Var.U();
        if (bVarU != td4.b.BEGIN_ARRAY && bVarU != td4.b.BEGIN_OBJECT) {
            if (bVarU != td4.b.NUMBER) {
                r01.e(bVarU, "Cannot convert json to point. Next token is ");
                return null;
            }
            PointF pointF = new PointF(((float) td4Var.E()) * f, ((float) td4Var.E()) * f);
            while (td4Var.v()) {
                td4Var.e0();
            }
            return pointF;
        }
        return ie4.b(td4Var, f);
    }
}
