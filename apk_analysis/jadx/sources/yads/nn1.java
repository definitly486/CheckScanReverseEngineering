package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class nn1 implements rp {
    public final String a;
    public final fo1 b;
    public final ArrayList c;

    public nn1(String str, fo1 fo1Var, ArrayList arrayList) {
        this.a = str;
        this.b = fo1Var;
        this.c = arrayList;
    }

    @Override // yads.u0
    public final String a() {
        return this.a;
    }

    @Override // yads.rp
    public final List b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nn1)) {
            return false;
        }
        nn1 nn1Var = (nn1) obj;
        return defpackage.aa4.e(this.a, nn1Var.a) && defpackage.aa4.e(this.b, nn1Var.b) && defpackage.aa4.e(this.c, nn1Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DivKitAdtuneAction(actionType=" + this.a + ", design=" + this.b + ", trackingUrls=" + this.c + ")";
    }
}
