package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public final class bz3 implements f94 {
    public final b a = b.a;
    public volatile ox2 b = ox2.b;
    public volatile a c = a.NONE;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a BASIC;
        public static final a BODY;
        public static final a HEADERS;
        public static final a NONE;

        static {
            a aVar = new a("NONE", 0);
            NONE = aVar;
            a aVar2 = new a("BASIC", 1);
            BASIC = aVar2;
            a aVar3 = new a("HEADERS", 2);
            HEADERS = aVar3;
            a aVar4 = new a("BODY", 3);
            BODY = aVar4;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public interface b {
        public static final cz3 a = new cz3();

        void a(String str);
    }

    public bz3(int i) {
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:75:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:78:0x0213  */
    /* JADX WARN: Code duplicated, block: B:79:0x0217  */
    /* JADX WARN: Code duplicated, block: B:82:0x023d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0246  */
    /* JADX WARN: Code duplicated, block: B:86:0x0258  */
    /* JADX WARN: Code duplicated, block: B:88:0x0261 A[LOOP:1: B:87:0x025f->B:88:0x0261, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x01e7, please report this as an issue */
    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) throws Exception {
        String string;
        boolean z;
        z47 z47VarB;
        long jO;
        String str;
        String strC;
        String strC2;
        jv3 jv3Var;
        int size;
        int i;
        String str2;
        Long lValueOf;
        Charset charsetA;
        Charset charsetA2;
        a aVar = this.c;
        b37 b37Var = ez6Var.e;
        if (aVar == a.NONE) {
            return ez6Var.b(b37Var);
        }
        boolean z2 = true;
        boolean z3 = aVar == a.BODY;
        if (!z3 && aVar != a.HEADERS) {
            z2 = false;
        }
        g37 g37Var = b37Var.d;
        n13 n13Var = ez6Var.d;
        ly6 ly6Var = n13Var != null ? n13Var.f : null;
        StringBuilder sb = new StringBuilder("--> ");
        sb.append(b37Var.b);
        sb.append(' ');
        sb.append(b37Var.a);
        String str3 = " ";
        if (ly6Var != null) {
            StringBuilder sb2 = new StringBuilder(" ");
            ts6 ts6Var = ly6Var.f;
            ts6Var.getClass();
            sb2.append(ts6Var);
            string = sb2.toString();
        } else {
            string = "";
        }
        sb.append(string);
        String string2 = sb.toString();
        if (!z2 && g37Var != null) {
            StringBuilder sbD = fh.d(string2, " (");
            sbD.append(g37Var.a());
            sbD.append("-byte body)");
            string2 = sbD.toString();
        }
        this.a.a(string2);
        try {
            if (z2) {
                jv3 jv3Var2 = b37Var.c;
                if (g37Var != null) {
                    j95 j95VarB = g37Var.b();
                    z = z3;
                    if (j95VarB != null && jv3Var2.a("Content-Type") == null) {
                        this.a.a("Content-Type: " + j95VarB);
                    }
                    if (g37Var.a() != -1 && jv3Var2.a("Content-Length") == null) {
                        this.a.a("Content-Length: " + g37Var.a());
                    }
                } else {
                    z = z3;
                    z2 = z2;
                    str3 = " ";
                }
                int size2 = jv3Var2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    b(jv3Var2, i2);
                }
                if (!z || g37Var == null) {
                    this.a.a("--> END " + b37Var.b);
                } else {
                    String strA = b37Var.c.a("Content-Encoding");
                    if (strA == null || strA.equalsIgnoreCase("identity") || strA.equalsIgnoreCase("gzip")) {
                        bu0 bu0Var = new bu0();
                        g37Var.c(bu0Var);
                        j95 j95VarB2 = g37Var.b();
                        if (j95VarB2 == null || (charsetA2 = j95VarB2.a(StandardCharsets.UTF_8)) == null) {
                            charsetA2 = StandardCharsets.UTF_8;
                            charsetA2.getClass();
                        }
                        this.a.a("");
                        boolean zA = sm1.a(bu0Var);
                        b bVar = this.a;
                        if (zA) {
                            bVar.a(bu0Var.n0(bu0Var.c, charsetA2));
                            this.a.a("--> END " + b37Var.b + " (" + g37Var.a() + "-byte body)");
                        } else {
                            bVar.a("--> END " + b37Var.b + " (binary " + g37Var.a() + "-byte body omitted)");
                        }
                    } else {
                        this.a.a("--> END " + b37Var.b + " (encoded body omitted)");
                    }
                }
                long jNanoTime = System.nanoTime();
                z47VarB = ez6Var.b(b37Var);
                long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
                b57 b57Var = z47VarB.h;
                b57Var.getClass();
                jO = b57Var.o();
                if (jO != -1) {
                    str = jO + "-byte";
                } else {
                    str = "unknown-length";
                }
                b bVar2 = this.a;
                StringBuilder sb3 = new StringBuilder("<-- ");
                sb3.append(z47VarB.e);
                if (z47VarB.d.length() == 0) {
                    strC = "";
                } else {
                    strC = bj.c(str3, z47VarB.d);
                }
                sb3.append(strC);
                sb3.append(' ');
                sb3.append(z47VarB.b.a);
                sb3.append(" (");
                sb3.append(jNanoTime2);
                sb3.append("ms");
                if (z2) {
                    strC2 = "";
                } else {
                    strC2 = me0.c(", ", str, " body");
                }
                sb3.append(strC2);
                sb3.append(')');
                bVar2.a(sb3.toString());
                if (z2) {
                    jv3Var = z47VarB.g;
                    size = jv3Var.size();
                    for (i = 0; i < size; i++) {
                        b(jv3Var, i);
                    }
                    if (!z && az3.a(z47VarB)) {
                        String strA2 = z47VarB.g.a("Content-Encoding");
                        if (strA2 == null || strA2.equalsIgnoreCase("identity")) {
                            str2 = "gzip";
                        } else {
                            str2 = r14;
                            if (!strA2.equalsIgnoreCase(str2)) {
                                this.a.a("<-- END HTTP (encoded body omitted)");
                                return z47VarB;
                            }
                        }
                        wu0 wu0VarL = b57Var.L();
                        wu0VarL.request(Long.MAX_VALUE);
                        bu0 buffer = wu0VarL.getBuffer();
                        if (str2.equalsIgnoreCase(jv3Var.a("Content-Encoding"))) {
                            lValueOf = Long.valueOf(buffer.c);
                            xt3 xt3Var = new xt3(buffer.y());
                            try {
                                buffer = new bu0();
                                buffer.j0(xt3Var);
                                xt3Var.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    m96.c(xt3Var, th);
                                    throw th2;
                                }
                            }
                        } else {
                            lValueOf = null;
                        }
                        j95 j95VarP = b57Var.p();
                        if (j95VarP == null || (charsetA = j95VarP.a(StandardCharsets.UTF_8)) == null) {
                            charsetA = StandardCharsets.UTF_8;
                            charsetA.getClass();
                        }
                        if (!sm1.a(buffer)) {
                            this.a.a("");
                            this.a.a("<-- END HTTP (binary " + buffer.c + "-byte body omitted)");
                            return z47VarB;
                        }
                        if (jO != 0) {
                            this.a.a("");
                            b bVar3 = this.a;
                            bu0 bu0VarY = buffer.y();
                            bVar3.a(bu0VarY.n0(bu0VarY.c, charsetA));
                        }
                        b bVar4 = this.a;
                        long j = buffer.c;
                        if (lValueOf == null) {
                            bVar4.a("<-- END HTTP (" + j + "-byte body)");
                            return z47VarB;
                        }
                        bVar4.a("<-- END HTTP (" + j + "-byte, " + lValueOf + "-gzipped-byte body)");
                        return z47VarB;
                    }
                    this.a.a("<-- END HTTP");
                }
                return z47VarB;
            }
            z = z3;
            z2 = z2;
            str3 = " ";
            z47VarB = ez6Var.b(b37Var);
            long jNanoTime3 = (System.nanoTime() - jNanoTime) / 1000000;
            b57 b57Var2 = z47VarB.h;
            b57Var2.getClass();
            jO = b57Var2.o();
            if (jO != -1) {
                str = jO + "-byte";
            } else {
                str = "unknown-length";
            }
            b bVar5 = this.a;
            StringBuilder sb4 = new StringBuilder("<-- ");
            sb4.append(z47VarB.e);
            if (z47VarB.d.length() == 0) {
                strC = "";
            } else {
                strC = bj.c(str3, z47VarB.d);
            }
            sb4.append(strC);
            sb4.append(' ');
            sb4.append(z47VarB.b.a);
            sb4.append(" (");
            sb4.append(jNanoTime3);
            sb4.append("ms");
            if (z2) {
                strC2 = me0.c(", ", str, " body");
            } else {
                strC2 = "";
            }
            sb4.append(strC2);
            sb4.append(')');
            bVar5.a(sb4.toString());
            if (z2) {
                jv3Var = z47VarB.g;
                size = jv3Var.size();
                while (i < size) {
                    b(jv3Var, i);
                }
                if (!z) {
                }
                this.a.a("<-- END HTTP");
            }
            return z47VarB;
        } catch (Exception e) {
            this.a.a("<-- HTTP FAILED: " + e);
            throw e;
        }
        long jNanoTime4 = System.nanoTime();
    }

    public final void b(jv3 jv3Var, int i) {
        ox2 ox2Var = this.b;
        jv3Var.b(i);
        ox2Var.getClass();
        String strG = jv3Var.g(i);
        this.a.a(jv3Var.b(i) + ": " + strG);
    }
}
