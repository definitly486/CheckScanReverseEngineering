package yads;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class zf5 extends z14 {
    public final sf6 d;

    public zf5(CustomizableMediaView customizableMediaView, nf6 nf6Var, j24 j24Var) {
        sf6 sf6Var = new sf6(nf6Var);
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
        return y14.VIDEO;
    }

    @Override // yads.z14
    public final void a(v14 v14Var) {
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        v14 v14Var = (v14) obj;
        this.d.a(akVar, vf6Var, v14Var != null ? v14Var.b : null);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        r96 r96Var = ((v14) obj).b;
        if (r96Var != null) {
            return this.d.a(r96Var);
        }
        return false;
    }

    @Override // yads.z14
    /* JADX INFO: renamed from: a */
    public final void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        super.b(customizableMediaView, v14Var);
        r96 r96Var = v14Var.b;
        if (r96Var == null) {
            return;
        }
        this.d.b(r96Var);
    }

    @Override // yads.z14
    public final void a(CustomizableMediaView customizableMediaView) {
        this.d.a();
    }

    @Override // yads.rf6
    public final void a() {
        this.d.a.a();
    }
}
