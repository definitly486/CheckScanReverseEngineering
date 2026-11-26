package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cb4 extends bb4 {

    public static final class a {
        public static final Integer a;

        static {
            Integer num;
            Integer num2 = null;
            try {
                Object obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
                num = obj instanceof Integer ? (Integer) obj : null;
            } catch (Throwable unused) {
            }
            if (num != null && num.intValue() > 0) {
                num2 = num;
            }
            a = num2;
        }
    }
}
