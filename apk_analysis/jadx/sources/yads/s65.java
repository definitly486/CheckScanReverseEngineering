package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class s65 {
    public static void a(am4 am4Var, v65 v65Var, Bitmap bitmap) {
        v65Var.setAlpha(0.0f);
        v65Var.animate().alpha(1.0f).setDuration(700L).withStartAction(new r65(v65Var, bitmap)).withEndAction(new q65(am4Var, v65Var)).start();
    }
}
