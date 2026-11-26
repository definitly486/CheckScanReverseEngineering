package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fy5 implements gy5 {
    public final String a;

    public /* synthetic */ fy5(String str) {
        this.a = str;
    }

    public static final /* synthetic */ fy5 a(String str) {
        return new fy5(str);
    }

    public static String b(String str) {
        return defpackage.me0.c("Str(value=", str, ")");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof fy5) && defpackage.aa4.e(this.a, ((fy5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return b(this.a);
    }

    public final /* synthetic */ String a() {
        return this.a;
    }
}
