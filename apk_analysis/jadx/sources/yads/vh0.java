package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vh0 {
    public static final String b = "https://yandex.com/ads";
    public final vn2 a;

    public vh0(vn2 vn2Var) {
        this.a = vn2Var;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        String str = this.a.e;
        if (str == null) {
            str = b;
        }
        sb.append(str);
        Character chValueOf = sb.length() == 0 ? null : Character.valueOf(sb.charAt(sb.length() - 1));
        if (chValueOf == null || chValueOf.charValue() != '/') {
            sb.append('/');
        }
        sb.append("v1/debugpanel");
        if (!this.a.b.isEmpty()) {
            sb.append(defpackage.qn1.a0(this.a.b, "&", "?", null, 0, new defpackage.ni(9), 28));
        }
        return sb.toString();
    }

    public static final CharSequence a(k35 k35Var) {
        return defpackage.cg.d(k35Var.getKey(), "=", k35Var.getValue());
    }
}
