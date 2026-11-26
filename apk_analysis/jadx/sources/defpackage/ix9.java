package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ix9 {
    public final fo9 a;
    public boolean b;

    public ix9(fo9 fo9Var, boolean z) {
        this.a = fo9Var;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (obj != null && ix9.class == obj.getClass()) {
            ix9 ix9Var = (ix9) obj;
            if (this.b == ix9Var.b && this.a == ix9Var.a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, Boolean.valueOf(this.b));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectedCard{card=");
        sb.append(this.a);
        sb.append(", isSelected=");
        return sg.d(sb, this.b, '}');
    }
}
