package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class re2 implements qv5 {
    public final tq3 a;

    public re2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final oe2 a(ys4 ys4Var, af2 af2Var, JSONObject jSONObject) {
        if (af2Var instanceof ye2) {
            sr5 sr5Var = (sr5) this.a.Y9.getValue();
            tr5 tr5Var = ((ye2) af2Var).a;
            sr5Var.getClass();
            return new me2(new pr5(qq3.a(ys4Var, tr5Var.a, jSONObject, "value", w36.c)));
        }
        if (af2Var instanceof we2) {
            mm3 mm3Var = (mm3) this.a.D9.getValue();
            om3 om3Var = ((we2) af2Var).a;
            mm3Var.getClass();
            return new ke2(new jm3(qq3.a(ys4Var, om3Var.a, jSONObject, "value", w36.b, bt4.e)));
        }
        if (af2Var instanceof xe2) {
            uo4 uo4Var = (uo4) this.a.J9.getValue();
            xo4 xo4Var = ((xe2) af2Var).a;
            uo4Var.getClass();
            return new le2(new ro4(qq3.a(ys4Var, xo4Var.a, jSONObject, "value", w36.d, bt4.d)));
        }
        if (af2Var instanceof ue2) {
            r30 r30Var = (r30) this.a.o.getValue();
            s30 s30Var = ((ue2) af2Var).a;
            r30Var.getClass();
            return new ie2(new o30(qq3.a(ys4Var, s30Var.a, jSONObject, "value", w36.f, bt4.a)));
        }
        if (af2Var instanceof te2) {
            nu nuVar = (nu) this.a.i.getValue();
            ou ouVar = ((te2) af2Var).a;
            nuVar.getClass();
            return new he2(new ku(qq3.a(ys4Var, ouVar.a, jSONObject, "value", w36.a, bt4.c)));
        }
        if (af2Var instanceof ze2) {
            i56 i56Var = (i56) this.a.ea.getValue();
            j56 j56Var = ((ze2) af2Var).a;
            i56Var.getClass();
            return new ne2(new f56(qq3.a(ys4Var, j56Var.a, jSONObject, "value", w36.e, bt4.b)));
        }
        if (af2Var instanceof ve2) {
            ap0 ap0Var = (ap0) this.a.A.getValue();
            bp0 bp0Var = ((ve2) af2Var).a;
            ap0Var.getClass();
            return new je2(new xo0(qq3.a(ys4Var, bp0Var.a, jSONObject, "value", w36.h)));
        }
        if (!(af2Var instanceof se2)) {
            defpackage.me0.e();
            return null;
        }
        hj hjVar = (hj) this.a.c.getValue();
        ij ijVar = ((se2) af2Var).a;
        hjVar.getClass();
        return new ge2(new ej(qq3.a(ys4Var, ijVar.a, jSONObject, "value", w36.g)));
    }
}
