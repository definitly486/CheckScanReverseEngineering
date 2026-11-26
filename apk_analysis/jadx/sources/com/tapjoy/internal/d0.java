package com.tapjoy.internal;

import com.tapjoy.TJAdUnitConstants;
import defpackage.ah;
import defpackage.av;
import defpackage.dd2;
import defpackage.fg;
import defpackage.ki0;
import defpackage.qz0;
import defpackage.r01;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 implements Closeable {
    public final StringWriter a;
    public final ArrayList b;
    public final String c;

    public d0(StringWriter stringWriter) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(a0.f);
        this.c = StringUtils.PROCESS_POSTFIX_DELIMITER;
        this.a = stringWriter;
    }

    public final void a(Object obj) {
        if (obj == null) {
            a(false);
            this.a.write("null");
            return;
        }
        if (obj instanceof Boolean) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            a(false);
            this.a.write(zBooleanValue ? TJAdUnitConstants.String.TRUE : TJAdUnitConstants.String.FALSE);
            return;
        }
        if (obj instanceof Number) {
            if (obj instanceof Long) {
                long jLongValue = ((Number) obj).longValue();
                a(false);
                this.a.write(Long.toString(jLongValue));
                return;
            }
            if (obj instanceof Double) {
                double dDoubleValue = ((Number) obj).doubleValue();
                if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                    av.d("Numeric values must be finite, but was ", dDoubleValue);
                    return;
                } else {
                    a(false);
                    this.a.append((CharSequence) Double.toString(dDoubleValue));
                    return;
                }
            }
            Number number = (Number) obj;
            String string = number.toString();
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                r01.e(number, "Numeric values must be finite, but was ");
                return;
            } else {
                a(false);
                this.a.append((CharSequence) string);
                return;
            }
        }
        if (obj instanceof String) {
            a(false);
            a((String) obj);
            return;
        }
        if (obj instanceof v) {
            a(false);
            throw null;
        }
        if (obj instanceof Collection) {
            a0 a0Var = a0.a;
            a(true);
            this.b.add(a0Var);
            this.a.write("[");
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            a(a0.a, a0.b, "]");
            return;
        }
        if (obj instanceof Map) {
            a0 a0Var2 = a0.c;
            a(true);
            this.b.add(a0Var2);
            this.a.write("{");
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                String strValueOf = String.valueOf(entry.getKey());
                a0 a0Var3 = (a0) dd2.b(1, this.b);
                if (a0Var3 == a0.e) {
                    this.a.write(44);
                } else if (a0Var3 != a0.c) {
                    qz0.g(this.b, "Nesting problem: ");
                    return;
                }
                a0 a0Var4 = a0.d;
                ArrayList arrayList = this.b;
                arrayList.set(arrayList.size() - 1, a0Var4);
                a(strValueOf);
                a(entry.getValue());
            }
            a(a0.c, a0.e, "}");
            return;
        }
        if (obj instanceof Date) {
            String str = ((DateFormat) n.a.get()).format((Date) obj);
            if (str == null) {
                a(false);
                this.a.write("null");
                return;
            } else {
                a(false);
                a(str);
                return;
            }
        }
        if (!(obj instanceof Object[])) {
            fg.c("Unknown type: ".concat(obj.getClass().getName()));
            return;
        }
        a0 a0Var5 = a0.a;
        a(true);
        this.b.add(a0Var5);
        this.a.write("[");
        for (Object obj2 : (Object[]) obj) {
            a(obj2);
        }
        a(a0.a, a0.b, "]");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
        if (((a0) dd2.b(1, this.b)) == a0.g) {
            return;
        }
        ki0.d("Incomplete document");
    }

    public final d0 a(a0 a0Var, a0 a0Var2, String str) throws IOException {
        a0 a0Var3 = (a0) dd2.b(1, this.b);
        if (a0Var3 != a0Var2 && a0Var3 != a0Var) {
            qz0.g(this.b, "Nesting problem: ");
            return null;
        }
        ArrayList arrayList = this.b;
        arrayList.remove(arrayList.size() - 1);
        this.a.write(str);
        return this;
    }

    public final void a(boolean z) throws IOException {
        int iOrdinal = ((a0) dd2.b(1, this.b)).ordinal();
        if (iOrdinal == 0) {
            a0 a0Var = a0.b;
            ArrayList arrayList = this.b;
            arrayList.set(arrayList.size() - 1, a0Var);
            return;
        }
        if (iOrdinal == 1) {
            this.a.append(',');
            return;
        }
        if (iOrdinal == 3) {
            this.a.append((CharSequence) this.c);
            a0 a0Var2 = a0.e;
            ArrayList arrayList2 = this.b;
            arrayList2.set(arrayList2.size() - 1, a0Var2);
            return;
        }
        if (iOrdinal != 5) {
            if (iOrdinal != 6) {
                qz0.g(this.b, "Nesting problem: ");
                return;
            } else {
                ah.f("JSON must have only one top-level value.");
                return;
            }
        }
        if (z) {
            a0 a0Var3 = a0.g;
            ArrayList arrayList3 = this.b;
            arrayList3.set(arrayList3.size() - 1, a0Var3);
            return;
        }
        ah.f("JSON must start with an array or an object.");
    }

    public final void a(String str) throws IOException {
        this.a.write("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                this.a.write("\\f");
            } else if (cCharAt == '\r') {
                this.a.write("\\r");
            } else if (cCharAt == '\"' || cCharAt == '\\') {
                this.a.write(92);
                this.a.write(cCharAt);
            } else if (cCharAt != 8232 && cCharAt != 8233) {
                switch (cCharAt) {
                    case '\b':
                        this.a.write("\\b");
                        break;
                    case '\t':
                        this.a.write("\\t");
                        break;
                    case '\n':
                        this.a.write("\\n");
                        break;
                    default:
                        StringWriter stringWriter = this.a;
                        if (cCharAt <= 31) {
                            stringWriter.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            stringWriter.write(cCharAt);
                        }
                        break;
                }
            } else {
                this.a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        this.a.write("\"");
    }
}
