package defpackage;

import android.util.Base64;
import com.google.firebase.perf.FirebasePerformance;
import com.google.gson.Gson;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class ts5 implements jv6 {
    public final tu6 a;
    public final ns5 b;

    public static final class a extends gh4 implements bm3<ArrayList<us5>, us5, j59> {
        public static final a f = new a(2);

        @Override // defpackage.bm3
        public final j59 invoke(ArrayList<us5> arrayList, us5 us5Var) {
            arrayList.add(us5Var);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<ArrayList<us5>, c18<? extends a57<iv6>>> {
        public final /* synthetic */ hv6 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(hv6 hv6Var) {
            super(1);
            this.g = hv6Var;
        }

        @Override // defpackage.nl3
        public final c18<? extends a57<iv6>> invoke(ArrayList<us5> arrayList) {
            ArrayList<us5> arrayList2 = arrayList;
            arrayList2.getClass();
            return ts5.this.f(arrayList2, this.g);
        }
    }

    public ts5(tu6 tu6Var, ns5 ns5Var) {
        this.a = tu6Var;
        this.b = ns5Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static us5 b(ms5 ms5Var, a57 a57Var) {
        String strV;
        z47 z47Var = a57Var.a;
        int i = z47Var.e;
        ArrayList arrayList = new ArrayList();
        jv3 jv3Var = z47Var.g;
        Set<String> setC = jv3Var.c();
        ArrayList arrayList2 = new ArrayList(kn1.q(setC, 10));
        for (String str : setC) {
            List<String> listH = jv3Var.h(str);
            ArrayList arrayList3 = new ArrayList(kn1.q(listH, 10));
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                arrayList3.add(Boolean.valueOf(arrayList.add(new cv3(str, (String) it.next()))));
            }
            arrayList2.add(arrayList3);
        }
        b57 b57Var = (b57) a57Var.b;
        if (b57Var == null || (strV = Base64.encodeToString(ex0.d(b57Var.L().w0()), 2)) == null) {
            b57 b57Var2 = a57Var.c;
            strV = b57Var2 != null ? b57Var2.v() : "";
        }
        return new us5(ms5Var.d(), i, arrayList, strV, ms5Var.b());
    }

    public static f37 c(String str) {
        if (str == null) {
            str = "{}";
        }
        Pattern pattern = j95.e;
        return g37.a.a(str, j95.a.a("application/json"));
    }

    public static c57 d(String str) {
        if (str == null) {
            str = "";
        }
        Pattern pattern = j95.e;
        j95 j95VarA = j95.a.a("application/json");
        Charset charset = ha1.b;
        Charset charsetA = j95VarA.a(null);
        if (charsetA == null) {
            try {
                j95VarA = j95.a.a(j95VarA + "; charset=utf-8");
            } catch (IllegalArgumentException unused) {
                j95VarA = null;
            }
        } else {
            charset = charsetA;
        }
        bu0 bu0Var = new bu0();
        charset.getClass();
        bu0Var.F0(str, 0, str.length(), charset);
        return new c57(j95VarA, bu0Var.c, bu0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static us5 e(ms5 ms5Var, a57 a57Var) {
        String strV;
        z47 z47Var = a57Var.a;
        int i = z47Var.e;
        ArrayList arrayList = new ArrayList();
        jv3 jv3Var = z47Var.g;
        Set<String> setC = jv3Var.c();
        ArrayList arrayList2 = new ArrayList(kn1.q(setC, 10));
        for (String str : setC) {
            List<String> listH = jv3Var.h(str);
            ArrayList arrayList3 = new ArrayList(kn1.q(listH, 10));
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                arrayList3.add(Boolean.valueOf(arrayList.add(new cv3(str, (String) it.next()))));
            }
            arrayList2.add(arrayList3);
        }
        String str2 = (String) a57Var.b;
        if (str2 != null) {
            strV = ta8.a0(str2, "<body>", str2);
            int iN = ta8.N(6, strV, "</body>");
            if (iN != -1) {
                strV = strV.substring(0, iN);
            }
        } else {
            b57 b57Var = a57Var.c;
            strV = b57Var != null ? b57Var.v() : "";
        }
        return new us5(ms5Var.d(), i, arrayList, strV, ms5Var.b());
    }

    @Override // defpackage.jv6
    public final e08 a(hv6 hv6Var) {
        hv6Var.getClass();
        mz7<a57<kd4>> mz7VarA = this.a.a(hv6Var, false);
        y52 y52Var = new y52(new ss5(0, this, hv6Var));
        mz7VarA.getClass();
        return new e08(mz7VarA, y52Var);
    }

    public final e08 f(ArrayList arrayList, hv6 hv6Var) {
        if (arrayList == null || arrayList.isEmpty()) {
            arrayList = new ArrayList();
        }
        mz7<a57<kd4>> mz7VarB = this.a.b(new ws5(arrayList, hv6Var), true);
        f90 f90Var = new f90(new c54(1, this, hv6Var), 4);
        mz7VarB.getClass();
        return new e08(mz7VarB, f90Var);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final u08 g(ms5 ms5Var) {
        HashMap map;
        List<cv3> listC = ms5Var.c();
        if (listC == null || listC.isEmpty()) {
            map = new HashMap();
        } else {
            map = new HashMap();
            for (cv3 cv3Var : ms5Var.c()) {
                map.put(cv3Var.a(), cv3Var.b());
            }
        }
        String strE = ms5Var.e();
        String strE2 = (strE == null || ta8.M(strE)) ? "GET" : ms5Var.e();
        int iHashCode = strE2.hashCode();
        int i = 3;
        int i2 = 2;
        ns5 ns5Var = this.b;
        switch (iHashCode) {
            case 79599:
                if (strE2.equals(FirebasePerformance.HttpMethod.PUT)) {
                    mz7<a57<String>> mz7VarB = ns5Var.b(map, ms5Var.f(), c(ms5Var.a()));
                    ml0 ml0Var = new ml0(new qs5(this, ms5Var), i);
                    mz7VarB.getClass();
                    return new u08(new p08(mz7VarB, ml0Var), new p9(this, ms5Var), null);
                }
                break;
            case 2461856:
                if (strE2.equals("POST")) {
                    mz7<a57<String>> mz7VarD = ns5Var.d(map, ms5Var.f(), c(ms5Var.a()));
                    v51 v51Var = new v51(new ai1(this, ms5Var), i);
                    mz7VarD.getClass();
                    return new u08(new p08(mz7VarD, v51Var), new ll0(this, ms5Var), null);
                }
                break;
            case 309990290:
                if (strE2.equals("PUT_BYTE_ARRAY")) {
                    mz7<a57<b57>> mz7VarA = ns5Var.a(map, ms5Var.f(), c(ms5Var.a()));
                    fl0 fl0Var = new fl0(new t9(this, ms5Var), i2);
                    mz7VarA.getClass();
                    return new u08(new p08(mz7VarA, fl0Var), new ud1(this, ms5Var), null);
                }
                break;
            case 964531435:
                if (strE2.equals("GET_BYTE_ARRAY")) {
                    mz7<a57<b57>> mz7VarC = ns5Var.c(map, ms5Var.f());
                    zm3 zm3Var = new zm3(new rs5(this, ms5Var), i2);
                    mz7VarC.getClass();
                    return new u08(new p08(mz7VarC, zm3Var), new ow0(this, ms5Var), null);
                }
                break;
            case 1747415361:
                if (strE2.equals("POST_BYTE_ARRAY")) {
                    mz7<a57<b57>> mz7VarF = ns5Var.f(map, ms5Var.f(), c(ms5Var.a()));
                    fg2 fg2Var = new fg2(new ie1(this, ms5Var), 4);
                    mz7VarF.getClass();
                    return new u08(new p08(mz7VarF, fg2Var), new zi4(this, ms5Var), null);
                }
                break;
        }
        mz7<a57<String>> mz7VarE = ns5Var.e(map, ms5Var.f());
        jl0 jl0Var = new jl0(new ps5(this, ms5Var), 5);
        mz7VarE.getClass();
        return new u08(new p08(mz7VarE, jl0Var), new kl0(this, ms5Var), null);
    }

    public final mz7<a57<iv6>> h(kd4 kd4Var, hv6 hv6Var) {
        try {
            vs5 vs5Var = (vs5) new Gson().a(kd4Var, new x39(vs5.class));
            if (vs5Var == null || vs5Var.a().isEmpty()) {
                return f(null, hv6Var);
            }
            List<ms5> listA = vs5Var.a();
            ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                arrayList.add(g((ms5) it.next()));
            }
            int i = gg3.b;
            return new e08(new ig3(new vg3(new zg3(arrayList), n08.INSTANCE, gg3.b), new os5(vs5Var), new b9(a.f, 5)), new hl0(new b(hv6Var), 4));
        } catch (Exception unused) {
            return this.a.c(hv6Var);
        }
    }
}
