package defpackage;

import androidx.compose.runtime.Composer;
import com.google.firebase.inappmessaging.internal.injection.modules.TransportClientModule;
import java.util.List;
import yads.e92;
import yads.gl1;
import yads.j42;
import yads.l66;
import yads.q52;
import yads.ry1;
import yads.st3;
import yads.th1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dc implements d29, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dc(int i) {
        this.b = i;
    }

    public static void b(bm3 bm3Var, int i, Composer composer, int i2) {
        composer.updateRememberedValue(Integer.valueOf(i));
        composer.apply(Integer.valueOf(i2), bm3Var);
    }

    public static /* synthetic */ void c(Object obj, String str) {
        throw new IllegalArgumentException(str + obj + '.');
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 4:
                return e92.d(((Long) obj).longValue());
            case 5:
                return gl1.c(((Long) obj).longValue());
            case 6:
                return j42.a(((Long) obj).longValue());
            case 7:
                return q52.a(((Double) obj).doubleValue());
            default:
                return ry1.b(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.d29
    public Object apply(Object obj) {
        return TransportClientModule.lambda$providesMetricsLoggerClient$0((byte[]) obj);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return th1.a(list);
    }
}
