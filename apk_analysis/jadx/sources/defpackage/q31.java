package defpackage;

import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.impl.Config;
import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.google.firebase.inappmessaging.model.RateLimit;
import com.my.target.j0;
import yads.cj0;
import yads.ne;
import yads.pe;
import yads.tt3;
import yads.ye6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q31 implements Config.OptionMatcher, xl3, tt3, gv9 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q31(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return RateLimiterClient.lambda$increment$1((RateLimitProto.RateLimit) this.b, (RateLimit) this.c, (RateLimitProto.Counter) obj);
    }

    @Override // defpackage.gv9
    public void b() {
        j0 j0Var = (j0) this.b;
        j0Var.d.a.b((vy9) this.c);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        cj0.a((ne) this.b, (ye6) this.c, (pe) obj);
    }

    @Override // androidx.camera.core.impl.Config.OptionMatcher
    public boolean onOptionMatched(Config.Option option) {
        return CaptureRequestOptions.Builder.Companion.from$lambda$0((CaptureRequestOptions.Builder) this.b, (Config) this.c, option);
    }
}
