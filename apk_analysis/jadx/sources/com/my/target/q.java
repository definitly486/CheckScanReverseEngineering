package com.my.target;

import defpackage.e2a;
import defpackage.h14;
import defpackage.i1a;
import defpackage.s95;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class q {
    public final h14 a;
    public final String b;
    public List c;
    public List d;
    public String e;
    public i1a f;
    public e2a g;

    public static class a {
        public final String a;
        public final String b;
        public final String c;
        public final boolean d;
        public final s95 e;

        public a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
            this.a = str3;
            this.b = str4;
            this.c = str5;
            this.d = z;
            this.e = new s95(str, 0, str2, str6);
        }
    }

    public q(h14 h14Var, String str) {
        this.a = h14Var;
        this.b = str;
    }

    public static List a(List list) {
        if (list == null || list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(list.size() + 1);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((a) it.next()).e);
        }
        arrayList.add(new s95("", 1, "cancel", null));
        return arrayList;
    }
}
