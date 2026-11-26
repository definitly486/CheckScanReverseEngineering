package org.jsoup.nodes;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import defpackage.by3;
import defpackage.co5;
import defpackage.g92;
import defpackage.ja8;
import defpackage.jj8;
import defpackage.mo5;
import defpackage.nw6;
import defpackage.ti0;
import defpackage.w36;
import defpackage.y03;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends h {
    public a k;
    public w36 l;
    public b m;

    public static class a implements Cloneable {
        public j.c b = j.c.base;
        public Charset c = g92.a;
        public final boolean d = true;
        public final int e = 1;
        public final int f = 30;
        public final EnumC0312a g = EnumC0312a.html;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: renamed from: org.jsoup.nodes.f$a$a, reason: collision with other inner class name */
        public static final class EnumC0312a {
            private static final /* synthetic */ EnumC0312a[] $VALUES;
            public static final EnumC0312a html;
            public static final EnumC0312a xml;

            static {
                EnumC0312a enumC0312a = new EnumC0312a(TJAdUnitConstants.String.HTML, 0);
                html = enumC0312a;
                EnumC0312a enumC0312a2 = new EnumC0312a("xml", 1);
                xml = enumC0312a2;
                $VALUES = new EnumC0312a[]{enumC0312a, enumC0312a2};
            }

            public EnumC0312a() {
                throw null;
            }

            public static EnumC0312a valueOf(String str) {
                return (EnumC0312a) Enum.valueOf(EnumC0312a.class, str);
            }

            public static EnumC0312a[] values() {
                return (EnumC0312a[]) $VALUES.clone();
            }
        }

        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final a clone() {
            try {
                a aVar = (a) super.clone();
                String strName = this.c.name();
                aVar.getClass();
                aVar.c = Charset.forName(strName);
                aVar.b = j.c.valueOf(this.b.name());
                return aVar;
            } catch (CloneNotSupportedException e) {
                ti0.f(e);
                return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b limitedQuirks;
        public static final b noQuirks;
        public static final b quirks;

        static {
            b bVar = new b("noQuirks", 0);
            noQuirks = bVar;
            b bVar2 = new b("quirks", 1);
            quirks = bVar2;
            b bVar3 = new b("limitedQuirks", 2);
            limitedQuirks = bVar3;
            $VALUES = new b[]{bVar, bVar2, bVar3};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    static {
        new y03.n0(TJAdUnitConstants.String.TITLE);
    }

    public f(String str, String str2, w36 w36Var) {
        super(new jj8("#root", mo5.b("#root"), str), str2, null);
        this.k = new a();
        this.m = b.noQuirks;
        this.l = w36Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.nodes.h] */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.jsoup.nodes.h] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.jsoup.nodes.h] */
    /* JADX WARN: Type inference failed for: r0v4, types: [org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [org.jsoup.nodes.h] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.jsoup.nodes.h] */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.jsoup.nodes.h, org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r3v5, types: [org.jsoup.nodes.n] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [org.jsoup.nodes.h] */
    public final h J() {
        ?? I = I();
        while (true) {
            if (I == 0) {
                I = F(TJAdUnitConstants.String.HTML);
                break;
            }
            if (!I.t(TJAdUnitConstants.String.HTML)) {
                while (true) {
                    I = I.u();
                    if (I == 0) {
                        I = 0;
                        break;
                    }
                    if (I instanceof h) {
                        I = (h) I;
                        break;
                    }
                }
            } else {
                break;
            }
        }
        ?? I2 = I.I();
        while (I2 != 0) {
            if (!I2.t(TtmlNode.TAG_BODY) && !I2.t("frameset")) {
                while (true) {
                    I2 = I2.u();
                    if (I2 == 0) {
                        I2 = 0;
                        break;
                    }
                    if (I2 instanceof h) {
                        I2 = (h) I2;
                        break;
                    }
                }
            } else {
                return I2;
            }
        }
        return I.F(TtmlNode.TAG_BODY);
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.n
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final f k() {
        f fVar = (f) super.k();
        org.jsoup.nodes.b bVar = this.g;
        if (bVar != null) {
            fVar.g = bVar.clone();
        }
        fVar.k = this.k.clone();
        return fVar;
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.n
    public final String v() {
        return "#document";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.jsoup.nodes.p] */
    /* JADX WARN: Type inference failed for: r4v2, types: [org.jsoup.nodes.p] */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.jsoup.nodes.p, org.jsoup.nodes.p$a] */
    @Override // org.jsoup.nodes.n
    public final String x() {
        ?? pVar;
        StringBuilder sbA = ja8.a();
        n nVarQ = q();
        if (nVarQ != null) {
            nw6 nw6VarD = nw6.d(sbA);
            f fVarZ = nVarQ.z();
            a aVar = fVarZ != null ? fVarZ.k : new f().k;
            aVar.getClass();
            if (aVar.d) {
                pVar = new p.a(nVarQ, nw6VarD, aVar);
                pVar.d = false;
                for (n nVar = nVarQ; nVar != null; nVar = nVar.b) {
                    if ((nVar instanceof h) && ((h) nVar).e.f(64)) {
                        pVar.d = true;
                        break;
                    }
                }
            } else {
                pVar = new p(nVarQ, nw6VarD, aVar);
            }
            while (nVarQ != null) {
                co5.a(pVar, nVarQ);
                nVarQ = nVarQ.u();
            }
        }
        String strK = ja8.k(sbA);
        f fVarZ2 = z();
        return (fVarZ2 != null ? fVarZ2.k : new f().k).d ? strK.trim() : strK;
    }

    public f() {
        this("http://www.w3.org/1999/xhtml", "", new w36(new by3()));
    }
}
