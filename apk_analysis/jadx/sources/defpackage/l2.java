package defpackage;

import androidx.media3.common.util.Log;
import com.my.target.m1;
import yads.a60;
import yads.bt2;
import yads.kc5;
import yads.l66;
import yads.lc5;
import yads.qj1;
import yads.sd1;
import yads.ua4;
import yads.ws2;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class l2 implements a60, m1.b, l66, bt2 {
    public final /* synthetic */ int b;

    public static String c(String str, String str2, boolean z) {
        return str + z + str2;
    }

    public static String d(StringBuilder sb, Object obj, String str) {
        sb.append(obj);
        sb.append(str);
        return sb.toString();
    }

    public static String e(StringBuilder sb, String str, int i) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static void f(String str, String str2, String str3) {
        Log.w(str3, str + str2);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 7:
                return qj1.b(l.longValue());
            default:
                return sd1.b(l.longValue());
        }
    }

    public void b(Object obj) {
        lc5.a((kc5) obj);
    }

    @Override // yads.bt2
    public ws2[] b() {
        return ua4.a();
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }
}
