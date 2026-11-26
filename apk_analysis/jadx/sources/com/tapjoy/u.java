package com.tapjoy;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class u {
    public final /* synthetic */ TJAdUnitJSBridge a;

    public u(TJAdUnitJSBridge tJAdUnitJSBridge) {
        this.a = tJAdUnitJSBridge;
    }

    public void execute(String str, JSONObject jSONObject) {
        this.a.invokeJSAdunitMethod(str, jSONObject);
    }
}
