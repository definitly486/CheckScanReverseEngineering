package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dy5 implements gy5 {
    public final boolean a;

    public static String a(boolean z) {
        return defpackage.l2.c("Bool(value=", ")", z);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof dy5) && this.a == ((dy5) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return a(this.a);
    }

    public final /* synthetic */ boolean a() {
        return this.a;
    }
}
