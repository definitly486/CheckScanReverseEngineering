package defpackage;

import androidx.compose.material3.SearchBarDefaults;
import java.util.Arrays;
import java.util.ServiceConfigurationError;
import yads.m64;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ kr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return j59.a;
            case 2:
                return Boolean.valueOf(SearchBarDefaults.enterAlwaysSearchBarScrollBehavior$lambda$1$lambda$0());
            case 3:
                try {
                    return rn1.a(jp7.q(dp7.f(Arrays.asList(new nv5()).iterator())));
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(th.getMessage(), th);
                }
            default:
                return m64.a();
        }
    }
}
