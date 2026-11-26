package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rm2 implements zm2 {
    public final List a;
    public final k06[] b;
    public boolean c;
    public int d;
    public int e;
    public long f = C.TIME_UNSET;

    public rm2(List list) {
        this.a = list;
        this.b = new k06[list.size()];
    }

    @Override // yads.zm2
    public final void a(os4 os4Var) {
        boolean z;
        boolean z2;
        if (this.c) {
            int i = this.d;
            if (i == 2) {
                if (os4Var.c - os4Var.b == 0) {
                    z2 = false;
                } else {
                    if (os4Var.k() != 32) {
                        this.c = false;
                    }
                    i = this.d - 1;
                    this.d = i;
                    z2 = this.c;
                }
                if (!z2) {
                    return;
                }
            }
            if (i == 1) {
                if (os4Var.c - os4Var.b == 0) {
                    z = false;
                } else {
                    if (os4Var.k() != 0) {
                        this.c = false;
                    }
                    this.d--;
                    z = this.c;
                }
                if (!z) {
                    return;
                }
            }
            int i2 = os4Var.b;
            int i3 = os4Var.c - i2;
            for (k06 k06Var : this.b) {
                os4Var.e(i2);
                k06Var.a(i3, os4Var);
            }
            this.e += i3;
        }
    }

    @Override // yads.zm2
    public final void b() {
        if (this.c) {
            if (this.f != C.TIME_UNSET) {
                for (k06 k06Var : this.b) {
                    k06Var.a(this.f, 1, this.e, 0, null);
                }
            }
            this.c = false;
        }
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        for (int i = 0; i < this.b.length; i++) {
            r26 r26Var = (r26) this.a.get(i);
            t26Var.a();
            t26Var.b();
            k06 k06VarA = zs2Var.a(t26Var.d, 3);
            uz2 uz2Var = new uz2();
            t26Var.b();
            uz2Var.a = t26Var.e;
            uz2Var.k = MimeTypes.APPLICATION_DVBSUBS;
            uz2Var.m = Collections.singletonList(r26Var.b);
            uz2Var.c = r26Var.a;
            k06VarA.a(new vz2(uz2Var));
            this.b[i] = k06VarA;
        }
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.f = j;
        }
        this.e = 0;
        this.d = 2;
    }

    @Override // yads.zm2
    public final void a() {
        this.c = false;
        this.f = C.TIME_UNSET;
    }
}
