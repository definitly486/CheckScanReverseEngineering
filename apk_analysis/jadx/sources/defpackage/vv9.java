package defpackage;

import android.view.View;
import java.util.ArrayList;
import yads.b82;
import yads.fs2;
import yads.g82;
import yads.n01;
import yads.u66;
import yads.vq0;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class vv9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ vv9(Object obj, View view, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = view;
        this.e = obj2;
        this.f = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        View view = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return g82.d((g82) obj4, (zo1) view, (b82) obj3, (fs2) obj2, obj);
            default:
                return n01.a((n01) obj4, (vq0) view, (ArrayList) obj3, obj2, (u66) obj);
        }
    }
}
