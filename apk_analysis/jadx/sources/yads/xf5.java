package yads;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class xf5 extends z14 {
    public final sf6 d;

    public xf5(CustomizableMediaView customizableMediaView, xb4 xb4Var, j24 j24Var) {
        sf6 sf6Var = new sf6(xb4Var);
        super(customizableMediaView, j24Var);
        this.d = sf6Var;
    }

    @Override // yads.rf6
    public final void a(View view) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        this.d.a();
        customizableMediaView.setVisibility(8);
        customizableMediaView.setOnClickListener(null);
        customizableMediaView.setOnTouchListener(null);
        customizableMediaView.setSelected(false);
    }

    @Override // yads.z14
    public final y14 d() {
        return y14.WEB_VIEW;
    }

    @Override // yads.z14
    public final void a(v14 v14Var) {
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        v14 v14Var = (v14) obj;
        this.d.a(akVar, vf6Var, v14Var != null ? v14Var.a : null);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        by3 by3Var = ((v14) obj).a;
        if (by3Var != null) {
            return this.d.a(by3Var);
        }
        return false;
    }

    @Override // yads.z14
    /* JADX INFO: renamed from: a */
    public final void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        super.b(customizableMediaView, v14Var);
        by3 by3Var = v14Var.a;
        if (by3Var == null) {
            return;
        }
        this.d.b(by3Var);
    }

    @Override // yads.z14
    public final void a(CustomizableMediaView customizableMediaView) {
        this.d.a();
    }
}
