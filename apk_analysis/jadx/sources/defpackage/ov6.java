package defpackage;

import androidx.webkit.ProxyConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.helper.ValidationException;
import org.jsoup.select.Selector$SelectorParseException;

/* JADX INFO: loaded from: classes5.dex */
public final class ov6 implements AutoCloseable {
    public static final char[] e = {'>', '+', '~'};
    public static final String[] f = {"=", "!=", "^=", "$=", "*=", "~="};
    public static final char[] g = {',', ')'};
    public static final Pattern h = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    public static final Pattern i = Pattern.compile("([+-])?(\\d+)");
    public final hx8 b;
    public final String c;
    public boolean d;

    public ov6(String str) {
        yb9.c(str);
        String strTrim = str.trim();
        this.c = strTrim;
        this.b = new hx8(strTrim);
    }

    public static y03 Q(String str) {
        try {
            ov6 ov6Var = new ov6(str);
            try {
                y03 y03VarV = ov6Var.V();
                hx8 hx8Var = ov6Var.b;
                hx8Var.p();
                ea1 ea1Var = hx8Var.b;
                if (!ea1Var.Z()) {
                    throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", ov6Var.c, ea1Var.V());
                }
                ov6Var.close();
                return y03VarV;
            } catch (Throwable th) {
                try {
                    ov6Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IllegalArgumentException e2) {
            throw new Selector$SelectorParseException(e2.getMessage());
        }
        throw new Selector$SelectorParseException(e2.getMessage());
    }

    public static y03 a(y03 y03Var, y03 y03Var2) {
        if (y03Var == null) {
            return y03Var2;
        }
        if (!(y03Var instanceof io1.a)) {
            return new io1.a(Arrays.asList(y03Var, y03Var2));
        }
        io1.a aVar = (io1.a) y03Var;
        aVar.a.add(y03Var2);
        aVar.c();
        return y03Var;
    }

    public final y03 E(boolean z) {
        String str = z ? ":matchesOwn" : ":matches";
        String strN = n();
        yb9.d(strN, str.concat("(regex) query must not be empty"));
        i17 i17VarA = i17.a(strN);
        if (this.d) {
            return new ao5.d(i17VarA);
        }
        return z ? new y03.k0(i17VarA) : new y03.j0(i17VarA);
    }

    public final y03 P(boolean z) {
        String str = z ? ":matchesWholeOwnText" : ":matchesWholeText";
        String strN = n();
        yb9.d(strN, str.concat("(regex) query must not be empty"));
        i17 i17VarA = i17.a(strN);
        return z ? new y03.l0(i17VarA) : new y03.m0(i17VarA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [y03] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [y03] */
    /* JADX WARN: Type inference failed for: r3v4, types: [y03] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [cb8, cb8$c] */
    /* JADX WARN: Type inference failed for: r3v8, types: [y03] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public final y03 U() {
        hx8 hx8Var = this.b;
        hx8Var.p();
        ea1 ea1Var = hx8Var.b;
        char[] cArr = e;
        ?? hVar = ea1Var.r0(cArr) ? new cb8.h() : X();
        while (true) {
            char cP = hx8Var.p() ? ' ' : (char) 0;
            if (!ea1Var.r0(cArr)) {
                if (!ea1Var.r0(g)) {
                    break;
                }
                break;
            }
            cP = ea1Var.p();
            if (cP == 0) {
                break;
            }
            y03 y03VarX = X();
            if (cP == ' ') {
                hVar = a(new cb8.a(hVar), y03VarX);
            } else if (cP == '+') {
                hVar = a(new cb8.d(hVar), y03VarX);
            } else if (cP == '>') {
                hVar = hVar instanceof cb8.c ? (cb8.c) hVar : new cb8.c(hVar);
                hVar.c.add(y03VarX);
                hVar.d = y03VarX.a() + hVar.d;
                hVar.b |= y03VarX.b();
            } else {
                if (cP != '~') {
                    throw new Selector$SelectorParseException("Unknown combinator '%s'", Character.valueOf(cP));
                }
                hVar = a(new cb8.g(hVar), y03VarX);
            }
        }
        return hVar;
    }

    public final y03 V() {
        y03 y03VarU = U();
        while (this.b.y(',')) {
            y03 y03VarU2 = U();
            if (y03VarU instanceof io1.b) {
                io1.b bVar = (io1.b) y03VarU;
                bVar.a.add(y03VarU2);
                bVar.c();
            } else {
                y03VarU = new io1.b(y03VarU, y03VarU2);
            }
        }
        return y03VarU;
    }

    public final y03 X() {
        y03 n0Var;
        y03 y03VarA;
        hx8 hx8Var = this.b;
        hx8Var.p();
        ea1 ea1Var = hx8Var.b;
        if (Character.isLetterOrDigit(ea1Var.X()) || ea1Var.x0("*|")) {
            StringBuilder sbA = ja8.a();
            while (!ea1Var.Z()) {
                char cX = ea1Var.X();
                if (cX != '\\') {
                    if (!Character.isLetterOrDigit(ea1Var.X()) && !ea1Var.r0(hx8.c)) {
                        break;
                    }
                    sbA.append(cX);
                    hx8Var.m();
                } else {
                    hx8Var.m();
                    if (ea1Var.Z()) {
                        break;
                    }
                    sbA.append(ea1Var.p());
                }
            }
            String strB = mo5.b(ja8.k(sbA));
            yb9.c(strB);
            if (strB.startsWith("*|")) {
                String strSubstring = strB.substring(2);
                n0Var = new io1.b(new y03.n0(strSubstring), new y03.o0(StringUtils.PROCESS_POSTFIX_DELIMITER.concat(strSubstring)));
            } else if (strB.endsWith("|*")) {
                n0Var = new y03.p0(strB.substring(0, strB.length() - 2).concat(StringUtils.PROCESS_POSTFIX_DELIMITER));
            } else {
                if (strB.contains("|")) {
                    strB = strB.replace("|", StringUtils.PROCESS_POSTFIX_DELIMITER);
                }
                n0Var = new y03.n0(strB);
            }
            y03VarA = n0Var;
        } else {
            y03VarA = hx8Var.y('*') ? new y03.a() : null;
        }
        while (true) {
            y03 y03VarZ = Z();
            if (y03VarZ == null) {
                break;
            }
            y03VarA = a(y03VarA, y03VarZ);
        }
        if (y03VarA != null) {
            return y03VarA;
        }
        throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.c, ea1Var.V());
    }

    public final y03 Z() {
        y03 cVar;
        hx8 hx8Var = this.b;
        ea1 ea1Var = hx8Var.b;
        if (hx8Var.y('#')) {
            String strO = hx8Var.o();
            yb9.c(strO);
            return new y03.r(strO);
        }
        if (hx8Var.y('.')) {
            String strO2 = hx8Var.o();
            yb9.c(strO2);
            return new y03.k(strO2.trim());
        }
        if (ea1Var.q0('[')) {
            hx8 hx8Var2 = new hx8(hx8Var.n('[', ']'));
            try {
                y03 y03VarY = y(hx8Var2);
                hx8Var2.close();
                return y03VarY;
            } catch (Throwable th) {
                try {
                    hx8Var2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        boolean zN0 = ea1Var.n0("::");
        byte b = 5;
        String str = this.c;
        if (!zN0) {
            if (!hx8Var.y(':')) {
                return null;
            }
            String strO3 = hx8Var.o();
            switch (strO3.hashCode()) {
                case -2141736343:
                    b = strO3.equals("containsData") ? (byte) 0 : (byte) -1;
                    break;
                case -2136991809:
                    b = strO3.equals("first-child") ? (byte) 1 : (byte) -1;
                    break;
                case -1939921007:
                    b = strO3.equals("matchesWholeText") ? (byte) 2 : (byte) -1;
                    break;
                case -1754914063:
                    b = strO3.equals("nth-child") ? (byte) 3 : (byte) -1;
                    break;
                case -1629748624:
                    b = strO3.equals("nth-last-child") ? (byte) 4 : (byte) -1;
                    break;
                case -947996741:
                    if (!strO3.equals("only-child")) {
                        b = -1;
                    }
                    break;
                case -897532411:
                    b = strO3.equals("nth-of-type") ? (byte) 6 : (byte) -1;
                    break;
                case -872629820:
                    b = strO3.equals("nth-last-of-type") ? (byte) 7 : (byte) -1;
                    break;
                case -567445985:
                    b = strO3.equals("contains") ? (byte) 8 : (byte) -1;
                    break;
                case -55413797:
                    b = strO3.equals("containsWholeOwnText") ? (byte) 9 : (byte) -1;
                    break;
                case 3244:
                    b = strO3.equals("eq") ? (byte) 10 : (byte) -1;
                    break;
                case 3309:
                    b = strO3.equals("gt") ? (byte) 11 : (byte) -1;
                    break;
                case 3370:
                    b = strO3.equals("is") ? (byte) 12 : (byte) -1;
                    break;
                case 3464:
                    b = strO3.equals("lt") ? (byte) 13 : (byte) -1;
                    break;
                case 103066:
                    b = strO3.equals("has") ? (byte) 14 : (byte) -1;
                    break;
                case 109267:
                    b = strO3.equals("not") ? (byte) 15 : (byte) -1;
                    break;
                case 3506402:
                    b = strO3.equals("root") ? (byte) 16 : (byte) -1;
                    break;
                case 93819220:
                    b = strO3.equals("blank") ? (byte) 17 : (byte) -1;
                    break;
                case 96634189:
                    b = strO3.equals("empty") ? (byte) 18 : (byte) -1;
                    break;
                case 208017639:
                    b = strO3.equals("containsOwn") ? (byte) 19 : (byte) -1;
                    break;
                case 614017170:
                    b = strO3.equals("matchText") ? (byte) 20 : (byte) -1;
                    break;
                case 835834661:
                    b = strO3.equals("last-child") ? (byte) 21 : (byte) -1;
                    break;
                case 840862003:
                    b = strO3.equals("matches") ? (byte) 22 : (byte) -1;
                    break;
                case 1255901423:
                    b = strO3.equals("matchesWholeOwnText") ? (byte) 23 : (byte) -1;
                    break;
                case 1292941139:
                    b = strO3.equals("first-of-type") ? (byte) 24 : (byte) -1;
                    break;
                case 1455900751:
                    b = strO3.equals("only-of-type") ? (byte) 25 : (byte) -1;
                    break;
                case 1870740819:
                    b = strO3.equals("matchesOwn") ? (byte) 26 : (byte) -1;
                    break;
                case 2014184485:
                    b = strO3.equals("containsWholeText") ? (byte) 27 : (byte) -1;
                    break;
                case 2025926969:
                    b = strO3.equals("last-of-type") ? (byte) 28 : (byte) -1;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    String strE = hx8.E(n());
                    yb9.d(strE, ":containsData(text) query must not be empty");
                    return new y03.l(strE);
                case 1:
                    return new y03.x();
                case 2:
                    return P(false);
                case 3:
                    return v(false, false);
                case 4:
                    return v(true, false);
                case 5:
                    return new y03.f0();
                case 6:
                    return v(false, true);
                case 7:
                    return v(true, true);
                case 8:
                    return o(false);
                case 9:
                    return p(true);
                case 10:
                    return new y03.s(m());
                case 11:
                    return new y03.u(m());
                case 12:
                    yb9.a(":is() must have a selector", hx8Var.y('('));
                    y03 y03VarV = V();
                    yb9.a(":is() must have a selector", hx8Var.y(')'));
                    return new cb8.e(y03VarV);
                case 13:
                    return new y03.v(m());
                case 14:
                    yb9.a(":has() must have a selector", hx8Var.y('('));
                    y03 y03VarV2 = V();
                    yb9.a(":has() must have a selector", hx8Var.y(')'));
                    cb8.b bVar = new cb8.b(y03VarV2);
                    if (y03VarV2 instanceof io1) {
                        for (y03 y03Var : ((io1) y03VarV2).a) {
                            if ((y03Var instanceof cb8.g) || (y03Var instanceof cb8.d)) {
                            }
                        }
                    }
                    return bVar;
                case 15:
                    String strN = n();
                    yb9.d(strN, ":not(selector) subselect must not be empty");
                    return new cb8.f(Q(strN));
                case 16:
                    return new y03.h0();
                case 17:
                    return new ao5.a();
                case 18:
                    return new y03.w();
                case 19:
                    return o(true);
                case 20:
                    y03.i0 i0Var = new y03.i0();
                    if (!y03.i0.a) {
                        y03.i0.a = true;
                        System.err.println("WARNING: :matchText selector is deprecated and will be removed in jsoup 1.24.1. Use Element#selectNodes(String, Class) with selector ::textnode and class TextNode instead.");
                    }
                    return i0Var;
                case 21:
                    return new y03.z();
                case 22:
                    return E(false);
                case 23:
                    return P(true);
                case 24:
                    return new y03.y(0, 1);
                case 25:
                    return new y03.g0();
                case 26:
                    return E(true);
                case 27:
                    return p(false);
                case 28:
                    return new y03.a0(0, 1);
                default:
                    throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", str, ea1Var.V());
            }
        }
        String strO4 = hx8Var.o();
        this.d = true;
        switch (strO4.hashCode()) {
            case 3076010:
                b = strO4.equals("data") ? (byte) 0 : (byte) -1;
                break;
            case 3386882:
                b = strO4.equals("node") ? (byte) 1 : (byte) -1;
                break;
            case 3556653:
                b = strO4.equals("text") ? (byte) 2 : (byte) -1;
                break;
            case 94504589:
                b = strO4.equals("cdata") ? (byte) 3 : (byte) -1;
                break;
            case 950398559:
                b = strO4.equals("comment") ? (byte) 4 : (byte) -1;
                break;
            case 1563127392:
                if (!strO4.equals("leafnode")) {
                    b = -1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                cVar = new ao5.c(strO4);
                break;
            case 1:
                cVar = new ao5.c(strO4);
                break;
            case 2:
                cVar = new ao5.c(strO4);
                break;
            case 3:
                cVar = new ao5.c(strO4);
                break;
            case 4:
                cVar = new ao5.c(strO4);
                break;
            case 5:
                cVar = new ao5.c(strO4);
                break;
            default:
                throw new Selector$SelectorParseException("Could not parse query '%s': unknown node type '::%s'", str, strO4);
        }
        while (true) {
            y03 y03VarZ = Z();
            if (y03VarZ == null) {
                this.d = false;
                return cVar;
            }
            cVar = a(cVar, y03VarZ);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }

    public final int m() {
        String strTrim = n().trim();
        boolean z = false;
        if (strTrim != null && strTrim.length() != 0) {
            int length = strTrim.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (ja8.f(strTrim.charAt(i2))) {
                }
            }
            z = true;
        }
        yb9.a("Index must be numeric", z);
        return Integer.parseInt(strTrim);
    }

    public final String n() {
        return this.b.n('(', ')');
    }

    public final y03 o(boolean z) {
        String str = z ? ":containsOwn" : ":contains";
        String strE = hx8.E(n());
        yb9.d(strE, str.concat("(text) query must not be empty"));
        if (this.d) {
            return new ao5.b(strE);
        }
        return z ? new y03.m(strE) : new y03.n(strE);
    }

    public final y03 p(boolean z) {
        String str = z ? ":containsWholeOwnText" : ":containsWholeText";
        String strE = hx8.E(n());
        yb9.d(strE, str.concat("(text) query must not be empty"));
        return z ? new y03.o(strE) : new y03.p(strE);
    }

    public final String toString() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d A[PHI: r2
      0x001d: PHI (r2v7 int) = (r2v0 int), (r2v5 int) binds: [B:6:0x001b, B:18:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    public final y03.q v(boolean z, boolean z2) {
        String strB = mo5.b(n());
        int i2 = 1;
        int i3 = 2;
        if (!"odd".equals(strB)) {
            if ("even".equals(strB)) {
                i2 = 0;
            } else {
                Matcher matcher = h.matcher(strB);
                if (matcher.matches()) {
                    if (matcher.group(3) != null) {
                        i3 = Integer.parseInt(matcher.group(1).replaceFirst("^\\+", ""));
                    } else {
                        i3 = "-".equals(matcher.group(2)) ? -1 : 1;
                    }
                    if (matcher.group(4) != null) {
                        i2 = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", ""));
                    } else {
                        i2 = 0;
                    }
                } else {
                    Matcher matcher2 = i.matcher(strB);
                    if (!matcher2.matches()) {
                        throw new Selector$SelectorParseException("Could not parse nth-index '%s': unexpected format", strB);
                    }
                    i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                    i3 = 0;
                }
            }
        }
        if (z2) {
            return z ? new y03.d0(i3, i2) : new y03.e0(i3, i2);
        }
        return z ? new y03.c0(i3, i2) : new y03.b0(i3, i2);
    }

    public final y03 y(hx8 hx8Var) {
        ea1 ea1Var = hx8Var.b;
        StringBuilder sbA = ja8.a();
        loop0: while (!ea1Var.Z()) {
            for (int i2 = 0; i2 < 6; i2++) {
                if (ea1Var.x0(f[i2])) {
                    break loop0;
                }
            }
            sbA.append(ea1Var.p());
        }
        String strB = mo5.b(ja8.k(sbA));
        yb9.c(strB);
        if (strB.equals("abs:")) {
            throw new ValidationException("Absolute attribute key must have a name");
        }
        hx8Var.p();
        if (ea1Var.Z()) {
            if (strB.startsWith("^")) {
                return new y03.d(strB.substring(1));
            }
            return strB.equals(ProxyConfig.MATCH_ALL_SCHEMES) ? new y03.d("") : new y03.b(strB);
        }
        if (hx8Var.y('=')) {
            return new y03.e(strB, ea1Var.V());
        }
        if (ea1Var.n0("!=")) {
            return new y03.i(strB, ea1Var.V());
        }
        if (ea1Var.n0("^=")) {
            return new y03.j(strB, ea1Var.V());
        }
        if (ea1Var.n0("$=")) {
            return new y03.g(strB, ea1Var.V());
        }
        if (ea1Var.n0("*=")) {
            return new y03.f(strB, ea1Var.V());
        }
        if (ea1Var.n0("~=")) {
            return new y03.h(strB, i17.a(ea1Var.V()));
        }
        throw new Selector$SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.c, ea1Var.V());
    }
}
