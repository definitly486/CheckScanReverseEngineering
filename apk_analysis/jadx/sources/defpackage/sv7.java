package defpackage;

import android.text.Spanned;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public abstract class sv7 implements pz3 {
    public final int a;
    public final boolean b;

    public static final class a extends sv7 {
        public final int c;
        public final Spanned d;
        public final String e;
        public final boolean f;
        public final ImageView.ScaleType g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, Spanned spanned, String str, boolean z, ImageView.ScaleType scaleType) {
            super(i, z);
            scaleType.getClass();
            this.c = i;
            this.d = spanned;
            this.e = str;
            this.f = z;
            this.g = scaleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.c == aVar.c && this.d.equals(aVar.d) && this.e.equals(aVar.e) && this.f == aVar.f && this.g == aVar.g;
        }

        public final int hashCode() {
            return this.g.hashCode() + tg.c(zg.b((this.d.hashCode() + (Integer.hashCode(this.c) * 31)) * 31, 31, this.e), 31, this.f);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Default(shopId=");
            sb.append(this.c);
            sb.append(", title=");
            sb.append((Object) this.d);
            sb.append(", imageUrl=");
            ud.f(sb, this.e, ", shopIsSelected=", this.f, ", scaleType=");
            sb.append(this.g);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class b extends sv7 {
        public final int c;
        public final Spanned d;
        public final String e;
        public final boolean f;
        public final boolean g;
        public final ImageView.ScaleType h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i, Spanned spanned, String str, boolean z, boolean z2, ImageView.ScaleType scaleType) {
            super(i, z);
            scaleType.getClass();
            this.c = i;
            this.d = spanned;
            this.e = str;
            this.f = z;
            this.g = z2;
            this.h = scaleType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.c == bVar.c && this.d.equals(bVar.d) && this.e.equals(bVar.e) && this.f == bVar.f && this.g == bVar.g && this.h == bVar.h;
        }

        public final int hashCode() {
            return this.h.hashCode() + tg.c(tg.c(zg.b((this.d.hashCode() + (Integer.hashCode(this.c) * 31)) * 31, 31, this.e), 31, this.f), 31, this.g);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Hot(shopId=");
            sb.append(this.c);
            sb.append(", title=");
            sb.append((Object) this.d);
            sb.append(", imageUrl=");
            ud.f(sb, this.e, ", shopIsSelected=", this.f, ", isPowerCodeVisible=");
            sb.append(this.g);
            sb.append(", scaleType=");
            sb.append(this.h);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class c extends sv7 {
        public final int c;
        public final String d;
        public final String e;
        public final Spanned f;
        public final boolean g;
        public final boolean h;
        public final boolean i;
        public final boolean j;

        public c(int i, String str, String str2, Spanned spanned, boolean z, boolean z2, boolean z3, boolean z4) {
            super(i, z);
            this.c = i;
            this.d = str;
            this.e = str2;
            this.f = spanned;
            this.g = z;
            this.h = z2;
            this.i = z3;
            this.j = z4;
        }

        public static c d(c cVar, boolean z) {
            int i = cVar.c;
            String str = cVar.d;
            String str2 = cVar.e;
            Spanned spanned = cVar.f;
            boolean z2 = cVar.h;
            boolean z3 = cVar.i;
            boolean z4 = cVar.j;
            cVar.getClass();
            return new c(i, str, str2, spanned, z, z2, z3, z4);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.c == cVar.c && this.d.equals(cVar.d) && this.e.equals(cVar.e) && this.f.equals(cVar.f) && this.g == cVar.g && this.h == cVar.h && this.i == cVar.i && this.j == cVar.j;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.j) + tg.c(tg.c(tg.c((this.f.hashCode() + zg.b(zg.b(Integer.hashCode(this.c) * 31, 31, this.d), 31, this.e)) * 31, 31, this.g), 31, this.h), 31, this.i);
        }

        public final String toString() {
            StringBuilder sbE = ng.e(this.c, "Rectangle(shopId=", ", imageUrl=", this.d, ", title=");
            sbE.append(this.e);
            sbE.append(", profit=");
            sbE.append((Object) this.f);
            sbE.append(", shopIsSelected=");
            sbE.append(this.g);
            sbE.append(", isTextChanging=");
            sbE.append(this.h);
            sbE.append(", isPowerCodeVisible=");
            sbE.append(this.i);
            sbE.append(", isDividerVisible=");
            sbE.append(this.j);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public sv7(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Boolean.valueOf(this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }
}
