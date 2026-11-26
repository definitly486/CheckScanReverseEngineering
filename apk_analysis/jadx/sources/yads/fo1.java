package yads;

import java.util.ArrayList;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fo1 {
    public final String a;
    public final JSONObject b;
    public final JSONObject c;
    public final ArrayList d;
    public final db1 e;
    public final qb1 f;
    public final Set g;
    public final nn0 h;

    public fo1(String str, JSONObject jSONObject, JSONObject jSONObject2, ArrayList arrayList, db1 db1Var, qb1 qb1Var, Set set, nn0 nn0Var) {
        this.a = str;
        this.b = jSONObject;
        this.c = jSONObject2;
        this.d = arrayList;
        this.e = db1Var;
        this.f = qb1Var;
        this.g = set;
        this.h = nn0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fo1)) {
            return false;
        }
        fo1 fo1Var = (fo1) obj;
        return defpackage.aa4.e(this.a, fo1Var.a) && defpackage.aa4.e(this.b, fo1Var.b) && defpackage.aa4.e(this.c, fo1Var.c) && defpackage.aa4.e(this.d, fo1Var.d) && defpackage.aa4.e(this.e, fo1Var.e) && defpackage.aa4.e(this.f, fo1Var.f) && defpackage.aa4.e(this.g, fo1Var.g) && defpackage.aa4.e(this.h, fo1Var.h);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        JSONObject jSONObject = this.c;
        int iHashCode2 = (iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
        ArrayList arrayList = this.d;
        return this.h.hashCode() + ((this.g.hashCode() + l4.a((this.e.hashCode() + ((iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0)) * 31)) * 31, 31, this.f.a)) * 31);
    }

    public final String toString() {
        return "DivKitDesign(target=" + this.a + ", card=" + this.b + ", templates=" + this.c + ", images=" + this.d + ", divData=" + this.e + ", divDataTag=" + this.f + ", divAssets=" + this.g + ", designAnalytics=" + this.h + ")";
    }
}
