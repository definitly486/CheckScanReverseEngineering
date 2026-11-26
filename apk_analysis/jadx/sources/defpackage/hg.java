package defpackage;

import android.view.inputmethod.SelectGesture;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheKeyFactory;
import com.my.target.m1;
import java.util.LinkedHashMap;
import yads.cd1;
import yads.i93;
import yads.j93;
import yads.l66;
import yads.lh1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class hg implements CacheKeyFactory, mq5, l66, m1.b, j93 {
    public final /* synthetic */ int b;

    public static String d(int i, String str, String str2, String str3, String str4) {
        return str + str2 + str3 + i + str4;
    }

    public static /* bridge */ /* synthetic */ boolean e(Object obj) {
        return obj instanceof SelectGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 6:
                return cd1.a(l.longValue());
            default:
                return lh1.a(l.longValue());
        }
    }

    @Override // androidx.media3.datasource.cache.CacheKeyFactory
    public String buildCacheKey(DataSpec dataSpec) {
        return CacheKeyFactory.lambda$static$0(dataSpec);
    }

    @Override // defpackage.mq5
    public Object c() {
        return new LinkedHashMap();
    }

    public /* synthetic */ hg(int i) {
        this.b = i;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.j93
    public boolean a(String str) {
        return i93.a(str);
    }
}
