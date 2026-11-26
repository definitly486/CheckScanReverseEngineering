package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bg5 implements pz3 {
    public final int a;
    public final String b;
    public final boolean c;
    public final a d;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;
        public final boolean d;

        public a(String str, boolean z, boolean z2, boolean z3) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = z3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            StringBuilder sbB = p2.b("Button(title=", this.a, ", registrationRequired=", ", enabled=", this.b);
            sbB.append(this.c);
            sbB.append(", isLoading=");
            sbB.append(this.d);
            sbB.append(")");
            return sbB.toString();
        }
    }

    public bg5(int i, String str, boolean z, a aVar) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bg5)) {
            return false;
        }
        bg5 bg5Var = (bg5) obj;
        return this.a == bg5Var.a && aa4.e(this.b, bg5Var.b) && this.c == bg5Var.c && aa4.e(this.d, bg5Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d;
    }

    public final int hashCode() {
        int iC = tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        return iC + (aVar == null ? 0 : aVar.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "MultiTaskStepViewModel(id=", ", title=", this.b, ", isDone=");
        sbE.append(this.c);
        sbE.append(", button=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}
