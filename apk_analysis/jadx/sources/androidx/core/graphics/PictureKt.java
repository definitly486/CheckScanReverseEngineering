package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Picture;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PictureKt {
    public static final Picture record(Picture picture, int i, int i2, nl3<? super Canvas, j59> nl3Var) {
        try {
            nl3Var.invoke(picture.beginRecording(i, i2));
            return picture;
        } finally {
            picture.endRecording();
        }
    }
}
