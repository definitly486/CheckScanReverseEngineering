package yads;

import defpackage.fh8;
import defpackage.g17;
import defpackage.qa8;
import defpackage.ra8;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class jf {
    public static final defpackage.cl4 a = new fh8(new defpackage.e01(3));
    public static final defpackage.cl4 b = new fh8(new defpackage.nk5(2));

    public static LinkedHashMap a(String str) {
        StackTraceElement stackTraceElement;
        List list;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = ta8.P(str).iterator();
        Thread thread = null;
        while (it.hasNext()) {
            String string = ta8.f0((String) it.next()).toString();
            defpackage.s15 s15VarA = g17.a((g17) b.getValue(), string);
            String str2 = s15VarA != null ? (String) defpackage.qn1.W(1, s15VarA.a()) : null;
            if (str2 != null) {
                thread = new Thread("[ExitInfo] ".concat(str2));
                linkedHashMap.put(thread, new ArrayList());
            } else if (ra8.C(string, "at ", false) && thread != null) {
                defpackage.s15 s15VarA2 = g17.a((g17) a.getValue(), string);
                if (s15VarA2 == null) {
                    stackTraceElement = null;
                } else {
                    String str3 = (String) ((s15.a) s15VarA2.a()).get(1);
                    String str4 = (String) ((s15.a) s15VarA2.a()).get(2);
                    String str5 = (String) ((s15.a) s15VarA2.a()).get(3);
                    str3.getClass();
                    int iO = ta8.O(str3, '.', 0, 6);
                    String strSubstring = iO == -1 ? "" : str3.substring(0, iO);
                    String strB0 = ta8.b0('.', str3, str3);
                    try {
                        Integer numP = qa8.p(str5);
                        stackTraceElement = new StackTraceElement(strSubstring, strB0, str4, numP != null ? numP.intValue() : -1);
                    } catch (Throwable unused) {
                        stackTraceElement = null;
                    }
                }
                if (stackTraceElement != null && (list = (List) linkedHashMap.get(thread)) != null) {
                    list.add(stackTraceElement);
                }
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(defpackage.m05.b(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry.getKey(), (StackTraceElement[]) ((Collection) entry.getValue()).toArray(new StackTraceElement[0]));
        }
        return linkedHashMap2;
    }

    public static final g17 b() {
        return new g17("^\"(.*)\"\\s+(.+?)?\\s*prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)$");
    }

    public static final g17 a() {
        return new g17("at\\s+([^\\(]+)\\(([^:]+):(\\d+)\\)");
    }
}
