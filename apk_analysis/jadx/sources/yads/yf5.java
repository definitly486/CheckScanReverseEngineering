package yads;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yf5 extends z14 {
    public final sf6 d;

    public yf5(CustomizableMediaView customizableMediaView, xc4 xc4Var, j24 j24Var) {
        sf6 sf6Var = new sf6(xc4Var);
        super(customizableMediaView, j24Var);
        this.d = sf6Var;
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        List list = ((v14) obj).c;
        if (list == null || !(!list.isEmpty())) {
            return false;
        }
        return this.d.a(list);
    }

    @Override // yads.z14
    public final y14 d() {
        return y14.MULTIBANNER;
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

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        v14 v14Var = (v14) obj;
        this.d.a(akVar, vf6Var, v14Var != null ? v14Var.c : null);
    }

    @Override // yads.z14
    public final void a(v14 v14Var) {
        List list = v14Var.c;
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        this.d.b(list);
    }

    @Override // yads.z14
    /* JADX INFO: renamed from: a */
    public final void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        super.b(customizableMediaView, v14Var);
        List list = v14Var.c;
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        this.d.b(list);
    }

    @Override // yads.z14
    public final void a(CustomizableMediaView customizableMediaView) {
        this.d.a();
    }
}
