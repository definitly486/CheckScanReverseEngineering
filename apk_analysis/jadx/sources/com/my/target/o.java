package com.my.target;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import defpackage.e2a;
import defpackage.gv9;
import defpackage.i1a;
import defpackage.s95;
import defpackage.ve1;
import defpackage.y14;
import defpackage.y7a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements h0.a {
    public final q a;
    public final j b;
    public l2 c;
    public HashMap d;
    public gv9 e;
    public ve1 f;
    public final i1a g;
    public final e2a h;
    public final String i;

    public o(q qVar, String str, Context context) {
        this.a = qVar;
        this.i = str;
        this.b = new j(context, this);
        this.g = qVar.f;
        this.h = qVar.g;
    }

    public final ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        q qVar = this.a;
        if (qVar.c != null) {
            HashMap map = this.d;
            if (map == null) {
                map = new HashMap();
                this.d = map;
            }
            map.clear();
            for (q.a aVar : qVar.c) {
                s95 s95Var = aVar.e;
                if (s95Var.b.equalsIgnoreCase(str)) {
                    arrayList.add(s95Var);
                    this.d.put(s95Var, aVar);
                }
            }
        }
        return arrayList;
    }

    public final void b() {
        q qVar = this.a;
        List<q.a> list = qVar.c;
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            HashMap map = this.d;
            if (map == null) {
                map = new HashMap();
                this.d = map;
            }
            map.clear();
            for (q.a aVar : list) {
                s95 s95Var = aVar.e;
                String str = s95Var.b;
                if (!str.equalsIgnoreCase("hide") && !str.equalsIgnoreCase("complain")) {
                    this.d.put(s95Var, aVar);
                    arrayList.add(s95Var);
                }
            }
            arrayList.add(new s95("Это не интересно", 0, "self::hide_options", "hide"));
            arrayList.add(new s95("Жалоба", 0, "self::complain_options", "complain"));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.b.a(this.i, qVar.e, null, null, arrayList);
    }

    public final void c(s95 s95Var) {
        gv9 gv9Var;
        i1a i1aVar;
        m1.a aVar;
        HashMap map = this.d;
        if (map == null) {
            return;
        }
        q.a aVar2 = (q.a) map.get(s95Var);
        if (aVar2 != null) {
            String str = aVar2.a;
            if (!TextUtils.isEmpty(str) && (aVar = m1.a) != null && !TextUtils.isEmpty(str)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                z2 z2Var = aVar.a;
                y7a y7aVar = new y7a(aVar, str, jCurrentTimeMillis);
                Handler handler = z2Var.e;
                Objects.requireNonNull(handler);
                handler.post(y7aVar);
            }
        }
        String str2 = s95Var.b;
        boolean zEqualsIgnoreCase = str2.equalsIgnoreCase("self::hide_options");
        j jVar = this.b;
        if (zEqualsIgnoreCase) {
            jVar.getClass();
            this.c = new m5(jVar.getContext(), this);
            ArrayList arrayListA = a("hide");
            if (!arrayListA.isEmpty() && (i1aVar = this.g) != null) {
                this.c.a((String) i1aVar.b, (String) i1aVar.c, (String) i1aVar.d, (String) i1aVar.e, arrayListA);
                jVar.dismiss();
            }
        } else {
            boolean zEqualsIgnoreCase2 = str2.equalsIgnoreCase("self::complain_options");
            e2a e2aVar = this.h;
            if (zEqualsIgnoreCase2) {
                jVar.getClass();
                this.c = new n3(jVar.getContext(), this);
                ArrayList arrayListA2 = a("complain");
                if (!arrayListA2.isEmpty() && e2aVar != null) {
                    this.c.a(e2aVar.a, null, e2aVar.b, e2aVar.c, arrayListA2);
                    jVar.dismiss();
                }
            } else {
                boolean zEqualsIgnoreCase3 = str2.equalsIgnoreCase("copy");
                HashMap map2 = this.d;
                if (zEqualsIgnoreCase3) {
                    if (map2 != null) {
                        if (aVar2 == null) {
                            return;
                        }
                        String str3 = aVar2.c;
                        if (str3 != null) {
                            jVar.getClass();
                            ((ClipboardManager) jVar.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("copied id", str3));
                        }
                        ve1 ve1Var = this.f;
                        if (ve1Var != null) {
                            ((w1) ve1Var.b).resume();
                        }
                    }
                } else if (map2 != null) {
                    if (aVar2 == null) {
                        return;
                    }
                    String str4 = aVar2.b;
                    if (!TextUtils.isEmpty(str4)) {
                        jVar.getClass();
                        y14.n(jVar.getContext(), str4, null, null, null);
                    }
                    if (aVar2.e.b.equals("complain")) {
                        jVar.getClass();
                        lf lfVar = new lf(jVar.getContext(), this);
                        if (e2aVar != null) {
                            lfVar.a(e2aVar.a, e2aVar.e, e2aVar.d, e2aVar.f, null);
                        }
                    } else if (aVar2.d && (gv9Var = this.e) != null) {
                        gv9Var.b();
                    }
                    l2 l2Var = this.c;
                    if (l2Var != null) {
                        l2Var.dismiss();
                    }
                }
            }
        }
        jVar.dismiss();
    }
}
