package com.my.target;

import android.net.Uri;
import android.os.Handler;
import android.webkit.URLUtil;
import com.my.target.m1;
import com.tapjoy.TJAdUnitConstants;
import defpackage.i7a;
import defpackage.ik0;
import defpackage.n4a;
import defpackage.pp9;
import defpackage.s5a;
import defpackage.y14;
import defpackage.z8a;
import defpackage.zm9;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m1 {
    public static a a;

    public static final class a {
        public static final List b = Arrays.asList("urlResolved", "webviewShown", "pageLoaded", "pageLoadFailed", "webviewClosed");
        public static Pattern c = null;
        public static Pattern d = null;
        public final z2 a;

        public a(z2 z2Var) {
            this.a = z2Var;
            try {
                c = Pattern.compile("^https://[a-z]+\\.((mail\\.ru)|(mradx\\.net))/pixel/.*$");
                d = Pattern.compile("^https://vk.com/ads_light.php.*$");
            } catch (PatternSyntaxException e) {
                y14.u(null, "StatResolver: " + e.getLocalizedMessage());
            }
        }

        public final void a(final s5a s5aVar, final Map map, int i, final b bVar) {
            if (s5aVar.b.isEmpty()) {
                y14.r(null, "No stats here, nothing to send");
                return;
            }
            final i7a i7aVar = new i7a(s5aVar.c, i);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            Runnable runnable = new Runnable() { // from class: x7a
                @Override // java.lang.Runnable
                public final void run() {
                    i7a i7aVar2 = i7aVar;
                    pp9 pp9Var = i7aVar2.b;
                    s5a s5aVar2 = s5aVar;
                    for (m2a m2aVar : s5aVar2.b) {
                        String str = m2aVar.a;
                        String str2 = m2aVar.b;
                        StringBuilder sbD = n7.d("statType=", str, ", needDecode=");
                        sbD.append(m2aVar.e);
                        sbD.append(", statUrl=");
                        sbD.append(str2);
                        String string = sbD.toString();
                        if (m2aVar instanceof k8a) {
                            float f = ((k8a) m2aVar).f;
                            StringBuilder sb = new StringBuilder("StatResolver: Tracking progress stat value - ");
                            sb.append(f);
                            sb.append(", url - ");
                            i01.d(sb, m2aVar.b, null);
                        } else if (m2aVar instanceof ht9) {
                            ht9 ht9Var = (ht9) m2aVar;
                            int i2 = ht9Var.f;
                            float f2 = ht9Var.i;
                            boolean z = ht9Var.h;
                            StringBuilder sb2 = new StringBuilder("StatResolver: Tracking ovv stat percent - ");
                            sb2.append(i2);
                            sb2.append(", value - ");
                            sb2.append(f2);
                            sb2.append(", ovv - ");
                            sb2.append(z);
                            sb2.append(", url - ");
                            i01.d(sb2, m2aVar.b, null);
                        } else if (m2aVar instanceof sna) {
                            sna snaVar = (sna) m2aVar;
                            int i3 = snaVar.f;
                            float f3 = snaVar.h;
                            StringBuilder sb3 = new StringBuilder("StatResolver: Tracking mrc stat percent - , percent - ");
                            sb3.append(i3);
                            sb3.append(", duration - ");
                            sb3.append(f3);
                            sb3.append(", url - ");
                            i01.d(sb3, m2aVar.b, null);
                        } else {
                            y14.r(null, "StatResolver: Tracking stat type - " + str + ", url - " + str2);
                        }
                        ik0 ik0Var = s5aVar2.a;
                        HashMap map2 = new HashMap();
                        Map map3 = map;
                        if (map3 != null) {
                            map2.putAll(map3);
                        }
                        String strF = m2aVar.e ? y14.f(str2) : str2;
                        HashMap map4 = new HashMap();
                        if (ik0Var != null) {
                            Map map5 = (Map) ((HashMap) ik0Var.a).get(m2aVar.c);
                            if (map5 != null) {
                                map4.putAll(map5);
                            }
                        }
                        Pattern pattern = m1.a.c;
                        boolean z2 = (pattern != null ? pattern.matcher(strF).matches() : false) && m1.a.b.contains(str);
                        Pattern pattern2 = m1.a.d;
                        boolean zMatches = pattern2 != null ? pattern2.matcher(strF).matches() : false;
                        long j = jCurrentTimeMillis;
                        if (z2 || zMatches) {
                            map4.put("client_timestamp", String.valueOf(j));
                        }
                        map2.putAll(map4);
                        String strA = m1.a(str2, map2, m2aVar.e);
                        if (strA == null) {
                            String strConcat = "url is null for ".concat(string);
                            int i4 = i7aVar2.c;
                            if (pp9Var != null) {
                                pp9Var.b(strConcat, i4, 0, 9000, null);
                            } else {
                                i7aVar2.a.a(strConcat, i4, 0, 9000, null);
                            }
                        } else {
                            m1.b bVar2 = bVar;
                            if (bVar2 != null && m2aVar.d) {
                                bVar2.mo1a();
                            }
                            this.b.a.a(strA, str, j, new i7a(i7aVar2.a, pp9Var, i7aVar2.c, string));
                        }
                    }
                }
            };
            Handler handler = this.a.e;
            Objects.requireNonNull(handler);
            handler.post(runnable);
        }
    }

    public interface b {
        /* JADX INFO: renamed from: a */
        void mo1a();
    }

    public static String a(String str, Map map, boolean z) {
        if (z) {
            str = y14.f(str);
        }
        if (!URLUtil.isNetworkUrl(str)) {
            y14.r(null, "StatResolver: Invalid stat url: " + str);
            return null;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return builderBuildUpon.build().toString();
    }

    public static void b(ArrayList arrayList, z8a z8aVar, ik0 ik0Var) {
        if (a != null) {
            z8aVar.getClass();
            pp9 pp9Var = new pp9(z8aVar, zm9.g);
            new HashSet();
            new HashSet();
            new HashSet();
            new HashSet();
            new ArrayList();
            new ArrayList();
            a.a(new s5a(arrayList, pp9Var, ik0Var), null, 0, null);
        }
    }

    public static void c(n4a n4aVar, String str) {
        a aVar = a;
        if (aVar != null) {
            n4aVar.getClass();
            aVar.a(new s5a(new ArrayList(str.equals(TJAdUnitConstants.String.PORTRAIT) ? n4aVar.d : n4aVar.e), n4aVar.a, null), null, 1, null);
        }
    }

    public static void d(n4a n4aVar, String str, int i, b bVar) {
        a aVar = a;
        if (aVar != null) {
            aVar.a(n4aVar.f(str), null, i, bVar);
        }
    }

    public static void e(n4a n4aVar, String str, Map map, int i) {
        s5a s5aVarF = n4aVar.f(str);
        a aVar = a;
        if (aVar != null) {
            aVar.a(s5aVarF, map, i, null);
        }
    }

    public static void f(s5a s5aVar, b bVar) {
        a aVar = a;
        if (aVar != null) {
            aVar.a(s5aVar, null, 1, bVar);
        }
    }

    public static void g(s5a s5aVar, b bVar) {
        if (a == null || s5aVar.b.isEmpty()) {
            return;
        }
        a.a(s5aVar, null, 1, bVar);
    }
}
