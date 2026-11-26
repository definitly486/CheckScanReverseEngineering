package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes4.dex */
public class h5 extends FrameLayout {
    public final ImageView b;

    public h5(Context context) {
        super(context);
        ImageView imageView = new ImageView(context);
        this.b = imageView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        addView(imageView, layoutParams);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.b.setImageBitmap(bitmap);
    }
}
