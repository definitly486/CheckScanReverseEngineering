package yads;

import android.content.Context;
import android.net.Uri;
import defpackage.l68;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class jb4 implements nq4 {
    public final ls4 a;
    public final cb4 b;
    public final qb4 c;
    public final ih6 d;
    public final e56 e;
    public final rr2 f;
    public final fe5 g;
    public String h;
    public boolean i;
    public final ur2 j;
    public final String k;
    public rb4 l;
    public ja4 m;
    public ia4 n;
    public mq4 o;
    public rd6 p;
    public hb4 q;
    public ah6 r;
    public qr2 s;

    public jb4(ls4 ls4Var, cb4 cb4Var, qb4 qb4Var, ih6 ih6Var, e56 e56Var, rr2 rr2Var, fe5 fe5Var, List list) {
        this.a = ls4Var;
        this.b = cb4Var;
        this.c = qb4Var;
        this.d = ih6Var;
        this.e = e56Var;
        this.f = rr2Var;
        this.g = fe5Var;
        da3 fd5Var = new fd5("mraid.js", new defpackage.wq(this, 6));
        ea3 ea3Var = new ea3(new ib4(this));
        if (!list.isEmpty()) {
            l68 l68Var = new l68(2);
            l68Var.a(fd5Var);
            l68Var.b(list.toArray(new da3[0]));
            ArrayList<Object> arrayList = l68Var.a;
            fd5Var = new l50((da3[]) arrayList.toArray(new da3[arrayList.size()]));
        }
        ea3Var.c = fd5Var;
        this.r = ah6.LOADING;
        ls4Var.setWebViewClient(ea3Var);
        this.j = new ur2(ls4Var, rr2Var, this);
        int i = ya.b;
        String string = toString();
        this.k = string == null ? "" : string;
    }

    public final void a(ob4 ob4Var, LinkedHashMap linkedHashMap) throws fb4 {
        if (this.l == null) {
            throw new fb4("Invalid state to execute this command");
        }
        switch (ob4Var.ordinal()) {
            case 0:
                rd6 rd6Var = this.p;
                if (rd6Var != null) {
                    rd6Var.onVideoComplete();
                    return;
                }
                return;
            case 1:
                ia4 ia4Var = this.n;
                if (ia4Var != null) {
                    ia4Var.e();
                    return;
                }
                return;
            case 2:
                ia4 ia4Var2 = this.n;
                if (ia4Var2 != null) {
                    ia4Var2.b();
                    return;
                }
                return;
            case 3:
                if (ah6.DEFAULT == this.r) {
                    ah6 ah6Var = ah6.HIDDEN;
                    this.r = ah6Var;
                    this.b.a(ah6Var);
                    mq4 mq4Var = this.o;
                    if (mq4Var != null) {
                        mq4Var.c();
                        return;
                    }
                    return;
                }
                return;
            case 4:
                a(linkedHashMap);
                return;
            case 5:
                ja4 ja4Var = this.m;
                if (ja4Var != null) {
                    ja4Var.a();
                    return;
                }
                return;
            case 6:
                boolean z = Boolean.parseBoolean((String) linkedHashMap.get("shouldUseCustomClose"));
                mq4 mq4Var2 = this.o;
                if (mq4Var2 != null) {
                    mq4Var2.a(z);
                    return;
                }
                return;
            case 7:
            default:
                throw new fb4("Unspecified MRAID Javascript command");
            case 8:
                hb4 hb4Var = this.q;
                if (hb4Var != null) {
                    ks3.a((vb4) ((defpackage.s5) hb4Var).c);
                }
                fe5 fe5Var = this.g;
                if (fe5Var == null || !fe5Var.D0) {
                    return;
                }
                this.a.a();
                return;
        }
    }

    public final void b(String str) {
        Context context = this.a.getContext();
        qb4 qb4Var = this.c;
        String str2 = this.k;
        defpackage.bf2 bf2Var = new defpackage.bf2(this, str);
        qb4Var.getClass();
        qb4.a(context, str2, bf2Var);
    }

    public final void c(String str) throws fb4 {
        this.e.getClass();
        if (!e56.a(str)) {
            this.b.a(ob4.UNSPECIFIED, "Mraid command sent an invalid URL");
            return;
        }
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String host = uri.getHost();
        if (!"mraid".equals(scheme) && !"mobileads".equals(scheme)) {
            Map mapSingletonMap = Collections.singletonMap("url", str);
            mapSingletonMap.getClass();
            a(mapSingletonMap);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : uri.getQueryParameterNames()) {
            linkedHashMap.put(str2, uri.getQueryParameter(str2));
        }
        ob4.c.getClass();
        ob4 ob4VarA = nb4.a(host);
        try {
            a(ob4VarA, linkedHashMap);
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown exception";
            }
            this.b.a(ob4VarA, message);
        }
        this.b.a(ob4VarA);
    }

    public static final void b(jb4 jb4Var, String str, String str2) {
        jb4Var.h = str2;
        jb4Var.b.a.loadUrl(str);
    }

    public jb4(ls4 ls4Var, List list, int i) {
        cb4 cb4Var = new cb4(ls4Var);
        qb4 qb4Var = new qb4();
        ih6 ih6Var = new ih6();
        e56 e56Var = new e56();
        rr2 rr2Var = new rr2();
        zg5 zg5Var = zg5.l;
        if (zg5Var == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
        }
        this(ls4Var, cb4Var, qb4Var, ih6Var, e56Var, rr2Var, zg5Var.a(ls4Var.b), (i & 128) != 0 ? defpackage.kx2.b : list);
    }

    public final void a(String str) {
        Context context = this.a.getContext();
        qb4 qb4Var = this.c;
        String str2 = this.k;
        defpackage.ze2 ze2Var = new defpackage.ze2(this, str);
        qb4Var.getClass();
        qb4.a(context, str2, ze2Var);
    }

    public static final void a(jb4 jb4Var, String str, String str2) {
        jb4Var.h = str2;
        ls4 ls4Var = jb4Var.b.a;
        ls4Var.loadDataWithBaseURL("https://yandex.ru", ls4Var.a(str), "text/html", "UTF-8", null);
    }

    public final void a(vb4 vb4Var, Map map) {
        ls4 ls4Var = this.a;
        vt5 vt5Var = new vt5(ls4Var);
        this.d.getClass();
        mh6 mh6Var = new mh6(ih6.a(ls4Var));
        qr2 qr2VarA = this.f.a(this.a);
        sr2 sr2Var = new sr2(qr2VarA.a, qr2VarA.b);
        ah6 ah6Var = ah6.DEFAULT;
        this.r = ah6Var;
        this.b.a(ah6Var, mh6Var, sr2Var, vt5Var);
        this.b.b("notifyReadyEvent();");
        rb4 rb4Var = this.l;
        if (rb4Var != null) {
            rb4Var.a(vb4Var, map);
        }
    }

    public final void a(boolean z) {
        this.b.a(new mh6(z));
        ur2 ur2Var = this.j;
        if (z) {
            defpackage.mb4 mb4Var = ur2Var.e;
            if (mb4Var == null || !mb4Var.isActive()) {
                ur2Var.e = defpackage.av0.c(ur2Var.b, null, null, new tr2(ur2Var, null), 3);
                return;
            }
            return;
        }
        defpackage.mb4 mb4Var2 = ur2Var.e;
        if (mb4Var2 != null) {
            mb4Var2.cancel(null);
        }
        ur2Var.e = null;
        qr2 qr2VarA = this.f.a(this.a);
        if (defpackage.aa4.e(qr2VarA, this.s)) {
            return;
        }
        this.s = qr2VarA;
        this.b.a(new sr2(qr2VarA.a, qr2VarA.b));
    }

    public final void a() {
        this.i = true;
        rb4 rb4Var = this.l;
        if (rb4Var != null) {
            rb4Var.a();
        }
    }

    public static final String a(jb4 jb4Var) {
        return jb4Var.h;
    }

    public final void a(Map map) throws fb4 {
        if (this.l != null) {
            fe5 fe5Var = this.g;
            if (fe5Var == null || !fe5Var.F0 || this.i) {
                String str = (String) map.get("url");
                if (str != null && str.length() > 0) {
                    rb4 rb4Var = this.l;
                    if (rb4Var != null) {
                        rb4Var.a(str);
                        return;
                    }
                    return;
                }
                throw new fb4(String.format("Mraid open command sent an invalid URL: %s", Arrays.copyOf(new Object[]{str}, 1)));
            }
        }
    }
}
