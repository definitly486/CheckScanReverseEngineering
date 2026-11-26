package yads;

import android.graphics.Bitmap;
import android.view.View;
import defpackage.j59;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class q31 extends yh1 {
    public final /* synthetic */ View a;
    public final /* synthetic */ tt b;
    public final /* synthetic */ r31 c;
    public final /* synthetic */ wc5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q31(View view, tt ttVar, r31 r31Var, wc5 wc5Var, vq0 vq0Var) {
        super(vq0Var);
        this.a = view;
        this.b = ttVar;
        this.c = r31Var;
        this.d = wc5Var;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        ArrayList arrayList;
        wd1 wd1Var;
        View view = this.a;
        tt ttVar = this.b;
        Bitmap bitmap = uwVar.a;
        ArrayList<p31> arrayList2 = this.c.g;
        if (arrayList2 != null) {
            arrayList = new ArrayList(defpackage.kn1.q(arrayList2, 10));
            for (p31 p31Var : arrayList2) {
                p31Var.getClass();
                if (p31Var instanceof n31) {
                    wd1Var = ((n31) p31Var).b;
                } else {
                    if (!(p31Var instanceof o31)) {
                        defpackage.me0.e();
                        return;
                    }
                    wd1Var = ((o31) p31Var).a;
                }
                arrayList.add(wd1Var);
            }
        } else {
            arrayList = null;
        }
        tq.a(view, ttVar, bitmap, arrayList, new defpackage.dt0(this.d, 3));
    }

    public static final j59 a(wc5 wc5Var, Bitmap bitmap) {
        wc5Var.d = bitmap;
        wc5Var.g = true;
        wc5Var.invalidateSelf();
        return j59.a;
    }
}
