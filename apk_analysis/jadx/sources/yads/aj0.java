package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class aj0 {
    public int a;
    public int b;
    public int c = 0;
    public ee[] d = new ee[100];

    public final synchronized ee a() {
        ee eeVar;
        try {
            int i = this.b + 1;
            this.b = i;
            int i2 = this.c;
            if (i2 > 0) {
                ee[] eeVarArr = this.d;
                int i3 = i2 - 1;
                this.c = i3;
                eeVar = eeVarArr[i3];
                eeVar.getClass();
                this.d[this.c] = null;
            } else {
                ee eeVar2 = new ee(new byte[65536], 0);
                ee[] eeVarArr2 = this.d;
                if (i > eeVarArr2.length) {
                    this.d = (ee[]) Arrays.copyOf(eeVarArr2, eeVarArr2.length * 2);
                }
                eeVar = eeVar2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return eeVar;
    }

    public final synchronized void b() {
        int i = this.a;
        int i2 = u56.a;
        int iMax = Math.max(0, ((i + 65535) / 65536) - this.b);
        int i3 = this.c;
        if (iMax >= i3) {
            return;
        }
        Arrays.fill(this.d, iMax, i3, (Object) null);
        this.c = iMax;
    }

    public final synchronized void a(int i) {
        boolean z = i < this.a;
        this.a = i;
        if (z) {
            b();
        }
    }
}
