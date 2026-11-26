package defpackage;

import android.widget.TextView;
import com.monetization.ads.mediation.banner.c;
import yads.as2;
import yads.dp;
import yads.fs2;
import yads.kw5;
import yads.q74;
import yads.u34;
import yads.yn;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class kp9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ kp9(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                return c.a((yn) obj5, (dp) obj4, (c) obj3, (u34) obj2, (q74) obj);
            default:
                return kw5.c((TextView) obj5, (as2) obj4, (as2) obj3, (fs2) obj2, obj);
        }
    }
}
