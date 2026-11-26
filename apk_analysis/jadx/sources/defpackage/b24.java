package defpackage;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b24 {
    public final Context a;
    public final Object b;
    public final xk8 c;
    public final Map<String, String> d;
    public final w93 e;
    public final o22 f;
    public final o22 g;
    public final o22 h;
    public final sx0 i;
    public final sx0 j;
    public final sx0 k;
    public final nl3<b24, x04> l;
    public final nl3<b24, x04> m;
    public final nl3<b24, x04> n;
    public final w18 o;
    public final md7 p;
    public final re6 q;
    public final b53 r;
    public final c s;
    public final b t;

    public static final class b {
        public static final b o;
        public final w93 a;
        public final o22 b;
        public final o22 c;
        public final o22 d;
        public final sx0 e;
        public final sx0 f;
        public final sx0 g;
        public final nl3<b24, x04> h;
        public final nl3<b24, x04> i;
        public final nl3<b24, x04> j;
        public final w18 k;
        public final md7 l;
        public final re6 m;
        public final b53 n;

        static {
            ke4 ke4Var = w93.b;
            oi2 oi2Var = qo2.a;
            sh2 sh2Var = sh2.c;
            sx0 sx0Var = sx0.ENABLED;
            iz6 iz6Var = w18.u1;
            md7 md7Var = md7.FIT;
            re6 re6Var = re6.EXACT;
            b53 b53Var = b53.b;
            gx2 gx2Var = gx2.b;
            rb9.a aVar = rb9.a.b;
            o = new b(ke4Var, gx2Var, sh2Var, sh2Var, sx0Var, sx0Var, sx0Var, aVar, aVar, aVar, iz6Var, md7Var, re6Var, b53Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(w93 w93Var, o22 o22Var, o22 o22Var2, o22 o22Var3, sx0 sx0Var, sx0 sx0Var2, sx0 sx0Var3, nl3<? super b24, ? extends x04> nl3Var, nl3<? super b24, ? extends x04> nl3Var2, nl3<? super b24, ? extends x04> nl3Var3, w18 w18Var, md7 md7Var, re6 re6Var, b53 b53Var) {
            this.a = w93Var;
            this.b = o22Var;
            this.c = o22Var2;
            this.d = o22Var3;
            this.e = sx0Var;
            this.f = sx0Var2;
            this.g = sx0Var3;
            this.h = nl3Var;
            this.i = nl3Var2;
            this.j = nl3Var3;
            this.k = w18Var;
            this.l = md7Var;
            this.m = re6Var;
            this.n = b53Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g && aa4.e(this.h, bVar.h) && aa4.e(this.i, bVar.i) && aa4.e(this.j, bVar.j) && aa4.e(this.k, bVar.k) && this.l == bVar.l && this.m == bVar.m && aa4.e(this.n, bVar.n);
        }

        public final int hashCode() {
            return this.n.a.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Defaults(fileSystem=" + this.a + ", interceptorCoroutineContext=" + this.b + ", fetcherCoroutineContext=" + this.c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.e + ", diskCachePolicy=" + this.f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.h + ", errorFactory=" + this.i + ", fallbackFactory=" + this.j + ", sizeResolver=" + this.k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";
        }
    }

    public static final class c {
        public final o22 a;
        public final o22 b;
        public final o22 c;
        public final w18 d;
        public final md7 e;
        public final re6 f;

        public c(o22 o22Var, o22 o22Var2, o22 o22Var3, w18 w18Var, md7 md7Var, re6 re6Var) {
            this.a = o22Var;
            this.b = o22Var2;
            this.c = o22Var3;
            this.d = w18Var;
            this.e = md7Var;
            this.f = re6Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && this.e == cVar.e && this.f == cVar.f;
        }

        public final int hashCode() {
            o22 o22Var = this.a;
            int iHashCode = (o22Var == null ? 0 : o22Var.hashCode()) * 31;
            o22 o22Var2 = this.b;
            int iHashCode2 = (iHashCode + (o22Var2 == null ? 0 : o22Var2.hashCode())) * 31;
            o22 o22Var3 = this.c;
            int iHashCode3 = (iHashCode2 + (o22Var3 == null ? 0 : o22Var3.hashCode())) * 923521;
            rb9.a aVar = rb9.a.b;
            int iHashCode4 = (aVar.hashCode() + ((aVar.hashCode() + ((aVar.hashCode() + iHashCode3) * 31)) * 31)) * 31;
            w18 w18Var = this.d;
            int iHashCode5 = (iHashCode4 + (w18Var == null ? 0 : w18Var.hashCode())) * 31;
            md7 md7Var = this.e;
            int iHashCode6 = (iHashCode5 + (md7Var == null ? 0 : md7Var.hashCode())) * 31;
            re6 re6Var = this.f;
            return iHashCode6 + (re6Var != null ? re6Var.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Defined(fileSystem=null, interceptorCoroutineContext=");
            sb.append(this.a);
            sb.append(", fetcherCoroutineContext=");
            sb.append(this.b);
            sb.append(", decoderCoroutineContext=");
            sb.append(this.c);
            sb.append(", memoryCachePolicy=null, diskCachePolicy=null, networkCachePolicy=null, placeholderFactory=");
            rb9.a aVar = rb9.a.b;
            sb.append(aVar);
            sb.append(", errorFactory=");
            sb.append(aVar);
            sb.append(", fallbackFactory=");
            sb.append(aVar);
            sb.append(", sizeResolver=");
            sb.append(this.d);
            sb.append(", scale=");
            sb.append(this.e);
            sb.append(", precision=");
            sb.append(this.f);
            sb.append(")");
            return sb.toString();
        }
    }

    public b24(Context context, Object obj, xk8 xk8Var, Map map, w93 w93Var, o22 o22Var, o22 o22Var2, o22 o22Var3, sx0 sx0Var, sx0 sx0Var2, sx0 sx0Var3, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, w18 w18Var, md7 md7Var, re6 re6Var, b53 b53Var, c cVar, b bVar) {
        this.a = context;
        this.b = obj;
        this.c = xk8Var;
        this.d = map;
        this.e = w93Var;
        this.f = o22Var;
        this.g = o22Var2;
        this.h = o22Var3;
        this.i = sx0Var;
        this.j = sx0Var2;
        this.k = sx0Var3;
        this.l = nl3Var;
        this.m = nl3Var2;
        this.n = nl3Var3;
        this.o = w18Var;
        this.p = md7Var;
        this.q = re6Var;
        this.r = b53Var;
        this.s = cVar;
        this.t = bVar;
    }

    public static a a(b24 b24Var) {
        Context context = b24Var.a;
        b24Var.getClass();
        return new a(b24Var, context);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b24)) {
            return false;
        }
        b24 b24Var = (b24) obj;
        return aa4.e(this.a, b24Var.a) && aa4.e(this.b, b24Var.b) && aa4.e(this.c, b24Var.c) && this.d.equals(b24Var.d) && aa4.e(this.e, b24Var.e) && aa4.e(this.f, b24Var.f) && aa4.e(this.g, b24Var.g) && aa4.e(this.h, b24Var.h) && this.i == b24Var.i && this.j == b24Var.j && this.k == b24Var.k && aa4.e(this.l, b24Var.l) && aa4.e(this.m, b24Var.m) && aa4.e(this.n, b24Var.n) && aa4.e(this.o, b24Var.o) && this.p == b24Var.p && this.q == b24Var.q && this.r.equals(b24Var.r) && this.s.equals(b24Var.s) && aa4.e(this.t, b24Var.t);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        xk8 xk8Var = this.c;
        return this.t.hashCode() + ((this.s.hashCode() + k.c(this.r.a, (this.q.hashCode() + ((this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + k.c(this.d, (iHashCode + (xk8Var == null ? 0 : xk8Var.hashCode())) * 29791, 961)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.a + ", data=" + this.b + ", target=" + this.c + ", listener=null, memoryCacheKey=null, memoryCacheKeyExtras=" + this.d + ", diskCacheKey=null, fileSystem=" + this.e + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.f + ", fetcherCoroutineContext=" + this.g + ", decoderCoroutineContext=" + this.h + ", memoryCachePolicy=" + this.i + ", diskCachePolicy=" + this.j + ", networkCachePolicy=" + this.k + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.l + ", errorFactory=" + this.m + ", fallbackFactory=" + this.n + ", sizeResolver=" + this.o + ", scale=" + this.p + ", precision=" + this.q + ", extras=" + this.r + ", defined=" + this.s + ", defaults=" + this.t + ")";
    }

    public static final class a {
        public final Context a;
        public b b;
        public Object c;
        public xk8 d;
        public final Map e;
        public o22 f;
        public o22 g;
        public o22 h;
        public w18 i;
        public md7 j;
        public re6 k;
        public final b53 l;

        public a(b24 b24Var, Context context) {
            this.a = context;
            this.b = b24Var.t;
            this.c = b24Var.b;
            this.d = b24Var.c;
            this.e = b24Var.d;
            c cVar = b24Var.s;
            this.f = cVar.a;
            this.g = cVar.b;
            this.h = cVar.c;
            this.i = cVar.d;
            this.j = cVar.e;
            this.k = cVar.f;
            this.l = b24Var.r;
        }

        public final b24 a() {
            Map mapB;
            Object obj = this.c;
            if (obj == null) {
                obj = zp5.a;
            }
            Object obj2 = obj;
            xk8 xk8Var = this.d;
            Boolean bool = Boolean.FALSE;
            Map map = this.e;
            if (aa4.e(map, bool)) {
                map.getClass();
                mapB = rn1.b(v39.b(map));
            } else {
                if (!(map instanceof Map)) {
                    xp.g();
                    return null;
                }
                mapB = map;
            }
            Map map2 = mapB;
            map2.getClass();
            b bVar = this.b;
            w93 w93Var = bVar.a;
            sx0 sx0Var = bVar.e;
            sx0 sx0Var2 = bVar.f;
            sx0 sx0Var3 = bVar.g;
            o22 o22Var = this.f;
            if (o22Var == null) {
                o22Var = bVar.b;
            }
            o22 o22Var2 = o22Var;
            o22 o22Var3 = this.g;
            if (o22Var3 == null) {
                o22Var3 = bVar.c;
            }
            o22 o22Var4 = o22Var3;
            o22 o22Var5 = this.h;
            if (o22Var5 == null) {
                o22Var5 = bVar.d;
            }
            o22 o22Var6 = o22Var5;
            w18 w18Var = this.i;
            if (w18Var == null) {
                w18Var = bVar.k;
            }
            w18 w18Var2 = w18Var;
            md7 md7Var = this.j;
            if (md7Var == null) {
                md7Var = bVar.l;
            }
            md7 md7Var2 = md7Var;
            re6 re6Var = this.k;
            if (re6Var == null) {
                re6Var = bVar.m;
            }
            re6 re6Var2 = re6Var;
            b53 b53Var = this.l;
            if (b53Var == null) {
                xp.g();
                return null;
            }
            c cVar = new c(this.f, this.g, this.h, this.i, this.j, this.k);
            b bVar2 = this.b;
            Context context = this.a;
            rb9.a aVar = rb9.a.b;
            return new b24(context, obj2, xk8Var, map2, w93Var, o22Var2, o22Var4, o22Var6, sx0Var, sx0Var2, sx0Var3, aVar, aVar, aVar, w18Var2, md7Var2, re6Var2, b53Var, cVar, bVar2);
        }

        public a(Context context) {
            this.a = context;
            this.b = b.o;
            this.c = null;
            this.d = null;
            this.e = mx2.b;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = b53.b;
        }
    }
}
