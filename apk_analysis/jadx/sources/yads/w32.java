package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class w32 {
    public final List a;
    public final ArrayList b;

    public w32(List list, ArrayList arrayList) {
        this.a = list;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w32)) {
            return false;
        }
        w32 w32Var = (w32) obj;
        return defpackage.aa4.e(this.a, w32Var.a) && defpackage.aa4.e(this.b, w32Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "LoadDataResult(restoredData=" + this.a + ", errors=" + this.b + ")";
    }
}
