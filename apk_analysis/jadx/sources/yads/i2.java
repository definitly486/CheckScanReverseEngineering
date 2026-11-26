package yads;

import com.yandex.mobile.ads.common.AdActivity;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class i2 {
    public final Set a = Collections.newSetFromMap(new ConcurrentHashMap());
    public final Set b = Collections.newSetFromMap(new ConcurrentHashMap());
    public int c;

    public i2(AdActivity adActivity) {
        this.c = adActivity.getResources().getConfiguration().orientation;
    }
}
