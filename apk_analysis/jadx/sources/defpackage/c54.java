package defpackage;

import android.view.View;
import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.Gson;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.a;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class c54 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c54(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((a) obj3).b.onConditionsClicked(((b) obj2).b);
                return j59.a;
            default:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                T t = a57Var.b;
                z47 z47Var = a57Var.a;
                boolean zO = z47Var.o();
                int i2 = z47Var.e;
                if (zO) {
                    switch (i2) {
                        case 200:
                        case ComposerKt.providerKey /* 201 */:
                            return mz7.e(a57.c(i2, (iv6) new Gson().a((pc4) t, new x39(iv6.class))));
                        case ComposerKt.compositionLocalMapKey /* 202 */:
                            ts5 ts5Var = (ts5) obj3;
                            hv6 hv6Var = (hv6) obj2;
                            try {
                                return ts5Var.h((kd4) t, hv6Var);
                            } catch (Exception unused) {
                                return ts5Var.a.c(hv6Var);
                            }
                        case ComposerKt.providerValuesKey /* 203 */:
                        default:
                            new Exception(jh.b(i2, "postOfdResults code="));
                            Charset charset = ha1.b;
                            bu0 bu0Var = new bu0();
                            charset.getClass();
                            bu0Var.F0("", 0, 0, charset);
                            return mz7.e(a57.a(i2, new c57(null, bu0Var.c, bu0Var)));
                        case 204:
                            Charset charset2 = ha1.b;
                            bu0 bu0Var2 = new bu0();
                            charset2.getClass();
                            bu0Var2.F0("", 0, 0, charset2);
                            return mz7.e(a57.a(204, new c57(null, bu0Var2.c, bu0Var2)));
                    }
                }
                if (i2 == 412) {
                    Charset charset3 = ha1.b;
                    bu0 bu0Var3 = new bu0();
                    charset3.getClass();
                    bu0Var3.F0("", 0, 0, charset3);
                    return mz7.e(a57.a(412, new c57(null, bu0Var3.c, bu0Var3)));
                }
                if (i2 == 500) {
                    Charset charset4 = ha1.b;
                    bu0 bu0Var4 = new bu0();
                    charset4.getClass();
                    bu0Var4.F0("", 0, 0, charset4);
                    return mz7.e(a57.a(500, new c57(null, bu0Var4.c, bu0Var4)));
                }
                if (i2 == 510) {
                    Charset charset5 = ha1.b;
                    bu0 bu0Var5 = new bu0();
                    charset5.getClass();
                    bu0Var5.F0("", 0, 0, charset5);
                    return mz7.e(a57.a(TypedValues.PositionType.TYPE_POSITION_TYPE, new c57(null, bu0Var5.c, bu0Var5)));
                }
                new Exception("postOfdResults code=" + i2 + " errorBody=" + z47Var.d);
                Charset charset6 = ha1.b;
                bu0 bu0Var6 = new bu0();
                charset6.getClass();
                bu0Var6.F0("", 0, 0, charset6);
                return mz7.e(a57.a(i2, new c57(null, bu0Var6.c, bu0Var6)));
        }
    }
}
