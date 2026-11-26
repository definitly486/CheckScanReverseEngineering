package defpackage;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.TextView;
import org.json.JSONObject;
import yads.as2;
import yads.d22;
import yads.fs2;
import yads.in5;
import yads.kw5;
import yads.s22;
import yads.tc1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ps9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ps9(View view, Object obj, Object obj2, Object obj3, fs2 fs2Var, int i) {
        this.b = i;
        this.d = view;
        this.e = obj;
        this.f = obj2;
        this.g = obj3;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.g;
        Object obj3 = this.f;
        Object obj4 = this.e;
        View view = this.d;
        switch (i) {
            case 0:
                return d22.a((s22) view, (in5) obj4, (tc1) obj3, (DisplayMetrics) obj2, this.c, obj);
            default:
                return kw5.a((TextView) view, (as2) obj4, (as2) obj3, (as2) obj2, this.c, (JSONObject) obj);
        }
    }
}
