package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kd5 {
    public static final kd5 b;
    public final List<String> a;

    public /* synthetic */ class a extends qm3 implements nl3<String, String> {
        public static final a c = new a(1, String.class, "toString", "toString()Ljava/lang/String;", 0);

        @Override // defpackage.nl3
        public final String invoke(String str) {
            String str2 = str;
            str2.getClass();
            return str2.toString();
        }
    }

    static {
        new kd5(u96.i("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"));
        b = new kd5(u96.i("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"));
    }

    public kd5(List<String> list) {
        this.a = list;
        if (list.size() != 12) {
            fg.c("Month names must contain exactly 12 elements");
            throw null;
        }
        x74 it = u96.f(list).iterator();
        while (it.d) {
            int iNextInt = it.nextInt();
            if (this.a.get(iNextInt).length() <= 0) {
                fg.c("A month name can not be empty");
                throw null;
            }
            for (int i = 0; i < iNextInt; i++) {
                if (aa4.e(this.a.get(iNextInt), this.a.get(i))) {
                    c9.f(me0.d(new StringBuilder("Month names must be unique, but '"), this.a.get(iNextInt), "' was repeated"));
                    throw null;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof kd5) {
            return this.a.equals(((kd5) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return qn1.a0(this.a, ", ", "MonthNames(", ")", 0, a.c, 24);
    }
}
