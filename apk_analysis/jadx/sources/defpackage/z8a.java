package defpackage;

import java.util.Objects;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
public final class z8a {
    public static final z8a i = new z8a("", null, -1, 999, 0, l4a.b);
    public static final TreeSet j;
    public static volatile boolean k;
    public final String a;
    public final String b;
    public final int c;
    public final Integer d;
    public final int e;
    public final j5a f;
    public int g;
    public volatile int h = k ? 1 : 0;

    static {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        j = treeSet;
        treeSet.add("com.vkontakte.android");
        treeSet.add("ru.mail.mailapp");
        treeSet.add("ru.ok.messages");
        treeSet.add("ru.ok.android");
        treeSet.add("ru.ok.android.debug");
        treeSet.add("ru.vk.store");
        treeSet.add("ru.vk.store.qa");
        treeSet.add("com.vk.tv");
        treeSet.add("com.vk.vkvideo");
        treeSet.add("com.vk.clips");
        k = false;
    }

    public z8a(String str, String str2, Integer num, int i2, int i3, j5a j5aVar) {
        this.a = str;
        this.b = str2;
        this.d = num;
        this.c = i2;
        this.e = i3;
        this.f = j5aVar;
    }

    public final void a(String str, int i2, int i3, int i4, String str2) {
        this.f.d(this, i2, i3, i4, str, str2);
    }

    public final void b(int i2) {
        a(null, 0, 3, i2, null);
    }

    public final boolean equals(Object obj) {
        if (obj == null || z8a.class != obj.getClass()) {
            return false;
        }
        z8a z8aVar = (z8a) obj;
        return this.c == z8aVar.c && this.e == z8aVar.e && this.g == z8aVar.g && Objects.equals(this.a, z8aVar.a) && Objects.equals(this.b, z8aVar.b) && this.d.equals(z8aVar.d) && Objects.equals(this.f, z8aVar.f);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, Integer.valueOf(this.c), this.d, Integer.valueOf(this.e), this.f, Integer.valueOf(this.g), null);
    }
}
