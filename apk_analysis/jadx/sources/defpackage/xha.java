package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class xha {
    public final String a;
    public int b;
    public int c;
    public Object d;

    public xha(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            xha xhaVar = (xha) obj;
            if (this.b == xhaVar.b && this.c == xhaVar.c && this.a.equals(xhaVar.a) && Objects.equals(this.d, xhaVar.d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.a);
    }
}
