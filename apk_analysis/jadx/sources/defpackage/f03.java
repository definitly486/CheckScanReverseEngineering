package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f03 extends s96 {
    public final sp7.b l;
    public final fh8 m;

    public f03(final String str, final int i) {
        super(str, null, i);
        this.l = sp7.b.a;
        this.m = new fh8(new ll3() { // from class: e03
            @Override // defpackage.ll3
            public final Object invoke() {
                int i2 = i;
                mp7[] mp7VarArr = new mp7[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    mp7VarArr[i3] = rp7.f(str + '.' + this.e[i3], eb8.d.a, new mp7[0]);
                }
                return mp7VarArr;
            }
        });
    }

    @Override // defpackage.s96, defpackage.mp7
    public final mp7 d(int i) {
        return ((mp7[]) this.m.getValue())[i];
    }

    @Override // defpackage.s96
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof mp7)) {
            return false;
        }
        mp7 mp7Var = (mp7) obj;
        return mp7Var.getKind() == sp7.b.a && this.a.equals(mp7Var.h()) && aa4.e(m96.a(this), m96.a(mp7Var));
    }

    @Override // defpackage.s96, defpackage.mp7
    public final sp7 getKind() {
        return this.l;
    }

    @Override // defpackage.s96
    public final int hashCode() {
        int iHashCode = this.a.hashCode();
        pp7 pp7Var = new pp7(this);
        int iHashCode2 = 1;
        while (pp7Var.hasNext()) {
            int i = iHashCode2 * 31;
            String str = (String) pp7Var.next();
            iHashCode2 = i + (str != null ? str.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    @Override // defpackage.s96
    public final String toString() {
        return qn1.a0(new qp7(this), ", ", this.a.concat("("), ")", 0, null, 56);
    }
}
