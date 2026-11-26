package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.idsync.internal.IdSyncConfigWrapper;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0769g implements JsonParser {
    public final C0766d a;

    public C0769g(C0766d c0766d) {
        this.a = c0766d;
    }

    public final IdSyncConfigWrapper a(JSONObject jSONObject) {
        return IdSyncConfigWrapper.Companion.toWrapper$id_sync_release(this.a.parse(jSONObject));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final IdSyncConfigWrapper parseOrNull(JSONObject jSONObject) {
        C0765c c0765c = (C0765c) this.a.parseOrNull(jSONObject);
        if (c0765c != null) {
            return IdSyncConfigWrapper.Companion.toWrapper$id_sync_release(c0765c);
        }
        return null;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parse(JSONObject jSONObject) {
        return IdSyncConfigWrapper.Companion.toWrapper$id_sync_release(this.a.parse(jSONObject));
    }
}
