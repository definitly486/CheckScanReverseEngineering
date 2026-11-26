package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fn implements sh5 {
    public final long a;
    public final /* synthetic */ hn b;

    public fn(hn hnVar, long j) {
        this.b = hnVar;
        this.a = j;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        qh5 qh5VarB = this.b.g[0].b(j);
        int i = 1;
        while (true) {
            hz[] hzVarArr = this.b.g;
            if (i >= hzVarArr.length) {
                return qh5VarB;
            }
            qh5 qh5VarB2 = hzVarArr[i].b(j);
            if (qh5VarB2.a.b < qh5VarB.a.b) {
                qh5VarB = qh5VarB2;
            }
            i++;
        }
    }

    @Override // yads.sh5
    public final long c() {
        return this.a;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
