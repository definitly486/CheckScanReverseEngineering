package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class up5 extends j72<Bitmap> {
    public final /* synthetic */ vp5 b;
    public final /* synthetic */ int c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Map<String, String> g;
    public final /* synthetic */ String h;

    public up5(vp5 vp5Var, int i, String str, String str2, String str3, Map map, String str4) {
        this.b = vp5Var;
        this.c = i;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = map;
        this.h = str4;
    }

    @Override // defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Object obj, k29 k29Var) {
        Map<String, String> map = this.g;
        String str = this.h;
        this.b.a(this.c, this.d, this.e, (Bitmap) obj, this.f, map, str);
    }
}
