package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class m94 {
    public static final AtomicLong d = new AtomicLong();
    public final String a;
    public final String b;
    public final long c;

    public m94(String str, String str2, long j) {
        o8.f(!str.isEmpty(), "empty type");
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    public static m94 a(Class<?> cls, String str) {
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = cls.getName().substring(cls.getPackage().getName().length() + 1);
        }
        return new m94(simpleName, str, d.incrementAndGet());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.a);
        sb.append("<");
        StringBuilder sb2 = new StringBuilder(k2.b(this.c, ">", sb));
        String str = this.b;
        if (str != null) {
            sb2.append(": (");
            sb2.append(str);
            sb2.append(')');
        }
        return sb2.toString();
    }
}
