package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class n6 {
    public final List a;
    public final int b;
    public final int c;

    public n6(List list, int i, int i2) {
        this.a = list;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n6)) {
            return false;
        }
        n6 n6Var = (n6) obj;
        return defpackage.aa4.e(this.a, n6Var.a) && this.b == n6Var.b && this.c == n6Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + i96.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        List list = this.a;
        int i = this.b;
        int i2 = this.c;
        StringBuilder sb = new StringBuilder("AdPod(items=");
        sb.append(list);
        sb.append(", closableAdPosition=");
        sb.append(i);
        sb.append(", rewardAdPosition=");
        return defpackage.l2.e(sb, ")", i2);
    }
}
