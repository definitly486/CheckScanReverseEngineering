package yads;

import android.graphics.Bitmap;
import android.util.LruCache;

/* JADX INFO: loaded from: classes6.dex */
public final class tn4 extends LruCache {
    public tn4(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public final int sizeOf(Object obj, Object obj2) {
        Bitmap bitmap = (Bitmap) obj2;
        return bitmap != null ? bitmap.getByteCount() / 1024 : super.sizeOf((String) obj, null);
    }
}
