package defpackage;

import android.app.UiModeManager;
import com.my.target.m1;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.impl.Z7;
import java.util.List;
import yads.az1;
import yads.l66;
import yads.st3;
import yads.u01;
import yads.z51;
import yads.zg1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i01 implements a13.b, FunctionWithThrowable, l66, m1.b, st3 {
    public final /* synthetic */ int b;

    public static void c(gi0 gi0Var, tc5 tc5Var) {
        tc5Var.a(new m08(gi0Var));
    }

    public static void d(StringBuilder sb, String str, String str2) {
        sb.append(str);
        y14.r(str2, sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 4:
                return az1.a(((Double) obj).doubleValue());
            case 7:
                return u01.a((String) obj);
            default:
                return z51.b(((Long) obj).longValue());
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public Object apply(Object obj) {
        return Z7.a((UiModeManager) obj);
    }

    public /* synthetic */ i01(int i) {
        this.b = i;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.st3
    public boolean a(List list) {
        return zg1.a(list);
    }
}
