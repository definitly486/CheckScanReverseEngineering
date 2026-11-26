package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class pp9 {
    public static final pp9 d = new pp9(z8a.i, zm9.g);
    public final z8a a;
    public final zm9 b;
    public boolean c = false;

    public pp9(z8a z8aVar, zm9 zm9Var) {
        this.a = z8aVar;
        this.b = zm9Var;
    }

    public final void a(int i, String str) {
        b(str, 1, 4, i, null);
    }

    public final void b(String str, int i, int i2, int i3, String str2) {
        this.a.f.b(this, i, i2, i3, str, str2);
    }

    public final void c(int i) {
        b(null, 1, 3, i, null);
    }

    public final void d(int i, int i2, String str) {
        b(str, i, 1, i2, null);
    }

    public final boolean equals(Object obj) {
        if (obj == null || pp9.class != obj.getClass()) {
            return false;
        }
        pp9 pp9Var = (pp9) obj;
        return Objects.equals(this.a, pp9Var.a) && this.b.equals(pp9Var.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }
}
