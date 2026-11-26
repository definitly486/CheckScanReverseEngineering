package yads;

import androidx.media3.common.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ki5 {
    public final List a;
    public final k06[] b;

    public ki5(List list) {
        this.a = list;
        this.b = new k06[list.size()];
    }

    public final void a(zs2 zs2Var, t26 t26Var) {
        for (int i = 0; i < this.b.length; i++) {
            t26Var.a();
            t26Var.b();
            k06 k06VarA = zs2Var.a(t26Var.d, 3);
            vz2 vz2Var = (vz2) this.a.get(i);
            String str = vz2Var.m;
            zj.a("Invalid closed caption mime type provided: " + str, MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str));
            String str2 = vz2Var.b;
            if (str2 == null) {
                t26Var.b();
                str2 = t26Var.e;
            }
            uz2 uz2Var = new uz2();
            uz2Var.a = str2;
            uz2Var.k = str;
            uz2Var.d = vz2Var.e;
            uz2Var.c = vz2Var.d;
            uz2Var.C = vz2Var.E;
            uz2Var.m = vz2Var.o;
            k06VarA.a(new vz2(uz2Var));
            this.b[i] = k06VarA;
        }
    }
}
