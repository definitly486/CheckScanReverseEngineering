package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class pb3 implements zm2 {
    public k06 b;
    public boolean c;
    public int e;
    public int f;
    public final os4 a = new os4(10);
    public long d = C.TIME_UNSET;

    @Override // yads.zm2
    public final void a(os4 os4Var) {
        if (this.b == null) {
            defpackage.ud.g();
            return;
        }
        if (this.c) {
            int i = os4Var.c - os4Var.b;
            int i2 = this.f;
            if (i2 < 10) {
                int iMin = Math.min(i, 10 - i2);
                System.arraycopy(os4Var.a, os4Var.b, this.a.a, this.f, iMin);
                if (this.f + iMin == 10) {
                    this.a.e(0);
                    if (73 != this.a.k() || 68 != this.a.k() || 51 != this.a.k()) {
                        sv3.d("Id3Reader", "Discarding invalid ID3 tag");
                        this.c = false;
                        return;
                    } else {
                        os4 os4Var2 = this.a;
                        os4Var2.e(os4Var2.b + 3);
                        this.e = this.a.j() + 10;
                    }
                }
            }
            int iMin2 = Math.min(i, this.e - this.f);
            this.b.a(iMin2, os4Var);
            this.f += iMin2;
        }
    }

    @Override // yads.zm2
    public final void b() {
        int i;
        k06 k06Var = this.b;
        if (k06Var == null) {
            defpackage.ud.g();
            return;
        }
        if (this.c && (i = this.e) != 0 && this.f == i) {
            long j = this.d;
            if (j != C.TIME_UNSET) {
                k06Var.a(j, 1, i, 0, null);
            }
            this.c = false;
        }
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 5);
        this.b = k06VarA;
        uz2 uz2Var = new uz2();
        t26Var.b();
        uz2Var.a = t26Var.e;
        uz2Var.k = MimeTypes.APPLICATION_ID3;
        k06VarA.a(new vz2(uz2Var));
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.d = j;
        }
        this.e = 0;
        this.f = 0;
    }

    @Override // yads.zm2
    public final void a() {
        this.c = false;
        this.d = C.TIME_UNSET;
    }
}
