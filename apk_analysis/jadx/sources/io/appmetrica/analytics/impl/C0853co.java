package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.co, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0853co {
    public final Un a;
    public final Y b;
    public final List c;
    public final String d;
    public final String e;
    public final Map f;
    public final String g;
    public final Boolean h;

    public C0853co(Un un, Y y, ArrayList arrayList, String str, String str2, Map map, String str3, Boolean bool) {
        this.a = un;
        this.b = y;
        this.c = arrayList;
        this.d = str;
        this.e = str2;
        this.f = map;
        this.g = str3;
        this.h = bool;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Un un = this.a;
        if (un != null) {
            for (Tl tl : un.c) {
                sb.append("at " + tl.a + "." + tl.e + "(" + tl.b + StringUtils.PROCESS_POSTFIX_DELIMITER + tl.c + StringUtils.PROCESS_POSTFIX_DELIMITER + tl.d + ")\n");
            }
        }
        return "UnhandledException{exception=" + this.a + "\n" + sb.toString() + '}';
    }
}
