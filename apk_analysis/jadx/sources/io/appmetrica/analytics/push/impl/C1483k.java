package io.appmetrica.analytics.push.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1483k extends C1475i {
    public final String b;
    public final String c;
    public final String d;

    public C1483k(String str, String str2, String str3) {
        super(4);
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    @Override // io.appmetrica.analytics.push.impl.C1475i
    public final JSONObject a() {
        return super.a().put(TtmlNode.ATTR_ID, this.b).put("uri", this.c).put("text", this.d);
    }
}
