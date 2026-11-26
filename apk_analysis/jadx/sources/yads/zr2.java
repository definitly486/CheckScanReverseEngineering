package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zr2 extends xr2 {
    public final String b;
    public final String c;
    public final et4 d;
    public String e;

    public zr2(String str, et4 et4Var) {
        super(str);
        this.b = str;
        this.c = "";
        this.d = et4Var;
    }

    @Override // yads.xr2, yads.as2
    public final Object a(fs2 fs2Var) {
        String str = this.e;
        if (str != null) {
            return str;
        }
        try {
            String strA = yt3.a(this.b);
            this.e = strA;
            return strA;
        } catch (vo2 e) {
            this.d.b(e);
            String str2 = this.c;
            this.e = str2;
            return str2;
        }
    }
}
