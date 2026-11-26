package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ne8 {

    @bq7("name")
    private final me8 a;

    @bq7("email")
    private final me8 b;

    @bq7("description")
    private final me8 c;

    @bq7("checkboxText")
    private final String d;

    public ne8(me8 me8Var, me8 me8Var2, me8 me8Var3, String str) {
        me8Var.getClass();
        me8Var2.getClass();
        me8Var3.getClass();
        str.getClass();
        this.a = me8Var;
        this.b = me8Var2;
        this.c = me8Var3;
        this.d = str;
    }

    public final String a() {
        return this.d;
    }

    public final me8 b() {
        return this.c;
    }

    public final me8 c() {
        return this.b;
    }

    public final me8 d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ne8)) {
            return false;
        }
        ne8 ne8Var = (ne8) obj;
        return aa4.e(this.a, ne8Var.a) && aa4.e(this.b, ne8Var.b) && aa4.e(this.c, ne8Var.c) && aa4.e(this.d, ne8Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SupportFormFieldsResponse(name=" + this.a + ", email=" + this.b + ", description=" + this.c + ", checkboxText=" + this.d + ")";
    }
}
