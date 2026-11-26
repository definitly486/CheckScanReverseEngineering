package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class nj {
    public final sy6 a;
    public final qu3 b;

    public nj(gk gkVar, sy6 sy6Var) {
        qu3 q1Var;
        this.a = sy6Var;
        if (ru3.a) {
            q1Var = new v24(false);
        } else {
            int i = Build.VERSION.SDK_INT;
            q1Var = (i == 26 || i == 27) ? new q1() : new v24(true);
        }
        this.b = q1Var;
    }

    public static Lifecycle a(b24 b24Var) {
        xk8 xk8Var = b24Var.c;
        Object context = xk8Var instanceof re9 ? ((re9) xk8Var).getView().getContext() : b24Var.a;
        while (!(context instanceof LifecycleOwner)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return ((LifecycleOwner) context).getLifecycle();
    }

    public static boolean b(b24 b24Var, Bitmap.Config config) {
        if (config == Bitmap.Config.HARDWARE) {
            if (!((Boolean) c53.a(b24Var, f24.f)).booleanValue()) {
                return false;
            }
            xk8 xk8Var = b24Var.c;
            if (xk8Var instanceof re9) {
                View view = ((re9) xk8Var).getView();
                if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:23:0x007e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0082  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c6  */
    public final zz5 c(b24 b24Var, t18 t18Var) {
        t18 t18Var2;
        boolean z;
        boolean z2;
        LinkedHashMap linkedHashMap;
        Context context = b24Var.a;
        md7 md7Var = b24Var.p;
        re6 re6Var = b24Var.q;
        w93 w93Var = b24Var.e;
        sx0 sx0Var = b24Var.i;
        sx0 sx0Var2 = b24Var.j;
        sx0 sx0Var3 = b24Var.k;
        b53.b<Bitmap.Config> bVar = f24.b;
        Bitmap.Config config = (Bitmap.Config) c53.a(b24Var, bVar);
        b53.b<Boolean> bVar2 = f24.g;
        boolean zBooleanValue = ((Boolean) c53.a(b24Var, bVar2)).booleanValue();
        b53.b<List<t19>> bVar3 = d24.a;
        boolean z3 = ((List) c53.a(b24Var, bVar3)).isEmpty() || yr.E(sb9.a, (Bitmap.Config) c53.a(b24Var, bVar));
        if (((Bitmap.Config) c53.a(b24Var, bVar)) == Bitmap.Config.HARDWARE) {
            if (b(b24Var, (Bitmap.Config) c53.a(b24Var, bVar))) {
                t18Var2 = t18Var;
                if (this.b.a(t18Var2)) {
                }
                if (z3 || !z) {
                    config = Bitmap.Config.ARGB_8888;
                }
                if (zBooleanValue || !((List) c53.a(b24Var, bVar3)).isEmpty() || config == Bitmap.Config.ALPHA_8) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                linkedHashMap = new LinkedHashMap(n05.g(b24Var.t.n.a, b24Var.r.a));
                if (config != ((Bitmap.Config) c53.a(b24Var, bVar))) {
                    if (config != null) {
                        linkedHashMap.put(bVar, config);
                    } else {
                        linkedHashMap.remove(bVar);
                    }
                }
                if (z2 != ((Boolean) c53.a(b24Var, bVar2)).booleanValue()) {
                    linkedHashMap.put(bVar2, Boolean.valueOf(z2));
                }
                return new zz5(context, t18Var2, md7Var, re6Var, null, w93Var, sx0Var, sx0Var2, sx0Var3, new b53(rn1.b(linkedHashMap)));
            }
            t18Var2 = t18Var;
            z = false;
            if (z3) {
                config = Bitmap.Config.ARGB_8888;
            } else {
                config = Bitmap.Config.ARGB_8888;
            }
            if (zBooleanValue) {
                z2 = false;
            } else {
                z2 = false;
            }
            linkedHashMap = new LinkedHashMap(n05.g(b24Var.t.n.a, b24Var.r.a));
            if (config != ((Bitmap.Config) c53.a(b24Var, bVar))) {
                if (config != null) {
                    linkedHashMap.put(bVar, config);
                } else {
                    linkedHashMap.remove(bVar);
                }
            }
            if (z2 != ((Boolean) c53.a(b24Var, bVar2)).booleanValue()) {
                linkedHashMap.put(bVar2, Boolean.valueOf(z2));
            }
            return new zz5(context, t18Var2, md7Var, re6Var, null, w93Var, sx0Var, sx0Var2, sx0Var3, new b53(rn1.b(linkedHashMap)));
        }
        t18Var2 = t18Var;
        z = true;
        if (z3) {
            config = Bitmap.Config.ARGB_8888;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        if (zBooleanValue) {
            z2 = false;
        } else {
            z2 = false;
        }
        linkedHashMap = new LinkedHashMap(n05.g(b24Var.t.n.a, b24Var.r.a));
        if (config != ((Bitmap.Config) c53.a(b24Var, bVar))) {
            if (config != null) {
                linkedHashMap.put(bVar, config);
            } else {
                linkedHashMap.remove(bVar);
            }
        }
        if (z2 != ((Boolean) c53.a(b24Var, bVar2)).booleanValue()) {
            linkedHashMap.put(bVar2, Boolean.valueOf(z2));
        }
        return new zz5(context, t18Var2, md7Var, re6Var, null, w93Var, sx0Var, sx0Var2, sx0Var3, new b53(rn1.b(linkedHashMap)));
    }

    public final zz5 d(zz5 zz5Var) {
        boolean z;
        b53 b53Var = zz5Var.j;
        b53.b<Bitmap.Config> bVar = f24.b;
        if (((Bitmap.Config) c53.b(zz5Var, bVar)) != Bitmap.Config.HARDWARE || this.b.e()) {
            z = false;
        } else {
            b53Var.getClass();
            LinkedHashMap linkedHashMapN = n05.n(b53Var.a);
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (config != null) {
                linkedHashMapN.put(bVar, config);
            } else {
                linkedHashMapN.remove(bVar);
            }
            b53Var = new b53(rn1.b(linkedHashMapN));
            z = true;
        }
        return z ? new zz5(zz5Var.a, zz5Var.b, zz5Var.c, zz5Var.d, zz5Var.e, zz5Var.f, zz5Var.g, zz5Var.h, zz5Var.i, b53Var) : zz5Var;
    }
}
