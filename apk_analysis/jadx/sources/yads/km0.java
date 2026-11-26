package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class km0 implements Comparable {
    public final boolean b;
    public final boolean c;

    public km0(vz2 vz2Var, int i) {
        this.b = (vz2Var.e & 1) != 0;
        this.c = um0.a(i, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        km0 km0Var = (km0) obj;
        return q40.a(xu.a(this.c, km0Var.c)).a(this.b, km0Var.b).a();
    }
}
