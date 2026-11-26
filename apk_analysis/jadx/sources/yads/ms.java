package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class ms {
    public final String a;
    public final String b;
    public final int c;
    public final int d;

    public ms(int i, int i2, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ms)) {
            return false;
        }
        ms msVar = (ms) obj;
        return this.c == msVar.c && this.d == msVar.d && ep4.a(this.a, msVar.a) && ep4.a(this.b, msVar.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }
}
