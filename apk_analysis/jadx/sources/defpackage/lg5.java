package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class lg5 extends g37 {
    public static final j95 e;
    public static final j95 f;
    public static final byte[] g;
    public static final byte[] h;
    public static final byte[] i;
    public final gx0 a;
    public final List<c> b;
    public final j95 c;
    public long d;

    public static final class a {
        public final gx0 a;
        public j95 b;
        public final ArrayList c;

        public a() {
            String string = UUID.randomUUID().toString();
            string.getClass();
            gx0 gx0Var = gx0.e;
            this.a = gx0.a.c(string);
            this.b = lg5.e;
            this.c = new ArrayList();
        }
    }

    public static final class b {
        public static void a(StringBuilder sb, String str) {
            str.getClass();
            sb.append('\"');
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt == '\"') {
                    sb.append("%22");
                } else {
                    sb.append(cCharAt);
                }
            }
            sb.append('\"');
        }
    }

    public static final class c {
        public final jv3 a;
        public final g37 b;

        public static final class a {
            public static c a(String str, String str2, d37 d37Var) {
                str.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                j95 j95Var = lg5.e;
                b.a(sb, str);
                if (str2 != null) {
                    sb.append("; filename=");
                    b.a(sb, str2);
                }
                String string = sb.toString();
                jv3.a aVar = new jv3.a();
                aVar.d("Content-Disposition", string);
                jv3 jv3VarE = aVar.e();
                if (jv3VarE.a("Content-Type") != null) {
                    fg.c("Unexpected header: Content-Type");
                    return null;
                }
                if (jv3VarE.a("Content-Length") == null) {
                    return new c(jv3VarE, d37Var);
                }
                fg.c("Unexpected header: Content-Length");
                return null;
            }
        }

        public c(jv3 jv3Var, g37 g37Var) {
            this.a = jv3Var;
            this.b = g37Var;
        }
    }

    static {
        Pattern pattern = j95.e;
        e = j95.a.a("multipart/mixed");
        j95.a.a("multipart/alternative");
        j95.a.a("multipart/digest");
        j95.a.a("multipart/parallel");
        f = j95.a.a(ShareTarget.ENCODING_TYPE_MULTIPART);
        g = new byte[]{58, 32};
        h = new byte[]{13, 10};
        i = new byte[]{45, 45};
    }

    public lg5(gx0 gx0Var, j95 j95Var, List<c> list) {
        gx0Var.getClass();
        j95Var.getClass();
        this.a = gx0Var;
        this.b = list;
        Pattern pattern = j95.e;
        this.c = j95.a.a(j95Var + "; boundary=" + gx0Var.x());
        this.d = -1L;
    }

    @Override // defpackage.g37
    public final long a() throws EOFException {
        long j = this.d;
        if (j != -1) {
            return j;
        }
        long jD = d(null, true);
        this.d = jD;
        return jD;
    }

    @Override // defpackage.g37
    public final j95 b() {
        return this.c;
    }

    @Override // defpackage.g37
    public final void c(vu0 vu0Var) throws EOFException {
        d(vu0Var, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long d(vu0 vu0Var, boolean z) throws EOFException {
        bu0 bu0Var;
        vu0 bu0Var2;
        if (z) {
            bu0Var2 = new bu0();
            bu0Var = bu0Var2;
        } else {
            bu0Var = 0;
            bu0Var2 = vu0Var;
        }
        List<c> list = this.b;
        int size = list.size();
        long j = 0;
        int i2 = 0;
        while (true) {
            gx0 gx0Var = this.a;
            byte[] bArr = i;
            byte[] bArr2 = h;
            if (i2 >= size) {
                bu0Var2.getClass();
                bu0Var2.write(bArr);
                bu0Var2.d(gx0Var);
                bu0Var2.write(bArr);
                bu0Var2.write(bArr2);
                if (!z) {
                    return j;
                }
                bu0Var.getClass();
                long j2 = j + bu0Var.c;
                bu0Var.p();
                return j2;
            }
            c cVar = list.get(i2);
            jv3 jv3Var = cVar.a;
            g37 g37Var = cVar.b;
            bu0Var2.getClass();
            bu0Var2.write(bArr);
            bu0Var2.d(gx0Var);
            bu0Var2.write(bArr2);
            int size2 = jv3Var.size();
            for (int i3 = 0; i3 < size2; i3++) {
                bu0Var2.l(jv3Var.b(i3)).write(g).l(jv3Var.g(i3)).write(bArr2);
            }
            j95 j95VarB = g37Var.b();
            if (j95VarB != null) {
                bu0Var2.l("Content-Type: ").l(j95VarB.a).write(bArr2);
            }
            long jA = g37Var.a();
            if (jA != -1) {
                bu0Var2.l("Content-Length: ").h(jA).write(bArr2);
            } else if (z) {
                bu0Var.getClass();
                bu0Var.p();
                return -1L;
            }
            bu0Var2.write(bArr2);
            if (z) {
                j += jA;
            } else {
                g37Var.c(bu0Var2);
            }
            bu0Var2.write(bArr2);
            i2++;
        }
    }
}
