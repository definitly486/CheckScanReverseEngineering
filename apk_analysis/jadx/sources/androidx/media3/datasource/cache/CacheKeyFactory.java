package androidx.media3.datasource.cache;

import androidx.media3.datasource.DataSpec;
import defpackage.hg;

/* JADX INFO: loaded from: classes3.dex */
public interface CacheKeyFactory {
    public static final CacheKeyFactory DEFAULT = new hg(2);

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ String lambda$static$0(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : dataSpec.uri.toString();
    }

    String buildCacheKey(DataSpec dataSpec);
}
