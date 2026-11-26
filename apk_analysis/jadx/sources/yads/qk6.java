package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qk6 implements Comparable {
    public final int b;
    public final mk6 c;

    public qk6(int i, mk6 mk6Var) {
        this.b = i;
        this.c = mk6Var;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.b, ((qk6) obj).b);
    }
}
