package defpackage;

import android.view.View;
import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.Gson;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class ss5 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ss5(int i, Object obj, Object obj2) {
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
                a57 a57Var = (a57) obj;
                hv6 hv6Var = (hv6) obj2;
                ts5 ts5Var = (ts5) obj3;
                a57Var.getClass();
                T t = a57Var.b;
                z47 z47Var = a57Var.a;
                int i2 = z47Var.e;
                if (i2 == 200) {
                    return ts5Var.h((kd4) t, hv6Var);
                }
                if (i2 == 201) {
                    try {
                        return mz7.e(a57.c(ComposerKt.providerKey, (iv6) new Gson().a((kd4) t, new x39(iv6.class))));
                    } catch (Exception unused) {
                        return ts5Var.a.c(hv6Var);
                    }
                }
                if (i2 == 204) {
                    Charset charset = ha1.b;
                    bu0 bu0Var = new bu0();
                    charset.getClass();
                    bu0Var.F0("", 0, 0, charset);
                    return mz7.e(a57.a(204, new c57(null, bu0Var.c, bu0Var)));
                }
                if (i2 == 409) {
                    Charset charset2 = ha1.b;
                    bu0 bu0Var2 = new bu0();
                    charset2.getClass();
                    bu0Var2.F0("", 0, 0, charset2);
                    return mz7.e(a57.a(409, new c57(null, bu0Var2.c, bu0Var2)));
                }
                if (i2 == 500) {
                    Charset charset3 = ha1.b;
                    bu0 bu0Var3 = new bu0();
                    charset3.getClass();
                    bu0Var3.F0("", 0, 0, charset3);
                    return mz7.e(a57.a(500, new c57(null, bu0Var3.c, bu0Var3)));
                }
                if (i2 == 510) {
                    Charset charset4 = ha1.b;
                    bu0 bu0Var4 = new bu0();
                    charset4.getClass();
                    bu0Var4.F0("", 0, 0, charset4);
                    return mz7.e(a57.a(TypedValues.PositionType.TYPE_POSITION_TYPE, new c57(null, bu0Var4.c, bu0Var4)));
                }
                new Exception("getOfdUrls code=" + i2 + " errorBody=" + z47Var.d);
                Charset charset5 = ha1.b;
                bu0 bu0Var5 = new bu0();
                charset5.getClass();
                bu0Var5.F0("", 0, 0, charset5);
                return mz7.e(a57.a(i2, new c57(null, bu0Var5.c, bu0Var5)));
            default:
                ((View) obj).getClass();
                ((vm8) obj3).b.onBadgeQuestionClicked(((wm8) obj2).b);
                return j59.a;
        }
    }
}
