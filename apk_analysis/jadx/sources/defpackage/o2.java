package defpackage;

import android.os.UserManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.C1033jo;
import java.util.ArrayList;
import yads.bt2;
import yads.h32;
import yads.l66;
import yads.lf3;
import yads.wb;
import yads.ws2;
import yads.x92;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class o2 implements mq5, l66, FunctionWithThrowable, bt2 {
    public final /* synthetic */ int b;

    public static /* synthetic */ void d(String str) {
        throw new NullPointerException(str);
    }

    public static void e(StringBuilder sb, String str, String str2, int i, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(i);
        sb.append(str3);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 5:
                return h32.a(((Double) obj).doubleValue());
            case 6:
            default:
                return x92.a(((Long) obj).longValue());
            case 7:
                return lf3.a(((Long) obj).longValue());
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return C1033jo.a((UserManager) obj);
    }

    @Override // yads.bt2
    public ws2[] b() {
        return wb.a();
    }

    @Override // defpackage.mq5
    public Object c() {
        return new ArrayList();
    }
}
