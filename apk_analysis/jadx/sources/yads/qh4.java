package yads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class qh4 {
    public static final /* synthetic */ defpackage.ze4[] g = {cb.a(qh4.class, "nativeAdView", "getNativeAdView()Landroid/view/View;", 0), cb.a(qh4.class, "imageView", "getImageView()Landroid/widget/ImageView;", 0), cb.a(qh4.class, "muteButtonView", "getMuteButtonView()Landroid/widget/CheckBox;", 0), cb.a(qh4.class, "videoProgressView", "getVideoProgressView()Landroid/widget/ProgressBar;", 0), cb.a(qh4.class, "customAssets", "getCustomAssets()Ljava/util/List;", 0)};
    public final e55 a;
    public final e55 b = new e55(null);
    public final e55 c;
    public final e55 d;
    public final e55 e;
    public final LinkedHashMap f;

    public qh4(ph4 ph4Var) {
        this.a = new e55(ph4Var.a);
        this.c = new e55(ph4Var.b);
        this.d = new e55(ph4Var.c);
        this.e = new e55(ph4Var.d);
        Map map = ph4Var.e;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(defpackage.m05.b(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), new WeakReference(entry2.getValue()));
        }
        this.f = linkedHashMap2;
    }

    public final View a(String str) {
        WeakReference weakReference = (WeakReference) this.f.get(str);
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public final View a() {
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = g[0];
        return (View) e55Var.a.get();
    }
}
