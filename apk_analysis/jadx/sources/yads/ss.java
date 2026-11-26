package yads;

import android.os.SystemClock;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class ss {
    public final ua3 a;
    public final rv b;

    public ss(ua3 ua3Var) {
        rv rvVar = new rv();
        this.a = ua3Var;
        this.b = rvVar;
    }

    /* JADX WARN: Type inference failed for: r14v1, types: [yads.ss] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [yads.en4] */
    public final en4 a(r75 r75Var) throws hi6 {
        sa3 sa3Var;
        byte[] bArrA;
        ?? r14;
        on4 on4Var;
        Map map;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ?? A = this;
        while (true) {
            try {
                wv wvVar = r75Var.p;
                if (wvVar == null) {
                    map = Collections.EMPTY_MAP;
                } else {
                    HashMap map2 = new HashMap();
                    String str = wvVar.b;
                    if (str != null) {
                        map2.put("If-None-Match", str);
                    }
                    long j = wvVar.d;
                    if (j > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                        map2.put("If-Modified-Since", simpleDateFormat.format(new Date(j)));
                    }
                    map = map2;
                }
                ua3 ua3Var = A.a;
                ua3Var.getClass();
                HashMap map3 = new HashMap();
                map3.putAll(map);
                oa3 oa3Var = oa3.AD_HEADER_WIDTH;
                map3.put("User-Agent", ua3Var.b.a.a());
                sa3 sa3VarA = ua3Var.a.a(r75Var, map3);
                try {
                    int i = sa3VarA.a;
                    List listUnmodifiableList = Collections.unmodifiableList(sa3VarA.b);
                    if (i == 304) {
                        SystemClock.elapsedRealtime();
                        A = pn4.a(r75Var, listUnmodifiableList);
                        return A;
                    }
                    InputStream byteArrayInputStream = sa3VarA.d;
                    if (byteArrayInputStream == null) {
                        byteArrayInputStream = sa3VarA.e != null ? new ByteArrayInputStream(sa3VarA.e) : null;
                    }
                    bArrA = byteArrayInputStream != null ? pn4.a(byteArrayInputStream, sa3VarA.c, A.b) : new byte[0];
                    try {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        if (li6.a || jElapsedRealtime2 > 3000) {
                            int i2 = r75Var.o.b;
                        }
                        if (i < 200 || i > 299) {
                            throw new IOException();
                        }
                        SystemClock.elapsedRealtime();
                        return new en4(i, bArrA, false, listUnmodifiableList);
                    } catch (IOException e) {
                        sa3Var = sa3VarA;
                        e = e;
                        r14 = A;
                    }
                } catch (IOException e2) {
                    sa3Var = sa3VarA;
                    e = e2;
                    bArrA = null;
                    r14 = A;
                }
            } catch (IOException e3) {
                e = e3;
                sa3Var = null;
                bArrA = null;
                r14 = A;
            }
            if (e instanceof SocketTimeoutException) {
                on4Var = new on4("socket", new mx5());
            } else {
                if (e instanceof MalformedURLException) {
                    defpackage.xy.f("Bad URL ", r75Var.g(), e);
                    return null;
                }
                if (sa3Var != null) {
                    int i3 = sa3Var.a;
                    r75Var.g();
                    boolean z = li6.a;
                    if (bArrA != null) {
                        List listUnmodifiableList2 = Collections.unmodifiableList(sa3Var.b);
                        SystemClock.elapsedRealtime();
                        en4 en4Var = new en4(i3, bArrA, false, listUnmodifiableList2);
                        if (i3 == 401 || i3 == 403) {
                            on4Var = new on4("auth", new ym(en4Var));
                        } else {
                            if (i3 >= 400 && i3 <= 499) {
                                throw new o00(en4Var);
                            }
                            if (i3 < 500 || i3 > 599 || !r75Var.m) {
                                throw new vi5(en4Var);
                            }
                            on4Var = new on4("server", new vi5(en4Var));
                        }
                    } else {
                        on4Var = new on4("network", new cn4());
                    }
                } else {
                    if (!r75Var.n) {
                        throw new do4(e);
                    }
                    on4Var = new on4("connection", new do4());
                }
            }
            am0 am0Var = r75Var.o;
            int i4 = am0Var.a;
            try {
                hi6 hi6Var = on4Var.b;
                int i5 = am0Var.b + 1;
                am0Var.b = i5;
                am0Var.a = ((int) (i4 * am0Var.d)) + i4;
                if (i5 > am0Var.c) {
                    throw hi6Var;
                }
                r75Var.a(on4Var.a + "-retry [timeout=" + i4 + "]");
                A = r14;
            } catch (hi6 e4) {
                r75Var.a(on4Var.a + "-timeout-giveup [timeout=" + i4 + "]");
                throw e4;
            }
        }
    }
}
