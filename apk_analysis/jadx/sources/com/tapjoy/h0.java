package com.tapjoy;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 {
    public final double a;
    public final double b;
    public final double c;
    public final double d;
    public final float e;

    public h0(JSONObject jSONObject) {
        this.a = jSONObject.optDouble(TJAdUnitConstants.String.WIDTH, 0.0d);
        this.b = jSONObject.optDouble(TJAdUnitConstants.String.HEIGHT, 0.0d);
        this.c = jSONObject.optDouble(TtmlNode.LEFT, 0.0d);
        this.d = jSONObject.optDouble("top", 0.0d);
        this.e = (float) jSONObject.optDouble("cornerRadius", 0.0d);
    }
}
