package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ai5 extends zh5 {
    public final List j;

    public ai5(y35 y35Var, long j, long j2, long j3, long j4, List list, long j5, List list2, long j6, long j7) {
        super(y35Var, j, j2, j3, j4, list, j5, j6, j7);
        this.j = list2;
    }

    @Override // yads.zh5
    public final y35 a(m75 m75Var, long j) {
        return (y35) this.j.get((int) (j - this.d));
    }

    @Override // yads.zh5
    public final boolean a() {
        return true;
    }

    @Override // yads.zh5
    public final long a(long j) {
        return this.j.size();
    }
}
