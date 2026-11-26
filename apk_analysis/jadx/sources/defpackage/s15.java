package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes5.dex */
public final class s15 implements r15 {
    public final Matcher a;
    public final CharSequence b;
    public final b c;
    public a d;

    public static final class a extends u0<String> {
        public a() {
        }

        @Override // defpackage.v, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return super.contains((String) obj);
            }
            return false;
        }

        @Override // defpackage.u0, java.util.List
        public final Object get(int i) {
            String strGroup = s15.this.a.group(i);
            return strGroup == null ? "" : strGroup;
        }

        @Override // defpackage.u0, defpackage.v
        public final int getSize() {
            return s15.this.a.groupCount() + 1;
        }

        @Override // defpackage.u0, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof String) {
                return super.indexOf((String) obj);
            }
            return -1;
        }

        @Override // defpackage.u0, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return super.lastIndexOf((String) obj);
            }
            return -1;
        }
    }

    public static final class b extends v<q15> {
        public b() {
        }

        public final q15 b(int i) {
            Matcher matcher = s15.this.a;
            y74 y74VarN = kx6.n(matcher.start(i), matcher.end(i));
            if (y74VarN.b < 0) {
                return null;
            }
            String strGroup = matcher.group(i);
            strGroup.getClass();
            return new q15(strGroup, y74VarN);
        }

        @Override // defpackage.v, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof q15) {
                return super.contains((q15) obj);
            }
            return false;
        }

        @Override // defpackage.v
        public final int getSize() {
            return s15.this.a.groupCount() + 1;
        }

        @Override // defpackage.v, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator<q15> iterator() {
            return new f29.a(new f29(new pn1(u96.f(this)), new q92(this, 1)));
        }
    }

    public s15(Matcher matcher, CharSequence charSequence) {
        charSequence.getClass();
        this.a = matcher;
        this.b = charSequence;
        this.c = new b();
    }

    public final List<String> a() {
        a aVar = this.d;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.d = aVar2;
        return aVar2;
    }

    @Override // defpackage.r15
    public final b getGroups() {
        return this.c;
    }

    @Override // defpackage.r15
    public final y74 getRange() {
        Matcher matcher = this.a;
        return kx6.n(matcher.start(), matcher.end());
    }

    @Override // defpackage.r15
    public final String getValue() {
        String strGroup = this.a.group();
        strGroup.getClass();
        return strGroup;
    }

    @Override // defpackage.r15
    public final s15 next() {
        Matcher matcher = this.a;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        CharSequence charSequence = this.b;
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        matcher2.getClass();
        return eg9.b(matcher2, iEnd, charSequence);
    }
}
