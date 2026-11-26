package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class i05 extends AppCompatImageView {
    public static final ImageView.ScaleType a = ImageView.ScaleType.CENTER;
    public static final ImageView.ScaleType b = ImageView.ScaleType.FIT_CENTER;
    public static final ImageView.ScaleType c = ImageView.ScaleType.CENTER_CROP;

    public i05(Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
        setVisibility(4);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        if (getScaleType() == a && bitmap != null) {
            bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
        }
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            drawable = null;
        } else if (getScaleType() == a && (drawable instanceof BitmapDrawable)) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmap != null) {
                bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
            }
            bitmapDrawable.setTargetDensity(getContext().getResources().getDisplayMetrics());
        }
        super.setImageDrawable(drawable);
    }
}
