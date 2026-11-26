package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.jsoup.helper.ValidationException;
import org.jsoup.nodes.b;
import org.jsoup.nodes.c;
import org.jsoup.nodes.d;
import org.jsoup.nodes.e;
import org.jsoup.nodes.h;
import org.jsoup.nodes.l;
import org.jsoup.nodes.n;
import org.jsoup.nodes.r;

/* JADX INFO: loaded from: classes5.dex */
public final class by3 extends h39 {
    public cy3 l;
    public cy3 m;
    public boolean n;
    public h o;
    public l p;
    public ArrayList<h> q;
    public ArrayList<cy3> r;
    public ArrayList s;
    public gx8.f t;
    public boolean u;
    public boolean v;
    public final String[] w = {null};
    public static final String[] x = {"applet", "caption", TJAdUnitConstants.String.HTML, "marquee", "object", "table", "td", "template", "th"};
    public static final String[] y = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] z = {"desc", "foreignobject", TJAdUnitConstants.String.TITLE};
    public static final String[] A = {"ol", "ul"};
    public static final String[] B = {"button"};
    public static final String[] C = {TJAdUnitConstants.String.HTML, "table"};
    public static final String[] D = {"optgroup", "option"};
    public static final String[] E = {"dd", "dt", "li", "optgroup", "option", TtmlNode.TAG_P, "rb", "rp", "rt", "rtc"};
    public static final String[] F = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", TtmlNode.TAG_P, "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    public static final String[] G = {"address", "applet", "area", "article", "aside", TtmlNode.RUBY_BASE, "basefont", "bgsound", "blockquote", TtmlNode.TAG_BODY, "br", "button", "caption", TtmlNode.CENTER, "col", "colgroup", "dd", "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", TypedValues.AttributesType.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", TtmlNode.TAG_HEAD, "header", "hgroup", "hr", TJAdUnitConstants.String.HTML, "iframe", "img", "input", "keygen", "li", DynamicLink.Builder.KEY_LINK, "listing", "main", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", TtmlNode.TAG_P, "param", "plaintext", "pre", "script", FirebaseAnalytics.Event.SEARCH, "section", "select", "source", "style", "summary", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", TJAdUnitConstants.String.TITLE, "tr", "track", "ul", "wbr", "xmp"};
    public static final String[] H = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] I = {"mi", "mn", "mo", "ms", "mtext"};
    public static final String[] J = {"desc", "foreignObject", TJAdUnitConstants.String.TITLE};
    public static final String[] K = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};

    public static boolean G(h hVar) {
        jj8 jj8Var = hVar.e;
        String str = jj8Var.b;
        String str2 = jj8Var.d;
        str.getClass();
        switch (str) {
            case "http://www.w3.org/1999/xhtml":
                return ja8.c(str2, G);
            case "http://www.w3.org/2000/svg":
                return ja8.c(str2, J);
            case "http://www.w3.org/1998/Math/MathML":
                return ja8.c(str2, H);
            default:
                return false;
        }
    }

    public static boolean I(ArrayList<h> arrayList, h hVar) {
        int size = arrayList.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            if (arrayList.get(i) == hVar) {
                return true;
            }
            i--;
        }
        return false;
    }

    public final void A(gx8.b bVar, h hVar) {
        n eVar;
        String strE = bVar.d.e();
        if (bVar instanceof gx8.a) {
            eVar = new c(strE);
        } else {
            eVar = hVar.e.f(256) ? new e(strE) : new r(strE);
        }
        hVar.E(eVar);
    }

    public final void B(gx8.c cVar) {
        a().E(new d(cVar.d.e()));
    }

    public final h C(gx8.g gVar) {
        h hVarO = o(gVar, "http://www.w3.org/1999/xhtml", false);
        jj8 jj8Var = hVarO.e;
        p(hVarO);
        if (gVar.f) {
            jj8Var.e |= 32;
            if (!jj8Var.h()) {
                if ((jj8Var.e & 1) == 0 || !jj8Var.i()) {
                    jx8 jx8Var = this.c;
                    Object[] objArr = {jj8Var.d};
                    p36 p36Var = jx8Var.b;
                    if (p36Var.i()) {
                        p36Var.add(new n36(jx8Var.a, "Tag [%s] cannot be self-closing; not a void tag", objArr));
                    }
                } else {
                    this.c.o(kx8.Data);
                    jx8 jx8Var2 = this.c;
                    gx8.f fVar = this.t;
                    fVar.f();
                    fVar.j(jj8Var.c);
                    jx8Var2.g(fVar);
                }
            }
        }
        if (jj8Var.h()) {
            d();
        }
        return hVarO;
    }

    public final h D(gx8.g gVar) {
        h hVarO = o(gVar, "http://www.w3.org/1999/xhtml", false);
        p(hVarO);
        d();
        return hVarO;
    }

    public final void E(gx8.g gVar, String str) {
        h hVarO = o(gVar, str, true);
        p(hVarO);
        if (gVar.f) {
            hVarO.e.e |= 32;
            d();
        }
    }

    public final void F(gx8.g gVar, boolean z2, boolean z3) {
        l lVar = (l) o(gVar, "http://www.w3.org/1999/xhtml", false);
        if (!z3 || !H("template")) {
            this.p = lVar;
        }
        p(lVar);
        if (z2) {
            return;
        }
        d();
    }

    public final boolean H(String str) {
        return t(str) != null;
    }

    public final boolean J(String[] strArr) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            if (!ja8.c(this.e.get(size).e.d, strArr)) {
                return true;
            }
        }
        return false;
    }

    public final void K(String str) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            jj8 jj8Var = d().e;
            if (jj8Var.d.equals(str) && jj8Var.b.equals("http://www.w3.org/1999/xhtml")) {
                return;
            }
        }
    }

    public final void L() {
        if (this.r.size() > 0) {
            ArrayList<cy3> arrayList = this.r;
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public final void M(cy3 cy3Var) {
        this.r.add(cy3Var);
    }

    public final void N() {
        if (this.e.size() > 256) {
            return;
        }
        boolean z2 = true;
        h hVar = this.q.size() > 0 ? (h) dd2.b(1, this.q) : null;
        if (hVar == null || I(this.e, hVar)) {
            return;
        }
        int size = this.q.size();
        int i = size - 12;
        if (i < 0) {
            i = 0;
        }
        int i2 = size - 1;
        int i3 = i2;
        while (i3 != i) {
            i3--;
            hVar = this.q.get(i3);
            if (hVar == null || I(this.e, hVar)) {
                z2 = false;
                break;
            }
        }
        while (true) {
            if (!z2) {
                i3++;
                hVar = this.q.get(i3);
            }
            yb9.e(hVar);
            h hVar2 = new h(this.i.d(hVar.v(), hVar.e.d, "http://www.w3.org/1999/xhtml", this.h.a), null, hVar.h().clone());
            p(hVar2);
            this.q.set(i3, hVar2);
            if (i3 == i2) {
                return;
            } else {
                z2 = false;
            }
        }
    }

    public final void O(h hVar) {
        for (int size = this.q.size() - 1; size >= 0; size--) {
            if (this.q.get(size) == hVar) {
                this.q.remove(size);
                return;
            }
        }
    }

    public final void P(h hVar) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            if (this.e.get(size) == hVar) {
                this.e.remove(size);
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0180 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:117:0x0181 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:131:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x014b A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x004d. Please report as an issue. */
    public final boolean Q() {
        int size = this.e.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        cy3 cy3Var = this.l;
        if (this.e.size() == 0) {
            this.l = cy3.InBody;
        }
        boolean z2 = false;
        while (i >= i2) {
            h hVar = this.e.get(i);
            if (i == i2) {
                z2 = true;
            }
            String str = hVar != null ? hVar.e.d : "";
            if ("http://www.w3.org/1999/xhtml".equals(hVar.e.b)) {
                str.getClass();
                switch (str) {
                    case "frameset":
                        this.l = cy3.InFrameset;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "template":
                        cy3 cy3Var2 = this.r.size() > 0 ? (cy3) dd2.b(1, this.r) : null;
                        if (cy3Var2 == null) {
                            throw new ValidationException("Bug: no template insertion mode on stack!");
                        }
                        this.l = cy3Var2;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "select":
                        this.l = cy3.InSelect;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "colgroup":
                        this.l = cy3.InColumnGroup;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "td":
                    case "th":
                        if (z2) {
                            if (z2) {
                                this.l = cy3.InBody;
                            }
                            break;
                        } else {
                            this.l = cy3.InCell;
                        }
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "tr":
                        this.l = cy3.InRow;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "body":
                        this.l = cy3.InBody;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "head":
                        if (z2) {
                            if (z2) {
                                this.l = cy3.InBody;
                            }
                            break;
                        } else {
                            this.l = cy3.InHead;
                        }
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "html":
                        this.l = this.o == null ? cy3.BeforeHead : cy3.AfterHead;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "table":
                        this.l = cy3.InTable;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "tbody":
                    case "tfoot":
                    case "thead":
                        this.l = cy3.InTableBody;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    case "caption":
                        this.l = cy3.InCaption;
                        if (this.l != cy3Var) {
                            return true;
                        }
                        return false;
                    default:
                        if (z2) {
                            this.l = cy3.InBody;
                            if (this.l != cy3Var) {
                                return true;
                            }
                            return false;
                        }
                        break;
                        break;
                }
            }
            i--;
        }
        if (this.l != cy3Var) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0060  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0080  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    @Override // defpackage.h39
    public final boolean e(gx8 gx8Var) {
        boolean zC = true;
        if (!this.e.isEmpty()) {
            h hVarA = a();
            jj8 jj8Var = hVarA.e;
            String str = jj8Var.b;
            if (!"http://www.w3.org/1999/xhtml".equals(str)) {
                String str2 = jj8Var.b;
                if ("http://www.w3.org/1998/Math/MathML".equals(str2) && ja8.c(jj8Var.d, I)) {
                    if (gx8Var.e()) {
                        gx8.g gVar = (gx8.g) gx8Var;
                        if ("mglyph".equals(gVar.e) || "malignmark".equals(gVar.e)) {
                            if (gx8Var.a != gx8.i.Character) {
                                if ("http://www.w3.org/1998/Math/MathML".equals(str)) {
                                    if (!"http://www.w3.org/1998/Math/MathML".equals(str2)) {
                                        if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                        }
                                    } else if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                    }
                                    zC = gx8Var.c();
                                } else {
                                    if (!"http://www.w3.org/1998/Math/MathML".equals(str2)) {
                                        if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                        }
                                    } else if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                    }
                                    zC = gx8Var.c();
                                }
                            }
                        }
                    } else if (gx8Var.a != gx8.i.Character) {
                        if ("http://www.w3.org/1998/Math/MathML".equals(str)) {
                            if (!"http://www.w3.org/1998/Math/MathML".equals(str2)) {
                                if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                }
                            } else if (!"http://www.w3.org/2000/svg".equals(str2)) {
                            }
                            zC = gx8Var.c();
                        } else {
                            if (!"http://www.w3.org/1998/Math/MathML".equals(str2)) {
                                if (!"http://www.w3.org/2000/svg".equals(str2)) {
                                }
                            } else if (!"http://www.w3.org/2000/svg".equals(str2)) {
                            }
                            zC = gx8Var.c();
                        }
                    }
                } else if ("http://www.w3.org/1998/Math/MathML".equals(str) || !hVarA.t("annotation-xml") || !gx8Var.e() || !"svg".equals(((gx8.g) gx8Var).e)) {
                    if (!"http://www.w3.org/1998/Math/MathML".equals(str2) && hVarA.t("annotation-xml")) {
                        String strB = mo5.b(hVarA.c("encoding"));
                        if (strB.equals("text/html") || strB.equals("application/xhtml+xml")) {
                            if (!gx8Var.e()) {
                            }
                        } else if (!"http://www.w3.org/2000/svg".equals(str2)) {
                        }
                    } else if (!"http://www.w3.org/2000/svg".equals(str2) && ja8.b(jj8Var.c, J)) {
                        if (!gx8Var.e() && gx8Var.a != gx8.i.Character) {
                        }
                    }
                    zC = gx8Var.c();
                }
            }
        }
        return (zC ? this.l : cy3.ForeignContent).f(gx8Var, this);
    }

    public final h i(h hVar) {
        if (!I(this.e, hVar)) {
            return null;
        }
        for (int size = this.e.size() - 1; size > 0; size--) {
            if (this.e.get(size) == hVar) {
                return this.e.get(size - 1);
            }
        }
        return null;
    }

    public final void j(h hVar) {
        int size = this.q.size();
        int i = size - 13;
        int i2 = 0;
        if (i < 0) {
            i = 0;
        }
        for (int i3 = size - 1; i3 >= i; i3--) {
            h hVar2 = this.q.get(i3);
            if (hVar2 == null) {
                return;
            }
            if (hVar.e.d.equals(hVar2.e.d) && hVar.h().equals(hVar2.h())) {
                i2++;
            }
            if (i2 == 3) {
                this.q.remove(i3);
                return;
            }
        }
    }

    public final void k() {
        while (!this.q.isEmpty()) {
            int size = this.q.size();
            if ((size > 0 ? this.q.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    public final void l(String... strArr) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            h hVar = this.e.get(size);
            if ("http://www.w3.org/1999/xhtml".equals(hVar.e.b) && (ja8.b(hVar.e.d, strArr) || hVar.t(TJAdUnitConstants.String.HTML))) {
                return;
            }
            d();
        }
    }

    public final void m() {
        l("table", "template");
    }

    public final void n() {
        l("tr", "template");
    }

    public final h o(gx8.g gVar, String str, boolean z2) {
        b bVar = gVar.g;
        if (bVar != null && bVar.size() != 0) {
            int i = 0;
            if (!z2 && !this.h.b) {
                for (int i2 = 0; i2 < bVar.b; i2++) {
                    String str2 = bVar.c[i2];
                    if (!b.q(str2)) {
                        bVar.c[i2] = mo5.a(str2);
                    }
                }
            }
            q36 q36Var = this.h;
            if (bVar.b != 0) {
                boolean z3 = q36Var.b;
                int i3 = 0;
                while (i < bVar.b) {
                    String str3 = bVar.c[i];
                    i++;
                    int i4 = i;
                    while (i4 < bVar.b) {
                        if ((z3 && str3.equals(bVar.c[i4])) || (!z3 && str3.equalsIgnoreCase(bVar.c[i4]))) {
                            i3++;
                            bVar.s(i4);
                            i4--;
                        }
                        i4++;
                    }
                }
                i = i3;
            }
            if (i > 0) {
                c("Dropped duplicate attribute(s) in tag [%s]", gVar.e);
            }
        }
        jj8 jj8VarD = this.i.d(gVar.d.e(), gVar.e, str, (z2 ? q36.d : this.h).a);
        return jj8VarD.d.equals("form") ? new l(jj8VarD, bVar) : new h(jj8VarD, null, bVar);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:68:0x013c A[EDGE_INSN: B:86:0x013c->B:68:0x013c BREAK  A[LOOP:1: B:53:0x00f9->B:58:0x0109]] */
    /* JADX WARN: Code duplicated, block: B:70:0x0140  */
    /* JADX WARN: Code duplicated, block: B:72:0x0144  */
    /* JADX WARN: Code duplicated, block: B:74:0x0157  */
    /* JADX WARN: Code duplicated, block: B:76:0x015f  */
    public final void p(h hVar) {
        h hVarI;
        boolean z2;
        h hVar2;
        h hVar3;
        int iD;
        n[] nVarArr;
        List<n> listP;
        h hVarA;
        n nVar;
        h hVar4;
        h.a aVar;
        jj8 jj8Var = hVar.e;
        this.a.getClass();
        while (this.e.size() >= 512) {
            h hVarD = d();
            if (hVarD == this.o) {
                this.o = null;
            }
            if (hVarD == this.p) {
                this.p = null;
            }
            O(hVarD);
            if (hVarD.t("template")) {
                k();
                if (this.r.size() > 0) {
                    L();
                }
                Q();
            }
        }
        if (this.p != null && jj8Var.b.equals("http://www.w3.org/1999/xhtml") && ja8.c(jj8Var.d, K)) {
            this.p.k.add(hVar);
        }
        if (this.a.b.i() && hVar.r("xmlns") && !hVar.c("xmlns").equals(jj8Var.b)) {
            c("Invalid xmlns attribute [%s] on tag [%s]", hVar.c("xmlns"), jj8Var.c);
        }
        if (this.v && ja8.c(a().e.d, cy3.z.z)) {
            h hVarT = t("table");
            int i = 1;
            if (hVarT != null) {
                hVarI = hVarT.b;
                if (hVarI != null) {
                    z2 = true;
                } else {
                    hVarI = i(hVarT);
                }
                if (z2) {
                    yb9.e(hVarT);
                    yb9.e(hVarT.b);
                    hVar2 = hVar.b;
                    if (hVar2 == hVarT.b && hVar2 != null) {
                        hVar2.C(hVar);
                    }
                    hVar3 = hVarT.b;
                    iD = hVarT.D();
                    nVarArr = new n[]{hVar};
                    hVar3.getClass();
                    listP = hVar3.p();
                    hVarA = nVarArr[0].A();
                    if (hVarA == null && hVarA.f.size() == 1) {
                        List<n> listP2 = hVarA.p();
                        int i2 = 1;
                        while (true) {
                            int i3 = i2 - 1;
                            if (i2 <= 0) {
                                int size = hVarA.f.size();
                                int i4 = 0;
                                while (true) {
                                    aVar = hVarA.f;
                                    if (i4 >= size) {
                                        break;
                                    }
                                    aVar.get(i4).b = null;
                                    i4++;
                                }
                                aVar.clear();
                                ((ArrayList) listP).addAll(iD, Arrays.asList(nVarArr));
                                while (true) {
                                    int i5 = i - 1;
                                    if (i <= 0) {
                                        break;
                                    }
                                    nVarArr[i5].b = hVar3;
                                    i = i5;
                                }
                                hVar3.f.b = false;
                            } else if (nVarArr[i3] != ((ArrayList) listP2).get(i3)) {
                                break;
                            } else {
                                i2 = i3;
                            }
                        }
                        nVar = nVarArr[0];
                        if (nVar != null) {
                            throw new ValidationException("Array must not contain any null objects");
                        }
                        hVar4 = nVar.b;
                        if (hVar4 != null) {
                            hVar4.C(nVar);
                        }
                        nVar.b = hVar3;
                        ((ArrayList) listP).addAll(iD, Arrays.asList(nVarArr));
                        hVar3.f.b = false;
                    } else {
                        nVar = nVarArr[0];
                        if (nVar != null) {
                            throw new ValidationException("Array must not contain any null objects");
                        }
                        hVar4 = nVar.b;
                        if (hVar4 != null) {
                            hVar4.C(nVar);
                        }
                        nVar.b = hVar3;
                        ((ArrayList) listP).addAll(iD, Arrays.asList(nVarArr));
                        hVar3.f.b = false;
                    }
                } else {
                    hVarI.E(hVar);
                }
            } else {
                hVarI = this.e.get(0);
            }
            z2 = false;
            if (z2) {
                yb9.e(hVarT);
                yb9.e(hVarT.b);
                hVar2 = hVar.b;
                if (hVar2 == hVarT.b) {
                    hVar2.C(hVar);
                }
                hVar3 = hVarT.b;
                iD = hVarT.D();
                nVarArr = new n[]{hVar};
                hVar3.getClass();
                listP = hVar3.p();
                hVarA = nVarArr[0].A();
                if (hVarA == null) {
                    nVar = nVarArr[0];
                    if (nVar != null) {
                        throw new ValidationException("Array must not contain any null objects");
                    }
                    hVar4 = nVar.b;
                    if (hVar4 != null) {
                        hVar4.C(nVar);
                    }
                    nVar.b = hVar3;
                    ((ArrayList) listP).addAll(iD, Arrays.asList(nVarArr));
                    hVar3.f.b = false;
                } else {
                    nVar = nVarArr[0];
                    if (nVar != null) {
                        throw new ValidationException("Array must not contain any null objects");
                    }
                    hVar4 = nVar.b;
                    if (hVar4 != null) {
                        hVar4.C(nVar);
                    }
                    nVar.b = hVar3;
                    ((ArrayList) listP).addAll(iD, Arrays.asList(nVarArr));
                    hVar3.f.b = false;
                }
            } else {
                hVarI.E(hVar);
            }
        } else {
            a().E(hVar);
        }
        this.e.add(hVar);
    }

    public final void q(cy3 cy3Var) {
        if (this.a.b.i()) {
            this.a.b.add(new n36(this.b, "Unexpected %s token [%s] when in state [%s]", new Object[]{this.g.getClass().getSimpleName(), this.g, cy3Var}));
        }
    }

    public final void r(String str) {
        while (ja8.c(a().e.d, E)) {
            if (str != null && b(str)) {
                return;
            } else {
                d();
            }
        }
    }

    public final void s(boolean z2) {
        String[] strArr = z2 ? F : E;
        while ("http://www.w3.org/1999/xhtml".equals(a().e.b) && ja8.c(a().e.d, strArr)) {
            d();
        }
    }

    public final h t(String str) {
        int size = this.e.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            h hVar = this.e.get(i);
            jj8 jj8Var = hVar.e;
            if (jj8Var.d.equals(str) && jj8Var.b.equals("http://www.w3.org/1999/xhtml")) {
                return hVar;
            }
            i--;
        }
        return null;
    }

    public final String toString() {
        return "TreeBuilder{currentToken=" + this.g + ", state=" + this.l + ", currentElement=" + a() + '}';
    }

    public final boolean u(String str) {
        String[] strArr = this.w;
        strArr[0] = str;
        return x(strArr, x, B);
    }

    public final boolean v(String str) {
        String[] strArr = this.w;
        strArr[0] = str;
        return x(strArr, x, null);
    }

    public final boolean w(String str) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            String str2 = this.e.get(size).e.d;
            if (str2.equals(str)) {
                return true;
            }
            if (!ja8.c(str2, D)) {
                return false;
            }
        }
        return false;
    }

    public final boolean x(String[] strArr, String[] strArr2, String[] strArr3) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            jj8 jj8Var = this.e.get(size).e;
            String str = jj8Var.d;
            String str2 = jj8Var.b;
            if (str2.equals("http://www.w3.org/1999/xhtml")) {
                if (ja8.c(str, strArr)) {
                    return true;
                }
                if (ja8.c(str, strArr2)) {
                    return false;
                }
                if (strArr3 != null && ja8.c(str, strArr3)) {
                    return false;
                }
            } else if (strArr2 != x) {
                continue;
            } else {
                if (str2.equals("http://www.w3.org/1998/Math/MathML") && ja8.c(str, y)) {
                    return false;
                }
                if (str2.equals("http://www.w3.org/2000/svg") && ja8.c(str, z)) {
                    return false;
                }
            }
        }
        return false;
    }

    public final boolean y(String str) {
        String[] strArr = this.w;
        strArr[0] = str;
        return x(strArr, C, null);
    }

    public final void z(gx8.b bVar, boolean z2) {
        m54 m54Var = bVar.d;
        String strE = m54Var.e();
        if (strE.indexOf(0) != -1) {
            String strReplace = z2 ? strE.replace((char) 0, (char) 65533) : strE.replace(gx8.b.e, "");
            m54Var.d();
            m54Var.b = strReplace;
        }
        A(bVar, a());
    }
}
