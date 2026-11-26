package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fs5 {
    public k06 b;
    public zs2 c;
    public qp4 d;
    public long e;
    public long f;
    public long g;
    public int h;
    public int i;
    public long k;
    public boolean l;
    public boolean m;
    public final op4 a = new op4();
    public ds5 j = new ds5();

    public abstract long a(os4 os4Var);

    public void a(boolean z) {
        if (z) {
            this.j = new ds5();
            this.f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.e = -1L;
        this.g = 0L;
    }

    public abstract boolean a(os4 os4Var, long j, ds5 ds5Var);

    public void a(long j) {
        this.g = j;
    }
}
