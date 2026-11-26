package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class jw4 implements kv {
    public final Object b;
    public final int c;
    public final p04 d;
    public final Object e;
    public final int f;
    public final long g;
    public final long h;
    public final int i;
    public final int j;

    public jw4(Object obj, int i, p04 p04Var, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.b = obj;
        this.c = i;
        this.d = p04Var;
        this.e = obj2;
        this.f = i2;
        this.g = j;
        this.h = j2;
        this.i = i3;
        this.j = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && jw4.class == obj.getClass()) {
            jw4 jw4Var = (jw4) obj;
            if (this.c == jw4Var.c && this.f == jw4Var.f && this.g == jw4Var.g && this.h == jw4Var.h && this.i == jw4Var.i && this.j == jw4Var.j && ep4.a(this.b, jw4Var.b) && ep4.a(this.e, jw4Var.e) && ep4.a(this.d, jw4Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, Integer.valueOf(this.c), this.d, this.e, Integer.valueOf(this.f), Long.valueOf(this.g), Long.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j)});
    }
}
