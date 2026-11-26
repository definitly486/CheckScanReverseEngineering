package defpackage;

import io.appmetrica.analytics.impl.InterfaceC0894ee;
import io.appmetrica.analytics.impl.InterfaceC1289tl;
import io.appmetrica.analytics.impl.J0;
import io.appmetrica.analytics.impl.Ud;
import java.util.List;
import yads.h22;
import yads.l66;
import yads.p42;
import yads.qj1;
import yads.st3;
import yads.u62;
import yads.x92;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i2 implements InterfaceC0894ee, st3, l66 {
    public final /* synthetic */ int b;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c(int i, int i2) {
        throw new ArrayIndexOutOfBoundsException("Failed writing " + ((char) i) + ((Object) " at index ") + i2);
    }

    public static /* synthetic */ void d(Object obj, String str) {
        throw new AssertionError(str + obj);
    }

    public static /* synthetic */ void e(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 7:
                return p42.a(((Double) obj).doubleValue());
            case 8:
                return qj1.b(((Double) obj).doubleValue());
            case 9:
                return u62.d(((Long) obj).longValue());
            default:
                return x92.e(((Long) obj).longValue());
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0894ee
    public InterfaceC1289tl a(J0 j0) {
        return Ud.a(j0);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return h22.a(list);
    }
}
