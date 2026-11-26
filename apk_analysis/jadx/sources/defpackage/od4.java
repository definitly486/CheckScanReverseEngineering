package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class od4 {
    public final fc4 a;
    public Object[] b = new Object[8];
    public int[] c;
    public int d;

    public static final class a {
        public static final a a = new a();
    }

    public static final class b {
        public static final b a = new b();
    }

    public od4(fc4 fc4Var) {
        this.a = fc4Var;
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.c = iArr;
        this.d = -1;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.d + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = this.b[i2];
            if (obj instanceof mp7) {
                mp7 mp7Var = (mp7) obj;
                boolean zE = aa4.e(mp7Var.getKind(), eb8.b.a);
                int[] iArr = this.c;
                if (!zE) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(mp7Var.f(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(this.c[i2]);
                    sb.append("]");
                }
            } else if (obj == a.a) {
                sb.append("[<debug info disabled>]");
            } else if (obj != b.a) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public final void b() {
        int i = this.d * 2;
        this.b = Arrays.copyOf(this.b, i);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
        }
        aq5.n(0, 0, 14, this.c, iArr);
        this.c = iArr;
    }

    public final String toString() {
        return a();
    }
}
