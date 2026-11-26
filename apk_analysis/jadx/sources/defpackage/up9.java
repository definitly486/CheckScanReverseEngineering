package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class up9 implements pfa {
    public final int a;
    public final e6a b;

    public up9(int i, e6a e6aVar) {
        this.a = i;
        this.b = e6aVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && up9.class == obj.getClass()) {
            up9 up9Var = (up9) obj;
            if (this.a == up9Var.a && Objects.equals(this.b, up9Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), this.b);
    }
}
