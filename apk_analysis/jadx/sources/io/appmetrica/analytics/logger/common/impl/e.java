package io.appmetrica.analytics.logger.common.impl;

import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class e {
    public final i a;

    public e() {
        this(new i());
    }

    public final ArrayList a(String str) {
        String[] strArrSplit = str.split("\\n");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            int i = 0;
            while (str2.length() > i) {
                int length = str2.length();
                int i2 = i + 3800;
                int iMin = Math.min(length, i2);
                if (length > i2) {
                    int iA = i.a(((Pattern) this.a.a.getValue()).matcher(str2), i, iMin);
                    length = iA == -1 ? iMin : iA + 1;
                }
                arrayList.add(str2.substring(i, length));
                i = length;
            }
        }
        return arrayList;
    }

    public e(i iVar) {
        this.a = iVar;
    }
}
