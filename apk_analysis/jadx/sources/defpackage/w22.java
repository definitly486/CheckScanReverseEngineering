package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class w22 extends b0 {
    public static final a d = new a();
    public final String c;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements o22.b<w22> {
    }

    public w22(String str) {
        super(d);
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w22) && aa4.e(this.c, ((w22) obj).c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return xp.e(new StringBuilder("CoroutineName("), this.c, ')');
    }
}
