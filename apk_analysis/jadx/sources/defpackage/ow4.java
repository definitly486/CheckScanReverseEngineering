package defpackage;

import androidx.collection.LruCache;

/* JADX INFO: loaded from: classes3.dex */
public final class ow4 {
    public static final ow4 b = new ow4();
    public final LruCache<String, nw4> a = new LruCache<>(20);

    public final nw4 a(String str) {
        if (str == null) {
            return null;
        }
        return this.a.get(str);
    }
}
