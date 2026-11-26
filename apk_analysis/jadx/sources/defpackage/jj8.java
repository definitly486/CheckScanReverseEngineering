package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class jj8 implements Cloneable {
    public final String b;
    public String c;
    public final String d;
    public int e = 0;

    public jj8(String str, String str2, String str3) {
        this.c = str;
        this.d = str2;
        this.b = str3;
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final jj8 clone() {
        try {
            return (jj8) super.clone();
        } catch (CloneNotSupportedException e) {
            ti0.f(e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jj8)) {
            return false;
        }
        jj8 jj8Var = (jj8) obj;
        return Objects.equals(this.c, jj8Var.c) && Objects.equals(this.b, jj8Var.b) && Objects.equals(this.d, jj8Var.d) && this.e == jj8Var.e;
    }

    public final boolean f(int i) {
        return (this.e & i) != 0;
    }

    public final boolean h() {
        return (this.e & 2) != 0;
    }

    public final int hashCode() {
        return Objects.hash(this.c, this.b);
    }

    public final boolean i() {
        int i = this.e;
        return ((i & 16) == 0 && (i & 2) == 0) ? false : true;
    }

    public final void j(int i) {
        this.e = i | this.e | 1;
    }

    public final kx8 k() {
        if (f(128)) {
            return kx8.Rcdata;
        }
        if (f(256)) {
            return kx8.Rawtext;
        }
        return null;
    }

    public final String toString() {
        return this.c;
    }
}
