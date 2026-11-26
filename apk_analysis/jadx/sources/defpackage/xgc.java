package defpackage;

import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class xgc {
    public final int[] a;
    public final wgc b;
    public wgc c;
    public int d;
    public int e;
    public int f;

    public xgc(int[] iArr) {
        this.a = iArr;
        wgc wgcVar = new wgc(-1, -1);
        this.b = wgcVar;
        this.c = wgcVar;
    }

    public final void a() {
        if (this.e == 0) {
            return;
        }
        HashMap map = this.c.d;
        int i = this.d;
        int[] iArr = this.a;
        wgc wgcVar = (wgc) map.get(Integer.valueOf(iArr[i]));
        while (true) {
            int i2 = (wgcVar.b - wgcVar.a) + 1;
            int i3 = this.e;
            if (i2 > i3) {
                return;
            }
            int i4 = this.d + i2;
            this.d = i4;
            this.c = wgcVar;
            int i5 = i3 - i2;
            this.e = i5;
            if (i5 > 0) {
                wgcVar = (wgc) wgcVar.d.get(Integer.valueOf(iArr[i4]));
            }
        }
    }

    public final void b() {
        wgc wgcVar = this.c.c;
        if (wgcVar != null) {
            this.c = wgcVar;
        } else {
            this.c = this.b;
            int i = this.e;
            if (i > 0) {
                this.e = i - 1;
            }
            if (this.f > 0) {
                this.d++;
            }
        }
        a();
    }

    public final void c(wgc wgcVar, StringBuilder sb) {
        for (wgc wgcVar2 : wgcVar.d.values()) {
            sb.append("  ");
            sb.append(wgcVar);
            sb.append(" -> ");
            sb.append(wgcVar2);
            sb.append(" [label=\"");
            int i = wgcVar2.a;
            int i2 = wgcVar2.b + 1;
            int[] iArr = this.a;
            sb.append(Arrays.toString(Arrays.copyOfRange(iArr, i, Math.min(iArr.length, i2))));
            sb.append("\"]\n");
            c(wgcVar2, sb);
        }
    }

    public final boolean d(int i, int i2, int i3, int i4) {
        if (i < 0 || i3 < 0) {
            return false;
        }
        int[] iArr = this.a;
        int length = iArr.length;
        int iMin = Math.min(length, i2);
        if (iMin - i != Math.min(length, i4) - i3) {
            return false;
        }
        for (int i5 = i; i5 <= iMin; i5++) {
            if (iArr[i5] != iArr[(i3 + i5) - i]) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("digraph {\n");
        c(this.b, sb);
        sb.append("}");
        return sb.toString();
    }
}
