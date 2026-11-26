package yads;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class eg5 extends z14 {
    public final zf5 d;
    public final z14 e;
    public final ql5 f;
    public final e55 g;
    public final e55 h;
    public final dg5 i;
    public static final /* synthetic */ defpackage.ze4[] k = {mo.a(eg5.class, "weakMediaView", "getWeakMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;", 0), mo.a(eg5.class, "weakMediaValue", "getWeakMediaValue()Lcom/monetization/ads/network/model/MediaValue;", 0), mo.a(eg5.class, "currentViewAdapter", "getCurrentViewAdapter()Lcom/monetization/ads/nativeads/assetadapter/viewadapter/MediaViewAdapter;", 0)};
    public static final ag5 j = new ag5();

    public eg5(CustomizableMediaView customizableMediaView, zf5 zf5Var, z14 z14Var, j24 j24Var, ql5 ql5Var) {
        super(customizableMediaView, j24Var);
        this.d = zf5Var;
        this.e = z14Var;
        this.f = ql5Var;
        this.g = new e55(null);
        this.h = new e55(null);
        this.i = new dg5(zf5Var, this);
        customizableMediaView.setOnSizeChangedListener$mobileads_externalRelease(new bg5(new WeakReference(this)));
    }

    @Override // yads.z14
    /* JADX INFO: renamed from: a */
    public final void b(CustomizableMediaView customizableMediaView, v14 v14Var) {
        e55 e55Var = this.g;
        defpackage.ze4<?>[] ze4VarArr = k;
        defpackage.ze4<?> ze4Var = ze4VarArr[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(customizableMediaView);
        e55 e55Var2 = this.h;
        defpackage.ze4<?> ze4Var2 = ze4VarArr[1];
        e55Var2.getClass();
        e55Var2.a = new WeakReference(v14Var);
        ((z14) this.i.getValue(this, ze4VarArr[2])).b(customizableMediaView, v14Var);
    }

    @Override // yads.z14
    public final y14 d() {
        return ((z14) this.i.getValue(this, k[2])).d();
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        v14 v14Var = (v14) obj;
        this.d.a(akVar, vf6Var, v14Var);
        this.e.a(akVar, vf6Var, v14Var);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        return ((z14) this.i.getValue(this, k[2])).a(view, obj);
    }

    @Override // yads.rf6
    public final void a(View view) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        this.d.a((View) customizableMediaView);
        this.e.a((View) customizableMediaView);
    }

    @Override // yads.rf6
    public final void a() {
        ((z14) this.i.getValue(this, k[2])).a();
    }

    @Override // yads.z14
    public final void a(v14 v14Var) {
        ((z14) this.i.getValue(this, k[2])).a(v14Var);
    }

    @Override // yads.z14
    public final void a(CustomizableMediaView customizableMediaView) {
        this.d.d.a();
        this.e.a(customizableMediaView);
    }
}
