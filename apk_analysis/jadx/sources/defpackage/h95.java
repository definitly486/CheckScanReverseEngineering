package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h95 implements lm3 {
    @Override // defpackage.lm3
    public final Object apply(Object obj) {
        int i;
        String str = (String) obj;
        y91.a aVar = k95.g;
        aVar.getClass();
        boolean z = true;
        int length = str.length() - 1;
        while (true) {
            if (length < 0) {
                break;
            }
            if (!aVar.c(str.charAt(length))) {
                z = false;
                break;
            }
            length--;
        }
        if (z && !str.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append('\"');
        for (i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append('\"');
        return sb.toString();
    }
}
