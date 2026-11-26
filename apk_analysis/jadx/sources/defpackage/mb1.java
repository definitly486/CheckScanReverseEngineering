package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mb1 implements pz3 {
    public final String a;
    public final a b;
    public final int c;
    public final boolean d;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final boolean e;

        public a(String str, boolean z, boolean z2, boolean z3, boolean z4) {
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.e = z4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + tg.c(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sbB = p2.b("Button(text=", this.a, ", isEnabled=", ", isLoading=", this.b);
            sbB.append(this.c);
            sbB.append(", isRegistrationRequired=");
            sbB.append(this.d);
            sbB.append(", isButtonVisible=");
            return dh.e(sbB, this.e, ")");
        }
    }

    public mb1(String str, a aVar, int i, boolean z) {
        str.getClass();
        this.a = str;
        this.b = aVar;
        this.c = i;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb1)) {
            return false;
        }
        mb1 mb1Var = (mb1) obj;
        return aa4.e(this.a, mb1Var.a) && this.b.equals(mb1Var.b) && this.c == mb1Var.c && this.d == mb1Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + ej0.b(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, "BlockButton");
    }

    public final String toString() {
        return "CheckboxTaskStepsButtonBlockViewModel(title=" + this.a + ", button=" + this.b + ", subtaskId=" + this.c + ", isCompleted=" + this.d + ")";
    }
}
