package io.appmetrica.analytics.impl;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.dynamiclinks.DynamicLink;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1230re {
    public final HashMap a;

    public C1230re() {
        HashMap map = new HashMap();
        this.a = map;
        map.put("google_aid", "g");
        map.put("huawei_oaid", CmcdData.STREAMING_FORMAT_HLS);
        map.put("sim_info", DynamicLink.SocialMetaTagParameters.KEY_SOCIAL_IMAGE_LINK);
        map.put("features_collecting", "fc");
        map.put("permissions_collecting", "pc");
        map.put("retry_policy", "rp");
        map.put("cache_control", "cc");
        map.put("attribution", DynamicLink.ItunesConnectAnalyticsParameters.KEY_ITUNES_CONNECT_AT);
        map.put("startup_update", CmcdConfiguration.KEY_STARTUP);
        map.put("ssl_pinning", "sp");
        map.put("external_attribution", "exta");
    }

    public final String a(String str) {
        return this.a.containsKey(str) ? (String) this.a.get(str) : str;
    }
}
