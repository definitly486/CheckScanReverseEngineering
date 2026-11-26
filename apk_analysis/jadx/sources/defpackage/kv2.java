package defpackage;

import yads.e92;
import yads.gl1;
import yads.hs1;
import yads.l66;
import yads.q52;
import yads.ry1;
import yads.tw1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kv2 implements xl3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ kv2(int i) {
        this.b = i;
    }

    public static String b(int i, String str, String str2) {
        return str + i + str2;
    }

    public static void c(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 5:
                return e92.f(((Long) obj).longValue());
            case 6:
                return gl1.e(((Long) obj).longValue());
            case 7:
                return hs1.a(((Double) obj).doubleValue());
            case 8:
                return q52.b(((Long) obj).longValue());
            case 9:
                return ry1.b(((Long) obj).longValue());
            default:
                return tw1.a(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((j21) obj).c();
    }
}
