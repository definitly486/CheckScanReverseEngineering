package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class wf8 {
    public final int a;
    public final String b;
    public final ArrayList c;

    public wf8(int i, String str, ArrayList arrayList) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wf8)) {
            return false;
        }
        wf8 wf8Var = (wf8) obj;
        return this.a == wf8Var.a && aa4.e(this.b, wf8Var.b) && this.c.equals(wf8Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SupportSection(id=", ", title=", this.b, ", questions=");
        sbE.append(this.c);
        sbE.append(")");
        return sbE.toString();
    }
}
