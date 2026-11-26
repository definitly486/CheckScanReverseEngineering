package yads;

import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z14 extends rf6 {
    public final j24 c;

    public z14(CustomizableMediaView customizableMediaView, j24 j24Var) {
        super(customizableMediaView);
        this.c = j24Var;
    }

    public abstract void a(CustomizableMediaView customizableMediaView);

    @Override // yads.rf6
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        j24 j24Var = this.c;
        y14 y14VarD = d();
        if (j24Var.c) {
            if (j24Var.a.a == n70.NATIVE) {
                i24 i24Var = new i24(j24Var, customizableMediaView, y14VarD);
                th6 th6Var = eh6.a;
                customizableMediaView.getViewTreeObserver().addOnPreDrawListener(new dh6(i24Var, customizableMediaView));
            }
            j24Var.c = false;
        }
    }

    public abstract void a(v14 v14Var);

    public abstract y14 d();
}
