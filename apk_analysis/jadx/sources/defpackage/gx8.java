package defpackage;

import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gx8 {
    public final i a;
    public int b;
    public int c = -1;

    public static final class a extends b {
        @Override // gx8.b
        public final String toString() {
            return "<![CDATA[" + this.d.e() + "]]>";
        }
    }

    public static final class c extends gx8 {
        public final m54 d;

        public c() {
            super(i.Comment);
            this.d = new m54();
        }

        @Override // defpackage.gx8
        public final void f() {
            super.f();
            this.d.d();
        }

        public final void g(char c) {
            this.d.a(c);
        }

        public final String toString() {
            return "<!--" + this.d.e() + "-->";
        }
    }

    public static final class d extends gx8 {
        public final m54 d;
        public String e;
        public final m54 f;
        public final m54 g;
        public final m54 h;
        public boolean i;

        public d() {
            super(i.Doctype);
            this.d = new m54();
            this.e = null;
            this.f = new m54();
            this.g = new m54();
            this.h = new m54();
            this.i = false;
        }

        @Override // defpackage.gx8
        public final void f() {
            super.f();
            this.d.d();
            this.e = null;
            this.f.d();
            this.g.d();
            this.h.d();
            this.i = false;
        }

        public final String toString() {
            return "<!doctype " + this.d.e() + ">";
        }
    }

    public static final class e extends gx8 {
        public e() {
            super(i.EOF);
        }

        public final String toString() {
            return "";
        }
    }

    public static final class f extends h {
        public f(h39 h39Var) {
            super(i.EndTag, h39Var);
        }

        public final String toString() {
            return "</" + n() + ">";
        }
    }

    public static final class g extends h {
        public g(by3 by3Var) {
            super(i.StartTag, by3Var);
        }

        @Override // gx8.h, defpackage.gx8
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public final h f() {
            super.f();
            this.g = null;
            return this;
        }

        public final String toString() {
            String str = this.f ? "/>" : ">";
            org.jsoup.nodes.b bVar = this.g;
            if (bVar == null || bVar.size() <= 0) {
                return "<" + n() + str;
            }
            return "<" + n() + " " + this.g.toString() + str;
        }
    }

    public static abstract class h extends gx8 {
        public final m54 d;
        public String e;
        public boolean f;
        public org.jsoup.nodes.b g;
        public final m54 h;
        public final m54 i;
        public boolean j;

        public h(i iVar, h39 h39Var) {
            super(iVar);
            this.d = new m54();
            this.f = false;
            this.h = new m54();
            this.i = new m54();
            this.j = false;
            h39Var.getClass();
        }

        public final void g(int i, int i2, char c) {
            this.i.a(c);
        }

        public final void h(int[] iArr, int i, int i2) {
            for (int i3 : iArr) {
                m54 m54Var = this.i;
                StringBuilder sb = (StringBuilder) m54Var.c;
                if (sb != null) {
                    sb.appendCodePoint(i3);
                } else if (((String) m54Var.b) != null) {
                    StringBuilder sbA = ja8.a();
                    m54Var.c = sbA;
                    sbA.append((String) m54Var.b);
                    m54Var.b = null;
                    ((StringBuilder) m54Var.c).appendCodePoint(i3);
                } else {
                    m54Var.b = String.valueOf(Character.toChars(i3));
                }
            }
        }

        public final void i(String str) {
            String strReplace = str.replace((char) 0, (char) 65533);
            m54 m54Var = this.d;
            m54Var.b(strReplace);
            this.e = mo5.b(m54Var.e());
        }

        public final void j(String str) {
            m54 m54Var = this.d;
            m54Var.d();
            m54Var.b = str;
            this.e = mo5.b(m54Var.e());
        }

        public final void k() {
            String strE;
            if (this.g == null) {
                this.g = new org.jsoup.nodes.b();
            }
            m54 m54Var = this.h;
            boolean zC = m54Var.c();
            m54 m54Var2 = this.i;
            if (zC && this.g.size() < 512) {
                String strTrim = m54Var.e().trim();
                if (!strTrim.isEmpty()) {
                    if (m54Var2.c()) {
                        strE = m54Var2.e();
                    } else {
                        strE = this.j ? "" : null;
                    }
                    this.g.b(strTrim, strE);
                }
            }
            m54Var.d();
            m54Var2.d();
            this.j = false;
        }

        public final String l() {
            String str = this.e;
            if (str == null || str.isEmpty()) {
                throw new ValidationException("Must be false");
            }
            return this.e;
        }

        @Override // defpackage.gx8
        /* JADX INFO: renamed from: m */
        public h f() {
            super.f();
            this.d.d();
            this.e = null;
            this.f = false;
            this.g = null;
            this.h.d();
            this.i.d();
            this.j = false;
            return this;
        }

        public final String n() {
            String strE = this.d.e();
            return strE.isEmpty() ? "[unset]" : strE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class i {
        private static final /* synthetic */ i[] $VALUES;
        public static final i Character;
        public static final i Comment;
        public static final i Doctype;
        public static final i EOF;
        public static final i EndTag;
        public static final i StartTag;
        public static final i XmlDecl;

        static {
            i iVar = new i("Doctype", 0);
            Doctype = iVar;
            i iVar2 = new i("StartTag", 1);
            StartTag = iVar2;
            i iVar3 = new i("EndTag", 2);
            EndTag = iVar3;
            i iVar4 = new i("Comment", 3);
            Comment = iVar4;
            i iVar5 = new i("Character", 4);
            Character = iVar5;
            i iVar6 = new i("XmlDecl", 5);
            XmlDecl = iVar6;
            i iVar7 = new i("EOF", 6);
            EOF = iVar7;
            $VALUES = new i[]{iVar, iVar2, iVar3, iVar4, iVar5, iVar6, iVar7};
        }

        public i() {
            throw null;
        }

        public static i valueOf(String str) {
            return (i) Enum.valueOf(i.class, str);
        }

        public static i[] values() {
            return (i[]) $VALUES.clone();
        }
    }

    public static final class j extends h {
        public boolean k;

        @Override // gx8.h
        /* JADX INFO: renamed from: m */
        public final /* bridge */ /* synthetic */ h f() {
            f();
            return this;
        }

        @Override // gx8.h, defpackage.gx8
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public final void f() {
            super.f();
            this.k = true;
        }

        public final String toString() {
            boolean z = this.k;
            String str = z ? "<!" : "<?";
            String str2 = z ? ">" : "?>";
            org.jsoup.nodes.b bVar = this.g;
            if (bVar == null || bVar.size() <= 0) {
                return str + n() + str2;
            }
            return str + n() + " " + this.g.toString() + str2;
        }
    }

    public gx8(i iVar) {
        this.a = iVar;
    }

    public final boolean a() {
        return this.a == i.Comment;
    }

    public final boolean b() {
        return this.a == i.Doctype;
    }

    public final boolean c() {
        return this.a == i.EOF;
    }

    public final boolean d() {
        return this.a == i.EndTag;
    }

    public final boolean e() {
        return this.a == i.StartTag;
    }

    public void f() {
        this.b = -1;
        this.c = -1;
    }

    public static class b extends gx8 {
        public static final String e = String.valueOf((char) 0);
        public final m54 d;

        public b(b bVar) {
            super(i.Character);
            m54 m54Var = new m54();
            this.d = m54Var;
            this.b = bVar.b;
            this.c = bVar.c;
            String strE = bVar.d.e();
            m54Var.d();
            m54Var.b = strE;
        }

        @Override // defpackage.gx8
        public final void f() {
            super.f();
            this.d.d();
        }

        public String toString() {
            return this.d.e();
        }

        public b() {
            super(i.Character);
            this.d = new m54();
        }
    }
}
