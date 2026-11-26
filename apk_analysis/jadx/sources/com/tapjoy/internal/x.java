package com.tapjoy.internal;

import com.tapjoy.TJAdUnitConstants;
import defpackage.ah;
import java.io.Closeable;
import java.util.LinkedHashMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x implements Closeable {
    public final LinkedHashMap a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        z zVar = (z) this;
        zVar.a(3);
        while (true) {
            zVar.e();
            int i = zVar.i;
            if (i == 4 || i == 2) {
                break;
            }
            zVar.e();
            if (zVar.i != 5) {
                ah.f("Expected a name but was ".concat(b0.a(zVar.e())));
                return null;
            }
            String str = zVar.j;
            zVar.e();
            zVar.i = 0;
            zVar.k = null;
            zVar.j = null;
            linkedHashMap.put(str, b());
        }
        zVar.a(4);
        return linkedHashMap;
    }

    public final Object b() {
        z zVar = (z) this;
        int iE = zVar.e();
        int iA = c0.a(iE);
        if (iA == 0) {
            LinkedList linkedList = new LinkedList();
            zVar.a(1);
            while (true) {
                zVar.e();
                int i = zVar.i;
                if (i == 4 || i == 2) {
                    break;
                }
                linkedList.add(b());
            }
            zVar.a(2);
            return linkedList;
        }
        if (iA == 2) {
            return a();
        }
        if (iA == 5) {
            zVar.e();
            int i2 = zVar.i;
            if (i2 != 6 && i2 != 7) {
                ah.f("Expected a string but was ".concat(b0.a(zVar.e())));
                return null;
            }
            String str = zVar.k;
            zVar.e();
            zVar.i = 0;
            zVar.k = null;
            zVar.j = null;
            return str;
        }
        if (iA == 6) {
            zVar.e();
            int i3 = zVar.i;
            if (i3 != 6 && i3 != 7) {
                ah.f("Expected a string but was ".concat(b0.a(zVar.e())));
                return null;
            }
            String str2 = zVar.k;
            zVar.e();
            zVar.i = 0;
            zVar.k = null;
            zVar.j = null;
            return new s0(str2);
        }
        if (iA == 7) {
            zVar.e();
            int i4 = zVar.i;
            if (i4 != 8) {
                ah.f("Expected a boolean but was ".concat(b0.a(i4)));
                return null;
            }
            boolean z = zVar.k == TJAdUnitConstants.String.TRUE;
            zVar.e();
            zVar.i = 0;
            zVar.k = null;
            zVar.j = null;
            return Boolean.valueOf(z);
        }
        if (iA != 8) {
            ah.f("Expected a value but was ".concat(b0.a(iE)));
            return null;
        }
        zVar.e();
        int i5 = zVar.i;
        if (i5 != 9) {
            ah.f("Expected null but was ".concat(b0.a(i5)));
            return null;
        }
        zVar.e();
        zVar.i = 0;
        zVar.k = null;
        zVar.j = null;
        return null;
    }
}
