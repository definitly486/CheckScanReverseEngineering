package yads;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import defpackage.ll3;
import yads.wf4;

/* JADX INFO: loaded from: classes6.dex */
public final class wf4 {
    public final Resources a;

    public wf4(Resources resources) {
        this.a = resources;
    }

    public final i80 a(final rd3 rd3Var, final b05 b05Var) {
        if (rd3Var != null) {
            return new i80(new ll3() { // from class: fga
                @Override // defpackage.ll3
                public final Object invoke() {
                    return wf4.a(b05Var, rd3Var, this);
                }
            }, rd3Var.d, rd3Var.a, rd3Var.b);
        }
        return null;
    }

    public static final Drawable a(b05 b05Var, rd3 rd3Var, wf4 wf4Var) {
        Bitmap bitmapA = b05Var.a(rd3Var);
        if (bitmapA != null) {
            return new BitmapDrawable(wf4Var.a, bitmapA);
        }
        return null;
    }
}
