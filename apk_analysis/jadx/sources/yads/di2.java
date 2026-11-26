package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class di2 {
    public static final void a(ci2 ci2Var, View view) {
        if (view instanceof jj2) {
            Iterator<View> it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                a(ci2Var, it.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof uf1) {
            Iterator<View> it2 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it2.hasNext()) {
                a(ci2Var, it2.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof uh1) {
            Iterator<View> it3 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it3.hasNext()) {
                a(ci2Var, it3.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof op1) {
            Iterator<View> it4 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it4.hasNext()) {
                a(ci2Var, it4.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof et1) {
            Iterator<View> it5 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it5.hasNext()) {
                a(ci2Var, it5.next());
            }
            ci2Var.a((et1) view);
            return;
        }
        if (view instanceof cy1) {
            Iterator<View> it6 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it6.hasNext()) {
                a(ci2Var, it6.next());
            }
            ci2Var.a((cy1) view);
            return;
        }
        if (view instanceof k32) {
            Iterator<View> it7 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it7.hasNext()) {
                a(ci2Var, it7.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof m62) {
            Iterator<View> it8 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it8.hasNext()) {
                a(ci2Var, it8.next());
            }
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof bb1) {
            Iterator<View> it9 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it9.hasNext()) {
                a(ci2Var, it9.next());
            }
            ci2Var.a((bb1) view);
            return;
        }
        if (view instanceof wz1) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof nh1) {
            ci2Var.a((nh1) view);
            return;
        }
        if (view instanceof yi1) {
            ci2Var.a((yi1) view);
            return;
        }
        if (view instanceof zo1) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof ds1) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof s22) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof gz1) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof mh2) {
            ci2Var.a((mh2) view);
            return;
        }
        if (view instanceof s52) {
            ci2Var.a((wh1) view);
            return;
        }
        if (view instanceof ViewGroup) {
            Iterator<View> it10 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it10.hasNext()) {
                a(ci2Var, it10.next());
            }
        }
        ci2Var.a(view);
    }
}
