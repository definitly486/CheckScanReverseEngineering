package defpackage;

import androidx.compose.material3.internal.CalendarModelKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.ProxyConfig;
import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import lx0.d;
import okhttp3.b;

/* JADX INFO: loaded from: classes5.dex */
public final class px0 implements f94 {
    public final lx0 a;

    public static final class a {
        public static boolean a(String str) {
            return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
        }

        public static z47 b(z47 z47Var) {
            if ((z47Var != null ? z47Var.h : null) == null) {
                return z47Var;
            }
            z47.a aVarP = z47Var.p();
            aVarP.g = null;
            return aVarP.a();
        }
    }

    public px0(lx0 lx0Var) {
        this.a = lx0Var;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0256  */
    /* JADX WARN: Code duplicated, block: B:106:0x025e  */
    /* JADX WARN: Code duplicated, block: B:109:0x026c  */
    /* JADX WARN: Code duplicated, block: B:110:0x0272  */
    /* JADX WARN: Code duplicated, block: B:116:0x0287  */
    /* JADX WARN: Code duplicated, block: B:119:0x028d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0295  */
    /* JADX WARN: Code duplicated, block: B:123:0x029d  */
    /* JADX WARN: Code duplicated, block: B:132:0x02cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:134:0x02d4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:135:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:137:0x02db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:140:0x0302  */
    /* JADX WARN: Code duplicated, block: B:150:0x032c  */
    /* JADX WARN: Code duplicated, block: B:266:0x055b  */
    /* JADX WARN: Code duplicated, block: B:268:0x0595  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e1  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        z47 z47VarA;
        int i;
        long j;
        long time;
        Date dateA;
        Date dateA2;
        Date dateA3;
        String str;
        String str2;
        String str3;
        ux0 ux0Var;
        long millis;
        long time2;
        String string;
        int i2;
        int i3;
        long millis2;
        String str4;
        String str5;
        ux0 ux0Var2;
        long j2;
        z47.a aVarP;
        int i4;
        lx0.d dVar;
        b57 b57Var;
        un2.a aVarO;
        un2.a aVarO2;
        b57 b57Var2;
        jy6 jy6Var = ez6Var.a;
        lx0 lx0Var = this.a;
        if (lx0Var != null) {
            b37 b37Var = ez6Var.e;
            b37Var.getClass();
            fz3 fz3Var = b37Var.a;
            try {
                un2.c cVarP = lx0Var.b.p(lx0.b.a(fz3Var));
                if (cVarP == null) {
                    z47VarA = null;
                } else {
                    try {
                        lx0.c cVar = new lx0.c((v48) cVarP.d.get(0));
                        jv3 jv3Var = cVar.b;
                        String str6 = cVar.c;
                        fz3 fz3Var2 = cVar.a;
                        jv3 jv3Var2 = cVar.g;
                        String strA = jv3Var2.a("Content-Type");
                        String strA2 = jv3Var2.a("Content-Length");
                        b37.a aVar = new b37.a();
                        fz3Var2.getClass();
                        aVar.a = fz3Var2;
                        aVar.c(str6, null);
                        jv3Var.getClass();
                        aVar.c = jv3Var.d();
                        b37 b37VarA = aVar.a();
                        z47.a aVar2 = new z47.a();
                        aVar2.a = b37VarA;
                        ts6 ts6Var = cVar.d;
                        ts6Var.getClass();
                        aVar2.b = ts6Var;
                        aVar2.c = cVar.e;
                        String str7 = cVar.f;
                        str7.getClass();
                        aVar2.d = str7;
                        aVar2.f = jv3Var2.d();
                        aVar2.g = new lx0.a(cVarP, strA, strA2);
                        aVar2.e = cVar.h;
                        aVar2.k = cVar.i;
                        aVar2.l = cVar.j;
                        z47VarA = aVar2.a();
                        if (fz3Var2.equals(fz3Var) && str6.equals(b37Var.b)) {
                            Set setC = lx0.b.c(z47VarA.g);
                            if (!(setC instanceof Collection) || !setC.isEmpty()) {
                                Iterator it = setC.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        String str8 = (String) it.next();
                                        if (!jv3Var.h(str8).equals(b37Var.c.h(str8))) {
                                        }
                                    }
                                }
                            }
                        }
                        b57 b57Var3 = z47VarA.h;
                        if (b57Var3 != null) {
                            gb9.d(b57Var3);
                        }
                    } catch (IOException unused) {
                        gb9.d(cVarP);
                    }
                    z47VarA = null;
                }
            } catch (IOException unused2) {
            }
        } else {
            z47VarA = null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        b37 b37Var2 = ez6Var.e;
        b37Var2.getClass();
        if (z47VarA != null) {
            j = z47VarA.l;
            time = z47VarA.m;
            jv3 jv3Var3 = z47VarA.g;
            int size = jv3Var3.size();
            dateA = null;
            dateA2 = null;
            dateA3 = null;
            str = null;
            str2 = null;
            str3 = null;
            int i5 = 0;
            int iX = -1;
            while (i5 < size) {
                String strB = jv3Var3.b(i5);
                String strG = jv3Var3.g(i5);
                long j3 = jCurrentTimeMillis;
                if (ra8.v(strB, "Date", true)) {
                    dateA3 = pc2.a(strG);
                    str3 = strG;
                } else if (ra8.v(strB, "Expires", true)) {
                    dateA = pc2.a(strG);
                } else if (ra8.v(strB, "Last-Modified", true)) {
                    dateA2 = pc2.a(strG);
                    str2 = strG;
                } else if (ra8.v(strB, "ETag", true)) {
                    str = strG;
                } else if (ra8.v(strB, "Age", true)) {
                    iX = gb9.x(-1, strG);
                }
                i5++;
                jCurrentTimeMillis = j3;
            }
            i = iX;
        } else {
            i = -1;
            j = 0;
            time = 0;
            dateA = null;
            dateA2 = null;
            dateA3 = null;
            str = null;
            str2 = null;
            str3 = null;
        }
        long j4 = jCurrentTimeMillis;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        if (z47VarA == null) {
            ux0Var = new ux0(b37Var2, null);
        } else {
            fz3 fz3Var3 = b37Var2.a;
            jv3 jv3Var4 = b37Var2.c;
            if (!(fz3Var3.j && z47VarA.f == null) && ux0.a.a(b37Var2, z47VarA)) {
                mx0 mx0VarA = b37Var2.f;
                if (mx0VarA == null) {
                    int i6 = mx0.n;
                    mx0VarA = mx0.b.a(b37Var2.c);
                    b37Var2.f = mx0VarA;
                }
                if (!mx0VarA.a && jv3Var4.a("If-Modified-Since") == null && jv3Var4.a("If-None-Match") == null) {
                    mx0 mx0VarM = z47VarA.m();
                    long jMax = dateA3 != null ? Math.max(0L, time - dateA3.getTime()) : 0L;
                    if (i != -1) {
                        jMax = Math.max(jMax, timeUnit.toMillis(i));
                    }
                    long j5 = jMax + (time - j) + (j4 - time);
                    int i7 = z47VarA.m().c;
                    if (i7 != -1) {
                        time2 = timeUnit.toMillis(i7);
                    } else {
                        if (dateA != null) {
                            if (dateA3 != null) {
                                time = dateA3.getTime();
                            }
                            time2 = dateA.getTime() - time;
                            if (time2 <= 0) {
                                time2 = 0;
                            }
                        } else if (dateA2 == null) {
                            millis = 0;
                            time2 = millis;
                        } else {
                            List<String> list = z47VarA.b.a.g;
                            if (list == null) {
                                string = null;
                            } else {
                                StringBuilder sb = new StringBuilder();
                                fz3.b.e(list, sb);
                                string = sb.toString();
                            }
                            if (string == null) {
                                long time3 = (dateA3 != null ? dateA3.getTime() : j) - dateA2.getTime();
                                millis = 0;
                                if (time3 > 0) {
                                    time2 = time3 / 10;
                                }
                            } else {
                                millis = 0;
                            }
                            time2 = millis;
                        }
                        i2 = mx0VarA.c;
                        if (i2 != -1) {
                            time2 = Math.min(time2, timeUnit.toMillis(i2));
                        }
                        i3 = mx0VarA.i;
                        if (i3 != -1) {
                            millis2 = timeUnit.toMillis(i3);
                        } else {
                            millis2 = millis;
                        }
                        if (mx0VarM.g && (i4 = mx0VarA.h) != -1) {
                            millis = timeUnit.toMillis(i4);
                        }
                        if (mx0VarM.a) {
                            if (str != null) {
                                str5 = "If-None-Match";
                                str4 = str;
                            } else {
                                if (dateA2 != null) {
                                    str4 = str2;
                                } else if (dateA3 != null) {
                                    str4 = str3;
                                } else {
                                    ux0Var = new ux0(b37Var2, null);
                                }
                                str5 = "If-Modified-Since";
                            }
                            jv3.a aVarD = jv3Var4.d();
                            str4.getClass();
                            aVarD.c(str5, str4);
                            b37.a aVarA = b37Var2.a();
                            aVarA.c = aVarD.e().d();
                            ux0Var2 = new ux0(aVarA.a(), z47VarA);
                            ux0Var = ux0Var2;
                        } else {
                            j2 = j5 + millis2;
                            if (j2 < time2 + millis) {
                                aVarP = z47VarA.p();
                                if (j2 >= time2) {
                                    aVarP.f.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                                }
                                if (j5 > CalendarModelKt.MillisecondsIn24Hours && z47VarA.m().c == -1 && dateA == null) {
                                    aVarP.f.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                }
                                ux0Var2 = new ux0(null, aVarP.a());
                            } else {
                                if (str != null) {
                                    str5 = "If-None-Match";
                                    str4 = str;
                                } else {
                                    if (dateA2 != null) {
                                        str4 = str2;
                                    } else if (dateA3 != null) {
                                        str4 = str3;
                                    } else {
                                        ux0Var = new ux0(b37Var2, null);
                                    }
                                    str5 = "If-Modified-Since";
                                }
                                jv3.a aVarD2 = jv3Var4.d();
                                str4.getClass();
                                aVarD2.c(str5, str4);
                                b37.a aVarA2 = b37Var2.a();
                                aVarA2.c = aVarD2.e().d();
                                ux0Var2 = new ux0(aVarA2.a(), z47VarA);
                            }
                            ux0Var = ux0Var2;
                        }
                    }
                    millis = 0;
                    i2 = mx0VarA.c;
                    if (i2 != -1) {
                        time2 = Math.min(time2, timeUnit.toMillis(i2));
                    }
                    i3 = mx0VarA.i;
                    if (i3 != -1) {
                        millis2 = timeUnit.toMillis(i3);
                    } else {
                        millis2 = millis;
                    }
                    if (mx0VarM.g) {
                    }
                    if (mx0VarM.a) {
                        j2 = j5 + millis2;
                        if (j2 < time2 + millis) {
                            aVarP = z47VarA.p();
                            if (j2 >= time2) {
                                aVarP.f.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                            }
                            if (j5 > CalendarModelKt.MillisecondsIn24Hours) {
                                aVarP.f.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                            }
                            ux0Var2 = new ux0(null, aVarP.a());
                        } else {
                            if (str != null) {
                                str5 = "If-None-Match";
                                str4 = str;
                            } else {
                                if (dateA2 != null) {
                                    str4 = str2;
                                } else if (dateA3 != null) {
                                    str4 = str3;
                                } else {
                                    ux0Var = new ux0(b37Var2, null);
                                }
                                str5 = "If-Modified-Since";
                            }
                            jv3.a aVarD3 = jv3Var4.d();
                            str4.getClass();
                            aVarD3.c(str5, str4);
                            b37.a aVarA3 = b37Var2.a();
                            aVarA3.c = aVarD3.e().d();
                            ux0Var2 = new ux0(aVarA3.a(), z47VarA);
                        }
                        ux0Var = ux0Var2;
                    } else {
                        if (str != null) {
                            str5 = "If-None-Match";
                            str4 = str;
                        } else {
                            if (dateA2 != null) {
                                str4 = str2;
                            } else if (dateA3 != null) {
                                str4 = str3;
                            } else {
                                ux0Var = new ux0(b37Var2, null);
                            }
                            str5 = "If-Modified-Since";
                        }
                        jv3.a aVarD4 = jv3Var4.d();
                        str4.getClass();
                        aVarD4.c(str5, str4);
                        b37.a aVarA4 = b37Var2.a();
                        aVarA4.c = aVarD4.e().d();
                        ux0Var2 = new ux0(aVarA4.a(), z47VarA);
                        ux0Var = ux0Var2;
                    }
                } else {
                    ux0Var = new ux0(b37Var2, null);
                }
            } else {
                ux0Var = new ux0(b37Var2, null);
            }
        }
        if (ux0Var.a == null) {
            dVar = null;
        } else {
            mx0 mx0VarA2 = b37Var2.f;
            if (mx0VarA2 == null) {
                int i8 = mx0.n;
                mx0VarA2 = mx0.b.a(b37Var2.c);
                b37Var2.f = mx0VarA2;
            }
            if (mx0VarA2.j) {
                dVar = null;
                ux0Var = new ux0(null, null);
            } else {
                dVar = null;
            }
        }
        b37 b37Var3 = ux0Var.a;
        z47 z47Var = ux0Var.b;
        lx0 lx0Var2 = this.a;
        if (lx0Var2 != null) {
            synchronized (lx0Var2) {
            }
        }
        b bVar = jy6Var.e;
        if (bVar == null) {
            bVar = b.NONE;
        }
        if (z47VarA != null && z47Var == null && (b57Var2 = z47VarA.h) != null) {
            gb9.d(b57Var2);
        }
        if (b37Var3 == null && z47Var == null) {
            z47.a aVar3 = new z47.a();
            b37 b37Var4 = ez6Var.e;
            b37Var4.getClass();
            aVar3.a = b37Var4;
            ts6 ts6Var2 = ts6.HTTP_1_1;
            ts6Var2.getClass();
            aVar3.b = ts6Var2;
            aVar3.c = TypedValues.PositionType.TYPE_PERCENT_HEIGHT;
            aVar3.d = "Unsatisfiable Request (only-if-cached)";
            aVar3.g = gb9.c;
            aVar3.k = -1L;
            aVar3.l = System.currentTimeMillis();
            z47 z47VarA2 = aVar3.a();
            bVar.satisfactionFailure(jy6Var, z47VarA2);
            return z47VarA2;
        }
        if (b37Var3 == null) {
            z47Var.getClass();
            z47.a aVarP2 = z47Var.p();
            z47 z47VarB = a.b(z47Var);
            z47.a.b(z47VarB, "cacheResponse");
            aVarP2.i = z47VarB;
            z47 z47VarA3 = aVarP2.a();
            bVar.cacheHit(jy6Var, z47VarA3);
            return z47VarA3;
        }
        if (z47Var != null) {
            bVar.cacheConditionalHit(jy6Var, z47Var);
        } else if (this.a != null) {
            bVar.cacheMiss(jy6Var);
        }
        try {
            z47 z47VarB2 = ez6Var.b(b37Var3);
            if (z47Var != null) {
                if (z47VarB2.e == 304) {
                    z47.a aVarP3 = z47Var.p();
                    jv3 jv3Var5 = z47Var.g;
                    jv3 jv3Var6 = z47VarB2.g;
                    jv3.a aVar4 = new jv3.a();
                    int size2 = jv3Var5.size();
                    for (int i9 = 0; i9 < size2; i9++) {
                        String strB2 = jv3Var5.b(i9);
                        String strG2 = jv3Var5.g(i9);
                        if (!"Warning".equalsIgnoreCase(strB2) || !ra8.C(strG2, "1", false)) {
                            if ("Content-Length".equalsIgnoreCase(strB2) || "Content-Encoding".equalsIgnoreCase(strB2) || "Content-Type".equalsIgnoreCase(strB2) || !a.a(strB2) || jv3Var6.a(strB2) == null) {
                                aVar4.c(strB2, strG2);
                            }
                        }
                    }
                    int size3 = jv3Var6.size();
                    for (int i10 = 0; i10 < size3; i10++) {
                        String strB3 = jv3Var6.b(i10);
                        if (!"Content-Length".equalsIgnoreCase(strB3) && !"Content-Encoding".equalsIgnoreCase(strB3) && !"Content-Type".equalsIgnoreCase(strB3) && a.a(strB3)) {
                            aVar4.c(strB3, jv3Var6.g(i10));
                        }
                    }
                    aVarP3.f = aVar4.e().d();
                    aVarP3.k = z47VarB2.l;
                    aVarP3.l = z47VarB2.m;
                    z47 z47VarB3 = a.b(z47Var);
                    z47.a.b(z47VarB3, "cacheResponse");
                    aVarP3.i = z47VarB3;
                    z47 z47VarB4 = a.b(z47VarB2);
                    z47.a.b(z47VarB4, "networkResponse");
                    aVarP3.h = z47VarB4;
                    z47 z47VarA4 = aVarP3.a();
                    b57 b57Var4 = z47VarB2.h;
                    b57Var4.getClass();
                    b57Var4.close();
                    lx0 lx0Var3 = this.a;
                    lx0Var3.getClass();
                    synchronized (lx0Var3) {
                    }
                    this.a.getClass();
                    lx0.c cVar2 = new lx0.c(z47VarA4);
                    b57 b57Var5 = z47Var.h;
                    b57Var5.getClass();
                    un2.c cVar3 = ((lx0.a) b57Var5).c;
                    try {
                        aVarO2 = cVar3.e.o(cVar3.c, cVar3.b);
                        if (aVarO2 != 0) {
                            try {
                                cVar2.c(aVarO2);
                                aVarO2.b();
                            } catch (IOException unused3) {
                                if (aVarO2 != 0) {
                                    try {
                                        aVarO2.a();
                                    } catch (IOException unused4) {
                                    }
                                }
                            }
                        }
                    } catch (IOException unused5) {
                        aVarO2 = dVar;
                    }
                    bVar.cacheHit(jy6Var, z47VarA4);
                    return z47VarA4;
                }
                b57 b57Var6 = z47Var.h;
                if (b57Var6 != null) {
                    gb9.d(b57Var6);
                }
            }
            z47.a aVarP4 = z47VarB2.p();
            z47 z47VarB5 = a.b(z47Var);
            z47.a.b(z47VarB5, "cacheResponse");
            aVarP4.i = z47VarB5;
            z47 z47VarB6 = a.b(z47VarB2);
            z47.a.b(z47VarB6, "networkResponse");
            aVarP4.h = z47VarB6;
            z47 z47VarA5 = aVarP4.a();
            if (this.a != null) {
                if (az3.a(z47VarA5) && ux0.a.a(b37Var3, z47VarA5)) {
                    lx0 lx0Var4 = this.a;
                    lx0Var4.getClass();
                    b37 b37Var5 = z47VarA5.b;
                    String str9 = b37Var5.b;
                    str9.getClass();
                    try {
                        if (!str9.equals("POST") && !str9.equals(FirebasePerformance.HttpMethod.PATCH) && !str9.equals(FirebasePerformance.HttpMethod.PUT) && !str9.equals(FirebasePerformance.HttpMethod.DELETE) && !str9.equals("MOVE")) {
                            if (str9.equals("GET") && !lx0.b.c(z47VarA5.g).contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                                lx0.c cVar4 = new lx0.c(z47VarA5);
                                try {
                                    un2 un2Var = lx0Var4.b;
                                    String strA3 = lx0.b.a(b37Var5.a);
                                    g17 g17Var = un2.s;
                                    aVarO = un2Var.o(-1L, strA3);
                                    if (aVarO != 0) {
                                        try {
                                            cVar4.c(aVarO);
                                            dVar = lx0Var4.new d(aVarO);
                                        } catch (IOException unused6) {
                                            if (aVarO != 0) {
                                                aVarO.a();
                                            }
                                        }
                                    }
                                } catch (IOException unused7) {
                                    aVarO = dVar;
                                }
                            }
                            if (dVar != null) {
                                lx0.d.a aVar5 = dVar.c;
                                b57 b57Var7 = z47VarA5.h;
                                b57Var7.getClass();
                                wu0 wu0VarL = b57Var7.L();
                                aVar5.getClass();
                                qx0 qx0Var = new qx0(wu0VarL, dVar, new hy6(aVar5));
                                String strN = z47.n(z47VarA5, "Content-Type");
                                long jO = z47VarA5.h.o();
                                z47.a aVarP5 = z47VarA5.p();
                                aVarP5.g = new hz6(strN, jO, new iy6(qx0Var));
                                z47VarA5 = aVarP5.a();
                            }
                            if (z47Var != null) {
                                bVar.cacheMiss(jy6Var);
                            }
                            return z47VarA5;
                        }
                        lx0Var4.a(b37Var5);
                    } catch (IOException unused8) {
                    }
                    if (dVar != null) {
                        lx0.d.a aVar6 = dVar.c;
                        b57 b57Var8 = z47VarA5.h;
                        b57Var8.getClass();
                        wu0 wu0VarL2 = b57Var8.L();
                        aVar6.getClass();
                        qx0 qx0Var2 = new qx0(wu0VarL2, dVar, new hy6(aVar6));
                        String strN2 = z47.n(z47VarA5, "Content-Type");
                        long jO2 = z47VarA5.h.o();
                        z47.a aVarP6 = z47VarA5.p();
                        aVarP6.g = new hz6(strN2, jO2, new iy6(qx0Var2));
                        z47VarA5 = aVarP6.a();
                    }
                    if (z47Var != null) {
                        bVar.cacheMiss(jy6Var);
                    }
                    return z47VarA5;
                }
                String str10 = b37Var3.b;
                str10.getClass();
                if (str10.equals("POST") || str10.equals(FirebasePerformance.HttpMethod.PATCH) || str10.equals(FirebasePerformance.HttpMethod.PUT) || str10.equals(FirebasePerformance.HttpMethod.DELETE) || str10.equals("MOVE")) {
                    try {
                        this.a.a(b37Var3);
                    } catch (IOException unused9) {
                    }
                }
            }
            return z47VarA5;
        } catch (Throwable th) {
            if (z47VarA != null && (b57Var = z47VarA.h) != null) {
                gb9.d(b57Var);
            }
            throw th;
        }
    }
}
