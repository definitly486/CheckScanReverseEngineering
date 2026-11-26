package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class ts {
    public final Object a;
    public final ns b;
    public final r14 c;

    public ts(String str, ns nsVar, r14 r14Var) {
        this.a = str;
        this.b = nsVar;
        this.c = r14Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ts)) {
            return false;
        }
        ts tsVar = (ts) obj;
        ns nsVar = tsVar.b;
        ns nsVar2 = this.b;
        return aa4.e(nsVar2, nsVar) && nsVar2.equals(this.a, tsVar.a) && this.c.equals(tsVar.c);
    }

    public final int hashCode() {
        ns nsVar = this.b;
        return this.c.hashCode() + ((nsVar.hashCode(this.a) + (nsVar.hashCode() * 31)) * 31);
    }
}
