package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vl0 {
    public final String a;
    public int b;
    public long c;
    public final h14 d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ wl0 g;

    public vl0(wl0 wl0Var, String str, int i, h14 h14Var) {
        this.g = wl0Var;
        this.a = str;
        this.b = i;
        this.c = h14Var == null ? -1L : h14Var.d;
        if (h14Var == null || !h14Var.a()) {
            return;
        }
        this.d = h14Var;
    }

    public final boolean a(ne neVar) {
        long j = this.c;
        if (j == -1) {
            return false;
        }
        h14 h14Var = neVar.d;
        if (h14Var == null) {
            return this.b != neVar.c;
        }
        if (h14Var.d > j) {
            return true;
        }
        if (this.d == null) {
            return false;
        }
        int iA = neVar.b.a(h14Var.a);
        int iA2 = neVar.b.a(this.d.a);
        h14 h14Var2 = neVar.d;
        if (h14Var2.d < this.d.d || iA < iA2) {
            return false;
        }
        if (iA > iA2) {
            return true;
        }
        boolean zA = h14Var2.a();
        h14 h14Var3 = neVar.d;
        if (!zA) {
            int i = h14Var3.e;
            return i == -1 || i > this.d.b;
        }
        int i2 = h14Var3.b;
        int i3 = h14Var3.c;
        h14 h14Var4 = this.d;
        int i4 = h14Var4.b;
        return i2 > i4 || (i2 == i4 && i3 > h14Var4.c);
    }
}
