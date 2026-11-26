package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.remotepermissions.internal.ServiceSideRemotePermissionsConfigWrapper;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements JsonParser {
    public final c a;
    public final b b;

    public /* synthetic */ g(c cVar, b bVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new c() : cVar, (i & 2) != 0 ? new b() : bVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceSideRemotePermissionsConfigWrapper parse(JSONObject jSONObject) {
        return ServiceSideRemotePermissionsConfigWrapper.Companion.toWrapper$remote_permissions_release(this.a.toModel(this.b.parse(jSONObject)));
    }

    public final ServiceSideRemotePermissionsConfigWrapper b(JSONObject jSONObject) {
        return (ServiceSideRemotePermissionsConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (ServiceSideRemotePermissionsConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    public g(c cVar, b bVar) {
        this.a = cVar;
        this.b = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
