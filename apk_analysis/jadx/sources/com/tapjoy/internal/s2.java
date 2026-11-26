package com.tapjoy.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class s2 {
    public final int a;
    public String b;
    public final String c;
    public final long d;
    public final long e;
    public final Map f;

    public s2(int i, String str, String str2, long j, long j2, Map map) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = map;
    }

    public final String a(String str) {
        List list;
        String str2;
        str.getClass();
        Map map = this.f;
        return (map == null || (list = (List) map.get(str)) == null || list.isEmpty() || (str2 = (String) list.get(0)) == null) ? "" : str2;
    }
}
