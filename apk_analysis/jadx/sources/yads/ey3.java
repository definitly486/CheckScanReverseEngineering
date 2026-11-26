package yads;

import android.view.View;
import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ey3 implements bk, dn0 {
    public final be3 a;
    public final z14 b;

    public ey3(be3 be3Var, z14 z14Var) {
        this.a = be3Var;
        this.b = z14Var;
    }

    @Override // yads.bk
    public final boolean a(Object obj) {
        v14 v14Var = (v14) obj;
        be3 be3Var = this.a;
        rd3 rd3VarA = a(v14Var.c);
        View viewA = a((rf6) be3Var);
        boolean z = (viewA == null || rd3VarA == null || be3Var == null || !be3Var.a(viewA, rd3VarA)) ? false : true;
        z14 z14Var = this.b;
        View viewA2 = a((rf6) z14Var);
        return z || (viewA2 != null && z14Var != null && z14Var.a(viewA2, v14Var));
    }

    @Override // yads.dn0
    public final void b(Object obj) {
        v14 v14Var = (v14) obj;
        rd3 rd3VarA = a(v14Var.c);
        ImageView imageView = (ImageView) a((rf6) this.a);
        if (imageView != null && rd3VarA != null) {
            be3 be3Var = this.a;
            if (be3Var != null) {
                defpackage.mb4 mb4Var = be3Var.g;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                be3Var.g = defpackage.av0.c(be3Var.c, null, null, new ae3(be3Var, rd3VarA, null), 3);
            }
            imageView.setVisibility(0);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((rf6) this.b);
        if (customizableMediaView == null) {
            return;
        }
        z14 z14Var = this.b;
        if (z14Var != null) {
            z14Var.a(v14Var);
        }
        customizableMediaView.setVisibility(0);
    }

    @Override // yads.bk
    public final void c(Object obj) {
        v14 v14Var = (v14) obj;
        rd3 rd3VarA = a(v14Var.c);
        ImageView imageView = (ImageView) a((rf6) this.a);
        if (imageView != null && rd3VarA != null) {
            be3 be3Var = this.a;
            if (be3Var != null) {
                defpackage.mb4 mb4Var = be3Var.g;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                be3Var.g = defpackage.av0.c(be3Var.c, null, null, new ae3(be3Var, rd3VarA, null), 3);
            }
            imageView.setVisibility(0);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((rf6) this.b);
        if (customizableMediaView != null) {
            z14 z14Var = this.b;
            if (z14Var != null) {
                z14Var.b(customizableMediaView, v14Var);
            }
            customizableMediaView.setVisibility(0);
        }
    }

    @Override // yads.bk
    public final boolean d() {
        z14 z14Var = this.b;
        boolean z = z14Var != null && eh6.a(z14Var.b()) >= 100;
        be3 be3Var = this.a;
        return z || (be3Var != null && eh6.a(be3Var.b()) >= 100);
    }

    @Override // yads.bk
    public final void destroy() {
        z14 z14Var = this.b;
        if (z14Var != null) {
            z14Var.a();
        }
    }

    @Override // yads.bk
    public final boolean e() {
        be3 be3Var;
        z14 z14Var = this.b;
        return (z14Var != null && z14Var.c()) || ((be3Var = this.a) != null && be3Var.c());
    }

    @Override // yads.bk
    public final void a(ak akVar, vf6 vf6Var) {
        v14 v14Var = (v14) akVar.c;
        be3 be3Var = this.a;
        if (be3Var != null) {
            be3Var.a(akVar, vf6Var, a(v14Var.c));
        }
        z14 z14Var = this.b;
        if (z14Var != null) {
            z14Var.a(akVar, vf6Var, v14Var);
        }
    }

    @Override // yads.bk
    public final void a() {
        z14 z14Var;
        be3 be3Var;
        ImageView imageView = (ImageView) a((rf6) this.a);
        if (imageView != null && (be3Var = this.a) != null) {
            imageView.setImageDrawable(null);
            be3Var.f.a(imageView);
            imageView.setVisibility(8);
            imageView.setOnClickListener(null);
            imageView.setOnTouchListener(null);
            imageView.setSelected(false);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((rf6) this.b);
        if (customizableMediaView == null || (z14Var = this.b) == null) {
            return;
        }
        z14Var.a((View) customizableMediaView);
    }

    @Override // yads.bk
    public final tg6 c() {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((rf6) this.b);
        ImageView imageView = (ImageView) a((rf6) this.a);
        if (customizableMediaView != null) {
            return new tg6(customizableMediaView);
        }
        if (imageView != null) {
            return new tg6(imageView);
        }
        return null;
    }

    @Override // yads.bk
    public final boolean b() {
        z14 z14Var = this.b;
        if (z14Var != null && z14Var.b() != null) {
            return true;
        }
        be3 be3Var = this.a;
        return (be3Var == null || be3Var.b() == null) ? false : true;
    }

    public static rd3 a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (rd3) list.get(0);
    }

    public static View a(rf6 rf6Var) {
        if (rf6Var != null) {
            return rf6Var.b();
        }
        return null;
    }
}
