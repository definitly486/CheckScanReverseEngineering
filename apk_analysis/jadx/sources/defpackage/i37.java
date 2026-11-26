package defpackage;

import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class i37 {
    public static final char[] l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final Pattern m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    public final String a;
    public final fz3 b;
    public String c;
    public fz3.a d;
    public final b37.a e = new b37.a();
    public final jv3.a f;
    public j95 g;
    public final boolean h;
    public final lg5.a i;
    public final mi3.a j;
    public g37 k;

    public static class a extends g37 {
        public final g37 a;
        public final j95 b;

        public a(g37 g37Var, j95 j95Var) {
            this.a = g37Var;
            this.b = j95Var;
        }

        @Override // defpackage.g37
        public final long a() {
            return this.a.a();
        }

        @Override // defpackage.g37
        public final j95 b() {
            return this.b;
        }

        @Override // defpackage.g37
        public final void c(vu0 vu0Var) {
            this.a.c(vu0Var);
        }
    }

    public i37(String str, fz3 fz3Var, String str2, jv3 jv3Var, j95 j95Var, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = fz3Var;
        this.c = str2;
        this.g = j95Var;
        this.h = z;
        if (jv3Var != null) {
            this.f = jv3Var.d();
        } else {
            this.f = new jv3.a();
        }
        if (z2) {
            this.j = new mi3.a();
            return;
        }
        if (z3) {
            lg5.a aVar = new lg5.a();
            this.i = aVar;
            j95 j95Var2 = lg5.f;
            j95Var2.getClass();
            if (j95Var2.b.equals("multipart")) {
                aVar.b = j95Var2;
            } else {
                eg.d(j95Var2, "multipart != ");
                throw null;
            }
        }
    }

    public final void a(String str, String str2, boolean z) {
        mi3.a aVar = this.j;
        if (z) {
            aVar.getClass();
            str.getClass();
            aVar.a.add(fz3.b.a(str, 0, 0, 83, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
            aVar.b.add(fz3.b.a(str2, 0, 0, 83, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
            return;
        }
        aVar.getClass();
        str.getClass();
        aVar.a.add(fz3.b.a(str, 0, 0, 91, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
        aVar.b.add(fz3.b.a(str2, 0, 0, 91, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
    }

    public final void b(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                Pattern pattern = j95.e;
                this.g = j95.a.a(str2);
                return;
            } catch (IllegalArgumentException e) {
                cc.e(bj.c("Malformed content type: ", str2), e);
                return;
            }
        }
        jv3.a aVar = this.f;
        if (z) {
            aVar.d(str, str2);
        } else {
            aVar.a(str, str2);
        }
    }

    public final void c(jv3 jv3Var, g37 g37Var) {
        lg5.a aVar = this.i;
        aVar.getClass();
        g37Var.getClass();
        if (jv3Var.a("Content-Type") != null) {
            fg.c("Unexpected header: Content-Type");
        } else if (jv3Var.a("Content-Length") != null) {
            fg.c("Unexpected header: Content-Length");
        } else {
            aVar.c.add(new lg5.c(jv3Var, g37Var));
        }
    }

    public final void d(String str, String str2, boolean z) {
        fz3.a aVar;
        String str3 = this.c;
        if (str3 != null) {
            fz3 fz3Var = this.b;
            fz3Var.getClass();
            try {
                aVar = new fz3.a();
                aVar.c(fz3Var, str3);
            } catch (IllegalArgumentException unused) {
                aVar = null;
            }
            this.d = aVar;
            if (aVar == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(fz3Var);
                cg.g(sb, ", Relative: ", this.c);
                return;
            }
            this.c = null;
        }
        fz3.a aVar2 = this.d;
        if (z) {
            aVar2.getClass();
            str.getClass();
            ArrayList arrayList = aVar2.g;
            if (arrayList == null) {
                arrayList = new ArrayList();
                aVar2.g = arrayList;
            }
            arrayList.add(fz3.b.a(str, 0, 0, 211, " \"'<>#&="));
            ArrayList arrayList2 = aVar2.g;
            arrayList2.getClass();
            arrayList2.add(str2 != null ? fz3.b.a(str2, 0, 0, 211, " \"'<>#&=") : null);
            return;
        }
        aVar2.getClass();
        str.getClass();
        ArrayList arrayList3 = aVar2.g;
        if (arrayList3 == null) {
            arrayList3 = new ArrayList();
            aVar2.g = arrayList3;
        }
        arrayList3.add(fz3.b.a(str, 0, 0, 219, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"));
        ArrayList arrayList4 = aVar2.g;
        arrayList4.getClass();
        arrayList4.add(str2 != null ? fz3.b.a(str2, 0, 0, 219, " !\"#$&'(),/:;<=>?@[]\\^`{|}~") : null);
    }
}
