package yads;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wf5 extends z14 {
    public final sf6 d;

    public wf5(CustomizableMediaView customizableMediaView, be3 be3Var, j24 j24Var) {
        sf6 sf6Var = new sf6(be3Var);
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
        return y14.IMAGE;
    }

    @Override // yads.z14
    public final void a(v14 v14Var) {
        rd3 rd3VarA = a(v14Var.c);
        if (rd3VarA == null) {
            return;
        }
        this.d.b(rd3VarA);
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        v14 v14Var = (v14) obj;
        this.d.a(akVar, vf6Var, a(v14Var != null ? v14Var.c : null));
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        rd3 rd3VarA = a(((v14) obj).c);
        if (rd3VarA != null) {
            return this.d.a(rd3VarA);
        }
        return false;
    }

    @Override // yads.z14
    /* JADX INFO: renamed from: a */
    public final void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        super.b(customizableMediaView, v14Var);
        rd3 rd3VarA = a(v14Var.c);
        if (rd3VarA == null) {
            return;
        }
        this.d.b(rd3VarA);
    }

    @Override // yads.z14
    public final void a(CustomizableMediaView customizableMediaView) {
        this.d.a();
    }

    public static rd3 a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (rd3) list.get(0);
    }
}
