package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class no0 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final b06 f;
    public final boolean g;

    public static final class a extends no0 {
        public final String h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, int i, String str2, String str3, String str4, String str5, String str6, b06 b06Var, boolean z) {
            super(i, str4, str3, str5, str6, b06Var, z);
            str2.getClass();
            this.h = str;
        }
    }

    public no0(int i, String str, String str2, String str3, String str4, b06 b06Var, boolean z) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = b06Var;
        this.g = z;
    }
}
