package org.jsoup.nodes;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ja8;
import defpackage.mo5;
import defpackage.nw6;
import defpackage.ti0;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Map.Entry<String, String>, Cloneable {
    public static final String[] e = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", TJAdUnitConstants.String.HIDDEN, "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public static final Pattern f = Pattern.compile("[^-a-zA-Z0-9_:.]+");
    public static final Pattern g = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]+");
    public String b;
    public String c;
    public b d;

    public static String b(String str, f.a.EnumC0312a enumC0312a) {
        if (enumC0312a == f.a.EnumC0312a.xml && !e(str)) {
            String strReplaceAll = f.matcher(str).replaceAll("_");
            if (e(strReplaceAll)) {
                return strReplaceAll;
            }
            return null;
        }
        if (enumC0312a != f.a.EnumC0312a.html || d(str)) {
            return str;
        }
        String strReplaceAll2 = g.matcher(str).replaceAll("_");
        if (d(strReplaceAll2)) {
            return strReplaceAll2;
        }
        return null;
    }

    public static void c(String str, String str2, nw6 nw6Var, f.a aVar) {
        nw6Var.b(str);
        if (aVar.g == f.a.EnumC0312a.html) {
            if (str2 == null) {
                return;
            }
            if ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && Arrays.binarySearch(e, mo5.a(str)) >= 0) {
                return;
            }
        }
        nw6Var.b("=\"");
        j.c(nw6Var, b.d(str2), aVar, 2);
        nw6Var.a('\"');
    }

    public static boolean d(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || ((cCharAt >= 127 && cCharAt <= 159) || cCharAt == ' ' || cCharAt == '\"' || cCharAt == '\'' || cCharAt == '/' || cCharAt == '=')) {
                return false;
            }
        }
        return true;
    }

    public static boolean e(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == '_' || cCharAt == ':')) {
            return false;
        }
        for (int i = 1; i < length; i++) {
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '-' || cCharAt2 == '_' || cCharAt2 == ':' || cCharAt2 == '.'))) {
                return false;
            }
        }
        return true;
    }

    public final Object clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e2) {
            ti0.f(e2);
            return null;
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.b.equals(aVar.b) && Objects.equals(this.c, aVar.c);
    }

    @Override // java.util.Map.Entry
    public final String getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final String getValue() {
        return b.d(this.c);
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return Objects.hash(this.b, this.c);
    }

    @Override // java.util.Map.Entry
    public final String setValue(String str) {
        int iL;
        String str2 = str;
        String str3 = this.b;
        String strI = this.c;
        b bVar = this.d;
        if (bVar != null && (iL = bVar.l(str3)) != -1) {
            strI = this.d.i(str3);
            this.d.d[iL] = str2;
        }
        this.c = str2;
        return b.d(strI);
    }

    public final String toString() {
        StringBuilder sbA = ja8.a();
        nw6 nw6VarD = nw6.d(sbA);
        f.a aVar = new f.a();
        String str = this.b;
        String str2 = this.c;
        String strB = b(str, aVar.g);
        if (strB != null) {
            c(strB, str2, nw6VarD, aVar);
        }
        return ja8.k(sbA);
    }
}
