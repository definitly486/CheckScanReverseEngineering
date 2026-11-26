package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class eu implements al2 {
    @Override // yads.al2
    public final Drawable a(byte[] bArr, Context context) {
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (bitmapDecodeByteArray != null) {
            return new BitmapDrawable(context.getResources(), bitmapDecodeByteArray);
        }
        defpackage.fg.c("Cannot decode bitmap from data");
        return null;
    }
}
