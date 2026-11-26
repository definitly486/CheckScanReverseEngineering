package yads;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.LruCache;

/* JADX INFO: loaded from: classes6.dex */
public final class vk2 extends LruCache {
    public vk2(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public final int sizeOf(Object obj, Object obj2) {
        Drawable drawable = ((wk2) obj2).a;
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap().getByteCount() / 1024;
        }
        return 100;
    }
}
