package androidx.media3.common;

import android.view.ViewGroup;
import com.google.common.collect.j;
import com.google.common.collect.w;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface AdViewProvider {
    default List<AdOverlayInfo> getAdOverlayInfos() {
        j.b bVar = j.c;
        return w.f;
    }

    ViewGroup getAdViewGroup();
}
