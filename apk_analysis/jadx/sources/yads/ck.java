package yads;

import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class ck {
    public final d9 a;
    public final b05 b;
    public final a24 c;
    public final sj4 d;
    public final aj4 e;
    public final ac0 f;
    public final defpackage.y22 g;

    public ck(d9 d9Var, b05 b05Var, a24 a24Var, sj4 sj4Var, aj4 aj4Var, q84 q84Var, ac0 ac0Var, defpackage.y22 y22Var) {
        this.a = d9Var;
        this.b = b05Var;
        this.c = a24Var;
        this.d = sj4Var;
        this.e = aj4Var;
        this.f = ac0Var;
        this.g = y22Var;
    }

    public final ey3 a(ImageView imageView, CustomizableMediaView customizableMediaView) {
        z14 z14VarA;
        be3 be3Var = imageView != null ? new be3(imageView, this.b, this.a, this.g) : null;
        if (customizableMediaView != null) {
            a24 a24Var = this.c;
            b05 b05Var = this.b;
            sj4 sj4Var = this.d;
            aj4 aj4Var = this.e;
            defpackage.y22 y22Var = this.g;
            Object obj = a24Var.a.a.get("media");
            z14VarA = a24Var.d.a(customizableMediaView, a24Var.b, b05Var, a24Var.g, a24Var.c, sj4Var, aj4Var, a24Var.e, a24Var.f, a24Var.h, obj instanceof v14 ? (v14) obj : null, y22Var);
        } else {
            z14VarA = null;
        }
        if (be3Var == null && z14VarA == null) {
            return null;
        }
        return new ey3(be3Var, z14VarA);
    }
}
