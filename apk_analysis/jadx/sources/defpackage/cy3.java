package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.jsoup.nodes.b.a;

/* JADX INFO: loaded from: classes5.dex */
public enum cy3 {
    Initial { // from class: cy3.k
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                return true;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (!gx8Var.b()) {
                by3Var.d.m = org.jsoup.nodes.f.b.quirks;
                by3Var.l = cy3.BeforeHtml;
                return by3Var.e(gx8Var);
            }
            gx8.d dVar = (gx8.d) gx8Var;
            q36 q36Var = by3Var.h;
            String strE = dVar.d.e();
            q36Var.getClass();
            String strTrim = strE.trim();
            if (!q36Var.a) {
                strTrim = mo5.a(strTrim);
            }
            String strE2 = dVar.f.e();
            String strE3 = dVar.g.e();
            org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(strTrim);
            yb9.e(strE2);
            yb9.e(strE3);
            org.jsoup.nodes.b bVarH = gVar.h();
            bVarH.b("name", strTrim);
            bVarH.b("publicId", strE2);
            bVarH.b("systemId", strE3);
            if (gVar.G("publicId")) {
                gVar.h().b("pubSysKey", "PUBLIC");
            } else if (gVar.G("systemId")) {
                gVar.h().b("pubSysKey", "SYSTEM");
            }
            String str = dVar.e;
            if (str != null) {
                gVar.F();
                org.jsoup.nodes.f fVarZ = gVar.z();
                String strA = (fVarZ != null ? fVarZ.l.c : q36.c).b ? "pubSysKey" : mo5.a("pubSysKey");
                org.jsoup.nodes.b bVarH2 = gVar.h();
                int iP = bVarH2.p(strA);
                if (iP != -1) {
                    bVarH2.d[iP] = str;
                    if (!bVarH2.c[iP].equals(strA)) {
                        bVarH2.c[iP] = strA;
                    }
                } else {
                    bVarH2.b(strA, str);
                }
            }
            by3Var.d.E(gVar);
            if (dVar.i || !gVar.c("name").equals(TJAdUnitConstants.String.HTML) || gVar.c("publicId").equalsIgnoreCase("HTML")) {
                by3Var.d.m = org.jsoup.nodes.f.b.quirks;
            }
            by3Var.l = cy3.BeforeHtml;
            return true;
        }
    },
    BeforeHtml { // from class: cy3.r
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            if (gx8Var.e()) {
                gx8.g gVar = (gx8.g) gx8Var;
                if (gVar.l().equals(TJAdUnitConstants.String.HTML)) {
                    by3Var.C(gVar);
                    by3Var.l = cy3.BeforeHead;
                    return true;
                }
            }
            if (gx8Var.d() && ja8.c(((gx8.f) gx8Var).l(), z.e)) {
                by3Var.g(TJAdUnitConstants.String.HTML);
                by3Var.l = cy3.BeforeHead;
                return by3Var.e(gx8Var);
            }
            if (gx8Var.d()) {
                by3Var.q(this);
                return false;
            }
            by3Var.g(TJAdUnitConstants.String.HTML);
            by3Var.l = cy3.BeforeHead;
            return by3Var.e(gx8Var);
        }
    },
    BeforeHead { // from class: cy3.s
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                return cy3.InBody.f(gx8Var, by3Var);
            }
            if (gx8Var.e()) {
                gx8.g gVar = (gx8.g) gx8Var;
                if (gVar.l().equals(TtmlNode.TAG_HEAD)) {
                    by3Var.o = by3Var.C(gVar);
                    by3Var.l = cy3.InHead;
                    return true;
                }
            }
            if (gx8Var.d() && ja8.c(((gx8.f) gx8Var).l(), z.e)) {
                by3Var.g(TtmlNode.TAG_HEAD);
                return by3Var.e(gx8Var);
            }
            if (gx8Var.d()) {
                by3Var.q(this);
                return false;
            }
            by3Var.g(TtmlNode.TAG_HEAD);
            return by3Var.e(gx8Var);
        }
    },
    InHead { // from class: cy3.t
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            int i = q.a[gx8Var.a.ordinal()];
            if (i == 1) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (i == 2) {
                by3Var.q(this);
                return false;
            }
            if (i != 3) {
                if (i != 4) {
                    by3Var.f(TtmlNode.TAG_HEAD);
                    return by3Var.e(gx8Var);
                }
                String strL = ((gx8.f) gx8Var).l();
                if (strL.equals(TtmlNode.TAG_HEAD)) {
                    by3Var.d();
                    by3Var.l = cy3.AfterHead;
                    return true;
                }
                if (ja8.c(strL, z.c)) {
                    by3Var.f(TtmlNode.TAG_HEAD);
                    return by3Var.e(gx8Var);
                }
                if (!strL.equals("template")) {
                    by3Var.q(this);
                    return false;
                }
                if (!by3Var.H(strL)) {
                    by3Var.q(this);
                    return true;
                }
                by3Var.s(true);
                if (!by3Var.b(strL)) {
                    by3Var.q(this);
                }
                by3Var.K(strL);
                by3Var.k();
                by3Var.L();
                by3Var.Q();
                return true;
            }
            gx8.g gVar = (gx8.g) gx8Var;
            String strL2 = gVar.l();
            if (strL2.equals(TJAdUnitConstants.String.HTML)) {
                return cy3.InBody.f(gx8Var, by3Var);
            }
            if (ja8.c(strL2, z.a)) {
                org.jsoup.nodes.h hVarD = by3Var.D(gVar);
                if (strL2.equals(TtmlNode.RUBY_BASE) && hVarD.r("href") && !by3Var.n) {
                    String strB = hVarD.b("href");
                    if (strB.length() != 0) {
                        by3Var.f = strB;
                        by3Var.n = true;
                        org.jsoup.nodes.f fVar = by3Var.d;
                        fVar.getClass();
                        fVar.H(strB);
                    }
                }
                return true;
            }
            if (strL2.equals("meta")) {
                by3Var.D(gVar);
                return true;
            }
            if (strL2.equals(TJAdUnitConstants.String.TITLE)) {
                cy3.a(gVar, by3Var, by3Var.h(gVar).k());
                return true;
            }
            if (ja8.c(strL2, z.b)) {
                cy3.a(gVar, by3Var, by3Var.h(gVar).k());
                return true;
            }
            if (strL2.equals("noscript")) {
                by3Var.C(gVar);
                by3Var.l = cy3.InHeadNoscript;
                return true;
            }
            if (strL2.equals("script")) {
                by3Var.c.o(kx8.ScriptData);
                by3Var.m = by3Var.l;
                by3Var.l = cy3.Text;
                by3Var.C(gVar);
                return true;
            }
            if (strL2.equals(TtmlNode.TAG_HEAD)) {
                by3Var.q(this);
                return false;
            }
            if (!strL2.equals("template")) {
                by3Var.f(TtmlNode.TAG_HEAD);
                return by3Var.e(gx8Var);
            }
            by3Var.C(gVar);
            by3Var.q.add(null);
            by3Var.u = false;
            cy3 cy3Var = cy3.InTemplate;
            by3Var.l = cy3Var;
            by3Var.M(cy3Var);
            return true;
        }
    },
    InHeadNoscript { // from class: cy3.u
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.b()) {
                by3Var.q(this);
                return true;
            }
            if (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                cy3 cy3Var = cy3.InBody;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (gx8Var.d() && ((gx8.f) gx8Var).l().equals("noscript")) {
                by3Var.d();
                by3Var.l = cy3.InHead;
                return true;
            }
            if (cy3.d(gx8Var) || gx8Var.a() || (gx8Var.e() && ja8.c(((gx8.g) gx8Var).l(), z.f))) {
                cy3 cy3Var2 = cy3.InHead;
                by3Var.getClass();
                return cy3Var2.f(gx8Var, by3Var);
            }
            if (gx8Var.d() && ((gx8.f) gx8Var).l().equals("br")) {
                by3Var.q(this);
                gx8.b bVar = new gx8.b();
                String string = gx8Var.toString();
                m54 m54Var = bVar.d;
                m54Var.d();
                m54Var.b = string;
                by3Var.z(bVar, false);
                return true;
            }
            if ((gx8Var.e() && ja8.c(((gx8.g) gx8Var).l(), z.H)) || gx8Var.d()) {
                by3Var.q(this);
                return false;
            }
            by3Var.q(this);
            gx8.b bVar2 = new gx8.b();
            String string2 = gx8Var.toString();
            m54 m54Var2 = bVar2.d;
            m54Var2.d();
            m54Var2.b = string2;
            by3Var.z(bVar2, false);
            return true;
        }
    },
    AfterHead { // from class: cy3.v
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
            } else if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
            } else if (gx8Var.b()) {
                by3Var.q(this);
            } else if (gx8Var.e()) {
                gx8.g gVar = (gx8.g) gx8Var;
                String strL = gVar.l();
                if (strL.equals(TJAdUnitConstants.String.HTML)) {
                    cy3 cy3Var = cy3.InBody;
                    by3Var.getClass();
                    return cy3Var.f(gx8Var, by3Var);
                }
                if (strL.equals(TtmlNode.TAG_BODY)) {
                    by3Var.C(gVar);
                    by3Var.u = false;
                    by3Var.l = cy3.InBody;
                } else if (strL.equals("frameset")) {
                    by3Var.C(gVar);
                    by3Var.l = cy3.InFrameset;
                } else if (ja8.c(strL, z.g)) {
                    by3Var.q(this);
                    org.jsoup.nodes.h hVar = by3Var.o;
                    by3Var.e.add(hVar);
                    cy3.InHead.f(gx8Var, by3Var);
                    by3Var.P(hVar);
                } else {
                    if (strL.equals(TtmlNode.TAG_HEAD)) {
                        by3Var.q(this);
                        return false;
                    }
                    by3Var.g(TtmlNode.TAG_BODY);
                    by3Var.u = true;
                    by3Var.e(gx8Var);
                }
            } else if (gx8Var.d()) {
                String strL2 = ((gx8.f) gx8Var).l();
                if (ja8.c(strL2, z.d)) {
                    by3Var.g(TtmlNode.TAG_BODY);
                    by3Var.u = true;
                    by3Var.e(gx8Var);
                } else {
                    if (!strL2.equals("template")) {
                        by3Var.q(this);
                        return false;
                    }
                    cy3 cy3Var2 = cy3.InHead;
                    by3Var.getClass();
                    cy3Var2.f(gx8Var, by3Var);
                }
            } else {
                by3Var.g(TtmlNode.TAG_BODY);
                by3Var.u = true;
                by3Var.e(gx8Var);
            }
            return true;
        }
    },
    InBody { // from class: cy3.w
        private static final int MaxStackScan = 24;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:347:0x0590  */
        /* JADX WARN: Code duplicated, block: B:712:0x0aeb  */
        /* JADX WARN: Code duplicated, block: B:744:0x0b70  */
        /* JADX WARN: Code duplicated, block: B:759:0x0ba2  */
        /* JADX WARN: Code duplicated, block: B:761:0x0bae  */
        /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r11v6 org.jsoup.nodes.h, still in use, count: 2, list:
              (r11v6 org.jsoup.nodes.h) from 0x0201: INVOKE (r11v6 org.jsoup.nodes.h) STATIC call: by3.G(org.jsoup.nodes.h):boolean A[MD:(org.jsoup.nodes.h):boolean (m), WRAPPED]
              (r11v6 org.jsoup.nodes.h) from 0x0209: PHI (r11 I:??) = (r11v2 org.jsoup.nodes.h), (r11v6 org.jsoup.nodes.h) binds: [B:137:0x0208, B:839:0x0209] A[DONT_GENERATE, DONT_INLINE]
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
            	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
            	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
            	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
            	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
            	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
            	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
            	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
            */
        @Override // defpackage.cy3
        public final boolean f(defpackage.gx8 r28, defpackage.by3 r29) {
            /*
                Method dump skipped, instruction units count: 3752
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: cy3.w.f(gx8, by3):boolean");
        }

        public final boolean g(gx8 gx8Var, by3 by3Var) {
            gx8Var.getClass();
            String str = ((gx8.f) gx8Var).e;
            ArrayList<org.jsoup.nodes.h> arrayList = by3Var.e;
            if (by3Var.t(str) == null) {
                by3Var.q(this);
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                org.jsoup.nodes.h hVar = arrayList.get(size);
                if (hVar.t(str)) {
                    by3Var.r(str);
                    if (!by3Var.b(str)) {
                        by3Var.q(this);
                    }
                    by3Var.K(str);
                    return true;
                }
                if (by3.G(hVar)) {
                    by3Var.q(this);
                    return false;
                }
            }
            return true;
        }
    },
    Text { // from class: cy3.x
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.a == gx8.i.Character) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            if (!gx8Var.c()) {
                if (!gx8Var.d()) {
                    return true;
                }
                by3Var.d();
                by3Var.l = by3Var.m;
                return true;
            }
            by3Var.q(this);
            by3Var.d();
            cy3 cy3Var = by3Var.m;
            by3Var.l = cy3Var;
            if (cy3Var == cy3.Text) {
                by3Var.l = cy3.InBody;
            }
            return by3Var.e(gx8Var);
        }
    },
    InTable { // from class: cy3.y
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.a == gx8.i.Character && ja8.c(by3Var.a().e.d, z.z)) {
                by3Var.s.clear();
                by3Var.m = by3Var.l;
                by3Var.l = cy3.InTableText;
                return by3Var.e(gx8Var);
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (!gx8Var.e()) {
                if (!gx8Var.d()) {
                    if (!gx8Var.c()) {
                        g(gx8Var, by3Var);
                        return true;
                    }
                    if (by3Var.b(TJAdUnitConstants.String.HTML)) {
                        by3Var.q(this);
                    }
                    return true;
                }
                String strL = ((gx8.f) gx8Var).l();
                if (strL.equals("table")) {
                    if (!by3Var.y(strL)) {
                        by3Var.q(this);
                        return false;
                    }
                    by3Var.K("table");
                    by3Var.Q();
                    return true;
                }
                if (ja8.c(strL, z.y)) {
                    by3Var.q(this);
                    return false;
                }
                if (!strL.equals("template")) {
                    g(gx8Var, by3Var);
                    return true;
                }
                cy3 cy3Var = cy3.InHead;
                by3Var.getClass();
                cy3Var.f(gx8Var, by3Var);
                return true;
            }
            gx8.g gVar = (gx8.g) gx8Var;
            String strL2 = gVar.l();
            if (strL2.equals("caption")) {
                by3Var.m();
                by3Var.q.add(null);
                by3Var.C(gVar);
                by3Var.l = cy3.InCaption;
                return true;
            }
            if (strL2.equals("colgroup")) {
                by3Var.m();
                by3Var.C(gVar);
                by3Var.l = cy3.InColumnGroup;
                return true;
            }
            if (strL2.equals("col")) {
                by3Var.m();
                by3Var.g("colgroup");
                return by3Var.e(gx8Var);
            }
            if (ja8.c(strL2, z.r)) {
                by3Var.m();
                by3Var.C(gVar);
                by3Var.l = cy3.InTableBody;
                return true;
            }
            if (ja8.c(strL2, z.s)) {
                by3Var.m();
                by3Var.g("tbody");
                return by3Var.e(gx8Var);
            }
            if (strL2.equals("table")) {
                by3Var.q(this);
                if (by3Var.y(strL2)) {
                    by3Var.K(strL2);
                    if (by3Var.Q()) {
                        return by3Var.e(gx8Var);
                    }
                    by3Var.C(gVar);
                    return true;
                }
            } else {
                if (ja8.c(strL2, z.t)) {
                    cy3 cy3Var2 = cy3.InHead;
                    by3Var.getClass();
                    return cy3Var2.f(gx8Var, by3Var);
                }
                if (strL2.equals("input")) {
                    org.jsoup.nodes.b bVar = gVar.g;
                    if (bVar == null || !bVar.i(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).equalsIgnoreCase(TJAdUnitConstants.String.HIDDEN)) {
                        g(gx8Var, by3Var);
                        return true;
                    }
                    by3Var.D(gVar);
                    return true;
                }
                if (!strL2.equals("form")) {
                    g(gx8Var, by3Var);
                    return true;
                }
                by3Var.q(this);
                if (by3Var.p == null && !by3Var.H("template")) {
                    by3Var.F(gVar, false, false);
                    return true;
                }
            }
            return false;
        }

        public final void g(gx8 gx8Var, by3 by3Var) {
            by3Var.q(this);
            by3Var.v = true;
            cy3.InBody.f(gx8Var, by3Var);
            by3Var.v = false;
        }
    },
    InTableText { // from class: cy3.a
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.a == gx8.i.Character) {
                by3Var.getClass();
                by3Var.s.add(new gx8.b((gx8.b) gx8Var));
                return true;
            }
            if (by3Var.s.size() > 0) {
                gx8 gx8Var2 = by3Var.g;
                for (gx8.b bVar : by3Var.s) {
                    by3Var.g = bVar;
                    if (cy3.d(bVar)) {
                        by3Var.z(bVar, false);
                    } else {
                        by3Var.q(this);
                        if (ja8.c(by3Var.a().e.d, z.z)) {
                            by3Var.v = true;
                            cy3.InBody.f(bVar, by3Var);
                            by3Var.v = false;
                        } else {
                            cy3.InBody.f(bVar, by3Var);
                        }
                    }
                }
                by3Var.g = gx8Var2;
                by3Var.s.clear();
            }
            by3Var.l = by3Var.m;
            return by3Var.e(gx8Var);
        }
    },
    InCaption { // from class: cy3.b
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.d() && ((gx8.f) gx8Var).l().equals("caption")) {
                if (!by3Var.y("caption")) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.s(false);
                if (!by3Var.b("caption")) {
                    by3Var.q(this);
                }
                by3Var.K("caption");
                by3Var.k();
                by3Var.l = cy3.InTable;
                return true;
            }
            if ((!gx8Var.e() || !ja8.c(((gx8.g) gx8Var).l(), z.x)) && (!gx8Var.d() || !((gx8.f) gx8Var).l().equals("table"))) {
                if (gx8Var.d() && ja8.c(((gx8.f) gx8Var).l(), z.I)) {
                    by3Var.q(this);
                    return false;
                }
                cy3 cy3Var = cy3.InBody;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (!by3Var.y("caption")) {
                by3Var.q(this);
                return false;
            }
            by3Var.s(false);
            if (!by3Var.b("caption")) {
                by3Var.q(this);
            }
            by3Var.K("caption");
            by3Var.k();
            cy3 cy3Var2 = cy3.InTable;
            by3Var.l = cy3Var2;
            cy3Var2.f(gx8Var, by3Var);
            return true;
        }
    },
    InColumnGroup { // from class: cy3.c
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            int i = q.a[gx8Var.a.ordinal()];
            if (i == 1) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (i == 2) {
                by3Var.q(this);
                return true;
            }
            if (i != 3) {
                if (i != 4) {
                    if (i == 6 && by3Var.b(TJAdUnitConstants.String.HTML)) {
                        return true;
                    }
                    return g(gx8Var, by3Var);
                }
                String strL = ((gx8.f) gx8Var).l();
                strL.getClass();
                if (strL.equals("template")) {
                    cy3 cy3Var = cy3.InHead;
                    by3Var.getClass();
                    cy3Var.f(gx8Var, by3Var);
                    return true;
                }
                if (!strL.equals("colgroup")) {
                    return g(gx8Var, by3Var);
                }
                if (!by3Var.b(strL)) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.d();
                by3Var.l = cy3.InTable;
                return true;
            }
            gx8.g gVar = (gx8.g) gx8Var;
            String strL2 = gVar.l();
            strL2.getClass();
            switch (strL2) {
                case "template":
                    cy3 cy3Var2 = cy3.InHead;
                    by3Var.getClass();
                    cy3Var2.f(gx8Var, by3Var);
                    return true;
                case "col":
                    by3Var.D(gVar);
                    return true;
                case "html":
                    cy3 cy3Var3 = cy3.InBody;
                    by3Var.getClass();
                    return cy3Var3.f(gx8Var, by3Var);
                default:
                    return g(gx8Var, by3Var);
            }
        }

        public final boolean g(gx8 gx8Var, by3 by3Var) {
            if (!by3Var.b("colgroup")) {
                by3Var.q(this);
                return false;
            }
            by3Var.d();
            by3Var.l = cy3.InTable;
            by3Var.e(gx8Var);
            return true;
        }
    },
    InTableBody { // from class: cy3.d
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            int i = q.a[gx8Var.a.ordinal()];
            if (i == 3) {
                gx8.g gVar = (gx8.g) gx8Var;
                String strL = gVar.l();
                if (strL.equals("tr")) {
                    by3Var.l("tbody", "tfoot", "thead", "template");
                    by3Var.C(gVar);
                    by3Var.l = cy3.InRow;
                    return true;
                }
                if (ja8.c(strL, z.u)) {
                    by3Var.q(this);
                    by3Var.g("tr");
                    return by3Var.e(gVar);
                }
                if (ja8.c(strL, z.A)) {
                    return g(gx8Var, by3Var);
                }
                cy3 cy3Var = cy3.InTable;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (i != 4) {
                cy3 cy3Var2 = cy3.InTable;
                by3Var.getClass();
                return cy3Var2.f(gx8Var, by3Var);
            }
            String strL2 = ((gx8.f) gx8Var).l();
            if (ja8.c(strL2, z.G)) {
                if (!by3Var.y(strL2)) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.l("tbody", "tfoot", "thead", "template");
                by3Var.d();
                by3Var.l = cy3.InTable;
                return true;
            }
            if (strL2.equals("table")) {
                return g(gx8Var, by3Var);
            }
            if (ja8.c(strL2, z.B)) {
                by3Var.q(this);
                return false;
            }
            cy3 cy3Var3 = cy3.InTable;
            by3Var.getClass();
            return cy3Var3.f(gx8Var, by3Var);
        }

        public final boolean g(gx8 gx8Var, by3 by3Var) {
            if (!by3Var.y("tbody") && !by3Var.y("thead") && !by3Var.v("tfoot")) {
                by3Var.q(this);
                return false;
            }
            by3Var.l("tbody", "tfoot", "thead", "template");
            by3Var.f(by3Var.a().e.d);
            return by3Var.e(gx8Var);
        }
    },
    InRow { // from class: cy3.e
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.e()) {
                gx8.g gVar = (gx8.g) gx8Var;
                String strL = gVar.l();
                if (ja8.c(strL, z.u)) {
                    by3Var.n();
                    by3Var.C(gVar);
                    by3Var.l = cy3.InCell;
                    by3Var.q.add(null);
                    return true;
                }
                if (!ja8.c(strL, z.C)) {
                    cy3 cy3Var = cy3.InTable;
                    by3Var.getClass();
                    return cy3Var.f(gx8Var, by3Var);
                }
                if (!by3Var.y("tr")) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.n();
                by3Var.d();
                by3Var.l = cy3.InTableBody;
                return by3Var.e(gx8Var);
            }
            if (!gx8Var.d()) {
                cy3 cy3Var2 = cy3.InTable;
                by3Var.getClass();
                return cy3Var2.f(gx8Var, by3Var);
            }
            String strL2 = ((gx8.f) gx8Var).l();
            if (strL2.equals("tr")) {
                if (!by3Var.y(strL2)) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.n();
                by3Var.d();
                by3Var.l = cy3.InTableBody;
                return true;
            }
            if (strL2.equals("table")) {
                if (!by3Var.y("tr")) {
                    by3Var.q(this);
                    return false;
                }
                by3Var.n();
                by3Var.d();
                by3Var.l = cy3.InTableBody;
                return by3Var.e(gx8Var);
            }
            if (!ja8.c(strL2, z.r)) {
                if (ja8.c(strL2, z.D)) {
                    by3Var.q(this);
                    return false;
                }
                cy3 cy3Var3 = cy3.InTable;
                by3Var.getClass();
                return cy3Var3.f(gx8Var, by3Var);
            }
            if (!by3Var.y(strL2)) {
                by3Var.q(this);
                return false;
            }
            if (!by3Var.y("tr")) {
                return false;
            }
            by3Var.n();
            by3Var.d();
            by3Var.l = cy3.InTableBody;
            return by3Var.e(gx8Var);
        }
    },
    InCell { // from class: cy3.f
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (!gx8Var.d()) {
                if (!gx8Var.e() || !ja8.c(((gx8.g) gx8Var).l(), z.x)) {
                    cy3 cy3Var = cy3.InBody;
                    by3Var.getClass();
                    return cy3Var.f(gx8Var, by3Var);
                }
                if (!by3Var.y("td") && !by3Var.y("th")) {
                    by3Var.q(this);
                    return false;
                }
                if (by3Var.y("td")) {
                    by3Var.f("td");
                } else {
                    by3Var.f("th");
                }
                return by3Var.e(gx8Var);
            }
            String strL = ((gx8.f) gx8Var).l();
            if (ja8.c(strL, z.u)) {
                if (!by3Var.y(strL)) {
                    by3Var.q(this);
                    by3Var.l = cy3.InRow;
                    return false;
                }
                by3Var.s(false);
                if (!by3Var.b(strL)) {
                    by3Var.q(this);
                }
                by3Var.K(strL);
                by3Var.k();
                by3Var.l = cy3.InRow;
                return true;
            }
            if (ja8.c(strL, z.v)) {
                by3Var.q(this);
                return false;
            }
            if (!ja8.c(strL, z.w)) {
                cy3 cy3Var2 = cy3.InBody;
                by3Var.getClass();
                return cy3Var2.f(gx8Var, by3Var);
            }
            if (!by3Var.y(strL)) {
                by3Var.q(this);
                return false;
            }
            if (by3Var.y("td")) {
                by3Var.f("td");
            } else {
                by3Var.f("th");
            }
            return by3Var.e(gx8Var);
        }
    },
    InSelect { // from class: cy3.g
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            switch (q.a[gx8Var.a.ordinal()]) {
                case 1:
                    by3Var.B((gx8.c) gx8Var);
                    return true;
                case 2:
                    by3Var.q(this);
                    return false;
                case 3:
                    gx8.g gVar = (gx8.g) gx8Var;
                    String strL = gVar.l();
                    if (strL.equals(TJAdUnitConstants.String.HTML)) {
                        cy3 cy3Var = cy3.InBody;
                        by3Var.getClass();
                        return cy3Var.f(gVar, by3Var);
                    }
                    if (strL.equals("option")) {
                        if (by3Var.b("option")) {
                            by3Var.f("option");
                        }
                        by3Var.C(gVar);
                    } else {
                        if (!strL.equals("optgroup")) {
                            if (strL.equals("select")) {
                                by3Var.q(this);
                                return by3Var.f("select");
                            }
                            if (ja8.c(strL, z.E)) {
                                by3Var.q(this);
                                if (!by3Var.w("select")) {
                                    return false;
                                }
                                do {
                                    by3Var.K("select");
                                    by3Var.Q();
                                } while (by3Var.w("select"));
                                return by3Var.e(gVar);
                            }
                            if (!strL.equals("script") && !strL.equals("template")) {
                                by3Var.q(this);
                                return false;
                            }
                            cy3 cy3Var2 = cy3.InHead;
                            by3Var.getClass();
                            return cy3Var2.f(gx8Var, by3Var);
                        }
                        if (by3Var.b("option")) {
                            by3Var.f("option");
                        }
                        if (by3Var.b("optgroup")) {
                            by3Var.f("optgroup");
                        }
                        by3Var.C(gVar);
                    }
                    return true;
                case 4:
                    String strL2 = ((gx8.f) gx8Var).l();
                    strL2.getClass();
                    switch (strL2) {
                        case "template":
                            cy3 cy3Var3 = cy3.InHead;
                            by3Var.getClass();
                            return cy3Var3.f(gx8Var, by3Var);
                        case "option":
                            if (by3Var.b("option")) {
                                by3Var.d();
                            } else {
                                by3Var.q(this);
                            }
                            return true;
                        case "select":
                            if (!by3Var.w(strL2)) {
                                by3Var.q(this);
                                return false;
                            }
                            by3Var.K(strL2);
                            by3Var.Q();
                            return true;
                        case "optgroup":
                            if (by3Var.b("option") && by3Var.i(by3Var.a()) != null && by3Var.i(by3Var.a()).t("optgroup")) {
                                by3Var.f("option");
                            }
                            if (by3Var.b("optgroup")) {
                                by3Var.d();
                            } else {
                                by3Var.q(this);
                            }
                            return true;
                        default:
                            by3Var.q(this);
                            return false;
                    }
                case 5:
                    by3Var.z((gx8.b) gx8Var, false);
                    return true;
                case 6:
                    if (!by3Var.b(TJAdUnitConstants.String.HTML)) {
                        by3Var.q(this);
                    }
                    return true;
                default:
                    by3Var.q(this);
                    return false;
            }
        }
    },
    InSelectInTable { // from class: cy3.h
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            boolean zE = gx8Var.e();
            String[] strArr = z.F;
            if (zE && ja8.c(((gx8.g) gx8Var).l(), strArr)) {
                by3Var.q(this);
                by3Var.K("select");
                by3Var.Q();
                return by3Var.e(gx8Var);
            }
            if (gx8Var.d()) {
                gx8.f fVar = (gx8.f) gx8Var;
                if (ja8.c(fVar.l(), strArr)) {
                    by3Var.q(this);
                    if (!by3Var.y(fVar.l())) {
                        return false;
                    }
                    by3Var.K("select");
                    by3Var.Q();
                    return by3Var.e(gx8Var);
                }
            }
            cy3 cy3Var = cy3.InSelect;
            by3Var.getClass();
            return cy3Var.f(gx8Var, by3Var);
        }
    },
    InTemplate { // from class: cy3.i
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            switch (q.a[gx8Var.a.ordinal()]) {
                case 1:
                case 2:
                case 5:
                    cy3 cy3Var = cy3.InBody;
                    by3Var.getClass();
                    cy3Var.f(gx8Var, by3Var);
                    return true;
                case 3:
                    String strL = ((gx8.g) gx8Var).l();
                    if (ja8.c(strL, z.J)) {
                        cy3 cy3Var2 = cy3.InHead;
                        by3Var.getClass();
                        cy3Var2.f(gx8Var, by3Var);
                        return true;
                    }
                    if (ja8.c(strL, z.K)) {
                        by3Var.L();
                        cy3 cy3Var3 = cy3.InTable;
                        by3Var.M(cy3Var3);
                        by3Var.l = cy3Var3;
                        return by3Var.e(gx8Var);
                    }
                    if (strL.equals("col")) {
                        by3Var.L();
                        cy3 cy3Var4 = cy3.InColumnGroup;
                        by3Var.M(cy3Var4);
                        by3Var.l = cy3Var4;
                        return by3Var.e(gx8Var);
                    }
                    if (strL.equals("tr")) {
                        by3Var.L();
                        cy3 cy3Var5 = cy3.InTableBody;
                        by3Var.M(cy3Var5);
                        by3Var.l = cy3Var5;
                        return by3Var.e(gx8Var);
                    }
                    if (strL.equals("td") || strL.equals("th")) {
                        by3Var.L();
                        cy3 cy3Var6 = cy3.InRow;
                        by3Var.M(cy3Var6);
                        by3Var.l = cy3Var6;
                        return by3Var.e(gx8Var);
                    }
                    by3Var.L();
                    cy3 cy3Var7 = cy3.InBody;
                    by3Var.M(cy3Var7);
                    by3Var.l = cy3Var7;
                    return by3Var.e(gx8Var);
                case 4:
                    if (!((gx8.f) gx8Var).l().equals("template")) {
                        by3Var.q(this);
                        return false;
                    }
                    cy3 cy3Var8 = cy3.InHead;
                    by3Var.getClass();
                    cy3Var8.f(gx8Var, by3Var);
                    return true;
                case 6:
                    if (by3Var.H("template")) {
                        by3Var.q(this);
                        by3Var.K("template");
                        by3Var.k();
                        by3Var.L();
                        by3Var.Q();
                        if (by3Var.l != cy3.InTemplate && by3Var.r.size() < 12) {
                            return by3Var.e(gx8Var);
                        }
                    }
                    return true;
                default:
                    qz0.g(gx8Var.a, "Unexpected state: ");
                    return false;
            }
        }
    },
    AfterBody { // from class: cy3.j
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            org.jsoup.nodes.h hVarT = by3Var.t(TJAdUnitConstants.String.HTML);
            if (cy3.d(gx8Var)) {
                if (hVarT != null) {
                    by3Var.A((gx8.b) gx8Var, hVarT);
                    return true;
                }
                cy3.InBody.f(gx8Var, by3Var);
                return true;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                return cy3.InBody.f(gx8Var, by3Var);
            }
            if (gx8Var.d() && ((gx8.f) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                by3Var.l = cy3.AfterAfterBody;
                return true;
            }
            if (gx8Var.c()) {
                return true;
            }
            by3Var.q(this);
            if (!by3Var.H(TtmlNode.TAG_BODY)) {
                by3Var.e.add(by3Var.d.J());
            }
            by3Var.l = cy3.InBody;
            return by3Var.e(gx8Var);
        }
    },
    InFrameset { // from class: cy3.l
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (!gx8Var.e()) {
                if (gx8Var.d() && ((gx8.f) gx8Var).l().equals("frameset")) {
                    if (!by3Var.b("frameset")) {
                        by3Var.q(this);
                        return false;
                    }
                    by3Var.d();
                    if (!by3Var.b("frameset")) {
                        by3Var.l = cy3.AfterFrameset;
                        return true;
                    }
                } else {
                    if (!gx8Var.c()) {
                        by3Var.q(this);
                        return false;
                    }
                    if (!by3Var.b(TJAdUnitConstants.String.HTML)) {
                        by3Var.q(this);
                    }
                }
                return true;
            }
            gx8.g gVar = (gx8.g) gx8Var;
            String strL = gVar.l();
            strL.getClass();
            switch (strL) {
                case "frameset":
                    by3Var.C(gVar);
                    return true;
                case "html":
                    cy3 cy3Var = cy3.InBody;
                    by3Var.getClass();
                    return cy3Var.f(gVar, by3Var);
                case "frame":
                    by3Var.D(gVar);
                    return true;
                case "noframes":
                    cy3 cy3Var2 = cy3.InHead;
                    by3Var.getClass();
                    return cy3Var2.f(gVar, by3Var);
                default:
                    by3Var.q(this);
                    return false;
            }
        }
    },
    AfterFrameset { // from class: cy3.m
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (cy3.d(gx8Var)) {
                by3Var.z((gx8.b) gx8Var, false);
                return true;
            }
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b()) {
                by3Var.q(this);
                return false;
            }
            if (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                cy3 cy3Var = cy3.InBody;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (gx8Var.d() && ((gx8.f) gx8Var).l().equals(TJAdUnitConstants.String.HTML)) {
                by3Var.l = cy3.AfterAfterFrameset;
                return true;
            }
            if (gx8Var.e() && ((gx8.g) gx8Var).l().equals("noframes")) {
                cy3 cy3Var2 = cy3.InHead;
                by3Var.getClass();
                return cy3Var2.f(gx8Var, by3Var);
            }
            if (gx8Var.c()) {
                return true;
            }
            by3Var.q(this);
            return false;
        }
    },
    AfterAfterBody { // from class: cy3.n
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b() || (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML))) {
                cy3 cy3Var = cy3.InBody;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (cy3.d(gx8Var)) {
                by3Var.A((gx8.b) gx8Var, by3Var.d);
                return true;
            }
            if (gx8Var.c()) {
                return true;
            }
            by3Var.q(this);
            if (!by3Var.H(TtmlNode.TAG_BODY)) {
                by3Var.e.add(by3Var.d.J());
            }
            by3Var.l = cy3.InBody;
            return by3Var.e(gx8Var);
        }
    },
    AfterAfterFrameset { // from class: cy3.o
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            if (gx8Var.a()) {
                by3Var.B((gx8.c) gx8Var);
                return true;
            }
            if (gx8Var.b() || cy3.d(gx8Var) || (gx8Var.e() && ((gx8.g) gx8Var).l().equals(TJAdUnitConstants.String.HTML))) {
                cy3 cy3Var = cy3.InBody;
                by3Var.getClass();
                return cy3Var.f(gx8Var, by3Var);
            }
            if (gx8Var.c()) {
                return true;
            }
            if (!gx8Var.e() || !((gx8.g) gx8Var).l().equals("noframes")) {
                by3Var.q(this);
                return false;
            }
            cy3 cy3Var2 = cy3.InHead;
            by3Var.getClass();
            return cy3Var2.f(gx8Var, by3Var);
        }
    },
    ForeignContent { // from class: cy3.p
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // defpackage.cy3
        public final boolean f(gx8 gx8Var, by3 by3Var) {
            org.jsoup.nodes.b bVar;
            org.jsoup.nodes.b bVar2;
            org.jsoup.nodes.b bVar3;
            org.jsoup.nodes.h hVarA;
            switch (q.a[gx8Var.a.ordinal()]) {
                case 1:
                    by3Var.B((gx8.c) gx8Var);
                    return true;
                case 2:
                    by3Var.q(this);
                    return true;
                case 3:
                    gx8.g gVar = (gx8.g) gx8Var;
                    if (ja8.b(gVar.e, z.L)) {
                        return by3Var.l.f(gx8Var, by3Var);
                    }
                    if (gVar.e.equals("font") && (((bVar = gVar.g) != null && bVar.p("color") != -1) || (((bVar2 = gVar.g) != null && bVar2.p("face") != -1) || ((bVar3 = gVar.g) != null && bVar3.p(TJAdUnitConstants.String.SIZE) != -1)))) {
                        return by3Var.l.f(gx8Var, by3Var);
                    }
                    String str = by3Var.a().e.b;
                    by3Var.E(gVar, str);
                    kx8 kx8VarK = by3Var.i.d(gVar.d.e(), gVar.e, str, by3Var.h.a).k();
                    if (kx8VarK != null) {
                        boolean zEquals = gVar.e.equals("script");
                        jx8 jx8Var = by3Var.c;
                        if (zEquals) {
                            jx8Var.o(kx8.ScriptData);
                            return true;
                        }
                        jx8Var.o(kx8VarK);
                    }
                    return true;
                case 4:
                    gx8.f fVar = (gx8.f) gx8Var;
                    if (fVar.e.equals("br") || fVar.e.equals(TtmlNode.TAG_P)) {
                        return by3Var.l.f(gx8Var, by3Var);
                    }
                    if (fVar.e.equals("script") && by3Var.e.size() != 0 && (hVarA = by3Var.a()) != null) {
                        jj8 jj8Var = hVarA.e;
                        if (jj8Var.d.equals("script") && jj8Var.b.equals("http://www.w3.org/2000/svg")) {
                            by3Var.d();
                            return true;
                        }
                    }
                    ArrayList<org.jsoup.nodes.h> arrayList = by3Var.e;
                    if (arrayList.isEmpty()) {
                        ah.f("Stack unexpectedly empty");
                        return false;
                    }
                    int size = arrayList.size() - 1;
                    org.jsoup.nodes.h hVar = arrayList.get(size);
                    if (!hVar.t(fVar.e)) {
                        by3Var.q(this);
                    }
                    while (size != 0) {
                        if (hVar.t(fVar.e)) {
                            String str2 = hVar.e.d;
                            for (int size2 = by3Var.e.size() - 1; size2 >= 0 && !by3Var.d().t(str2); size2--) {
                            }
                            return true;
                        }
                        size--;
                        hVar = arrayList.get(size);
                        if (hVar.e.b.equals("http://www.w3.org/1999/xhtml")) {
                            return by3Var.l.f(gx8Var, by3Var);
                        }
                    }
                    return true;
                case 5:
                    gx8.b bVar4 = (gx8.b) gx8Var;
                    if (cy3.d(bVar4)) {
                        by3Var.z(bVar4, false);
                        return true;
                    }
                    by3Var.z(bVar4, true);
                    by3Var.u = false;
                    return true;
                case 6:
                    return true;
                default:
                    qz0.g(gx8Var.a, "Unexpected state: ");
                    return false;
            }
        }
    };

    private static final String nullString = String.valueOf((char) 0);

    public static /* synthetic */ class q {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[gx8.i.values().length];
            a = iArr;
            try {
                iArr[gx8.i.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[gx8.i.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[gx8.i.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[gx8.i.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[gx8.i.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[gx8.i.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class z {
        public static final String[] a = {TtmlNode.RUBY_BASE, "basefont", "bgsound", "command", DynamicLink.Builder.KEY_LINK};
        public static final String[] b = {"noframes", "style"};
        public static final String[] c = {TtmlNode.TAG_BODY, "br", TJAdUnitConstants.String.HTML};
        public static final String[] d = {TtmlNode.TAG_BODY, "br", TJAdUnitConstants.String.HTML};
        public static final String[] e = {TtmlNode.TAG_BODY, "br", TtmlNode.TAG_HEAD, TJAdUnitConstants.String.HTML};
        public static final String[] f = {"basefont", "bgsound", DynamicLink.Builder.KEY_LINK, "meta", "noframes", "style"};
        public static final String[] g = {TtmlNode.RUBY_BASE, "basefont", "bgsound", "command", DynamicLink.Builder.KEY_LINK, "meta", "noframes", "script", "style", "template", TJAdUnitConstants.String.TITLE};
        public static final String[] h = {"address", "article", "aside", "blockquote", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", TtmlNode.TAG_P, "section", "summary", "ul"};
        public static final String[] i = {"h1", "h2", "h3", "h4", "h5", "h6"};
        public static final String[] j = {"address", TtmlNode.TAG_DIV, TtmlNode.TAG_P};
        public static final String[] k = {"dd", "dt"};
        public static final String[] l = {"applet", "marquee", "object"};
        public static final String[] m = {"param", "source", "track"};
        public static final String[] n = {"caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, TtmlNode.TAG_HEAD, "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] o = {"address", "article", "aside", "blockquote", "button", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] p = {TtmlNode.TAG_BODY, "dd", "dt", TJAdUnitConstants.String.HTML, "li", "optgroup", "option", TtmlNode.TAG_P, "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] q = {CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "big", "code", "em", "font", "i", "nobr", CmcdData.STREAMING_FORMAT_SS, "small", "strike", "strong", TtmlNode.TAG_TT, "u"};
        public static final String[] r = {"tbody", "tfoot", "thead"};
        public static final String[] s = {"td", "th", "tr"};
        public static final String[] t = {"script", "style", "template"};
        public static final String[] u = {"td", "th"};
        public static final String[] v = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", TJAdUnitConstants.String.HTML};
        public static final String[] w = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] x = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] y = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", TJAdUnitConstants.String.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] z = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] A = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] B = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", TJAdUnitConstants.String.HTML, "td", "th", "tr"};
        public static final String[] C = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] D = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", TJAdUnitConstants.String.HTML, "td", "th"};
        public static final String[] E = {"input", "keygen", "textarea"};
        public static final String[] F = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] G = {"tbody", "tfoot", "thead"};
        public static final String[] H = {TtmlNode.TAG_HEAD, "noscript"};
        public static final String[] I = {TtmlNode.TAG_BODY, "col", "colgroup", TJAdUnitConstants.String.HTML, "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] J = {TtmlNode.RUBY_BASE, "basefont", "bgsound", DynamicLink.Builder.KEY_LINK, "meta", "noframes", "script", "style", "template", TJAdUnitConstants.String.TITLE};
        public static final String[] K = {"caption", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] L = {"b", "big", "blockquote", TtmlNode.TAG_BODY, "br", TtmlNode.CENTER, "code", "dd", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "dt", "em", "embed", "h1", "h2", "h3", "h4", "h5", "h6", TtmlNode.TAG_HEAD, "hr", "i", "img", "li", "listing", "menu", "meta", "nobr", "ol", TtmlNode.TAG_P, "pre", TtmlNode.ATTR_TTS_RUBY, CmcdData.STREAMING_FORMAT_SS, "small", TtmlNode.TAG_SPAN, "strike", "strong", "sub", "sup", "table", TtmlNode.TAG_TT, "u", "ul", "var"};
    }

    cy3() {
        throw null;
    }

    public static void a(gx8.g gVar, by3 by3Var, kx8 kx8Var) {
        if (kx8Var != null) {
            by3Var.c.o(kx8Var);
        }
        by3Var.m = by3Var.l;
        by3Var.l = Text;
        by3Var.C(gVar);
    }

    public static boolean d(gx8 gx8Var) {
        if (gx8Var.a == gx8.i.Character) {
            return ja8.e(((gx8.b) gx8Var).d.e());
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void e(gx8.g gVar, org.jsoup.nodes.h hVar) {
        Map map;
        Object obj;
        org.jsoup.nodes.b bVar = gVar.g;
        if (bVar != null) {
            bVar.getClass();
            org.jsoup.nodes.b.a aVar = bVar.new a();
            while (aVar.hasNext()) {
                org.jsoup.nodes.a aVar2 = (org.jsoup.nodes.a) aVar.next();
                String str = aVar2.b;
                org.jsoup.nodes.b bVarH = hVar.h();
                if (!bVarH.j(str)) {
                    org.jsoup.nodes.b bVar2 = aVar2.d;
                    if (bVar2 != null && bVar2.j(str)) {
                        if (bVar2.j("/jsoup.userdata")) {
                            int iL = bVar2.l("/jsoup.userdata");
                            if (iL == -1) {
                                HashMap map2 = new HashMap();
                                bVar2.b("/jsoup.userdata", map2);
                                map = map2;
                            } else {
                                map = (Map) bVar2.d[iL];
                            }
                            obj = map.get("jsoup.attrs");
                        } else {
                            obj = null;
                        }
                        Map map3 = (Map) obj;
                        if (map3 == null || ((org.jsoup.nodes.q.a) map3.get(str)) == null) {
                            int i2 = org.jsoup.nodes.q.a.c;
                        }
                    } else {
                        int i3 = org.jsoup.nodes.q.a.c;
                    }
                    bVarH.r(str, org.jsoup.nodes.b.d(aVar2.c));
                    aVar2.d = bVarH;
                }
            }
        }
    }

    public abstract boolean f(gx8 gx8Var, by3 by3Var);
}
