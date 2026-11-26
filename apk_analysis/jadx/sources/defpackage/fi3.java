package defpackage;

import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class fi3 {
    public final AssetManager d;
    public final pg5<String> a = new pg5<>();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public String e = ".ttf";

    public fi3(Drawable.Callback callback) {
        if (callback instanceof View) {
            this.d = ((View) callback).getContext().getAssets();
        } else {
            gv4.b("LottieDrawable must be inside of a view for images to work.");
            this.d = null;
        }
    }
}
