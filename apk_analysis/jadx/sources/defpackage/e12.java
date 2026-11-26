package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e12 {
    public static final vr6<a> a = new vr6<>("list-item-type");
    public static final vr6<Integer> b = new vr6<>("bullet-list-item-level");
    public static final vr6<Integer> c = new vr6<>("ordered-list-item-number");
    public static final vr6<Integer> d = new vr6<>("heading-level");
    public static final vr6<String> e = new vr6<>("link-destination");
    public static final vr6<Boolean> f = new vr6<>("paragraph-is-in-tight-list");
    public static final vr6<String> g = new vr6<>("code-block-info");

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a BULLET;
        public static final a ORDERED;

        static {
            a aVar = new a("BULLET", 0);
            BULLET = aVar;
            a aVar2 = new a("ORDERED", 1);
            ORDERED = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }
}
