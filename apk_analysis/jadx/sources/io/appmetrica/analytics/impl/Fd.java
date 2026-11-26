package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.kn1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Fd {
    public final List a;
    public final long b;

    public Fd(List list, long j) {
        this.a = list;
        this.b = j;
    }

    public final String a() {
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject();
            List<C1126nd> list = this.a;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (C1126nd c1126nd : list) {
                c1126nd.getClass();
                try {
                    jSONObject = new JSONObject();
                    jSONObject.put("moduleName", c1126nd.a);
                    jSONObject.put("loaded", c1126nd.b);
                } catch (Throwable unused) {
                    jSONObject = new JSONObject();
                }
                arrayList.add(jSONObject);
            }
            jSONObject2.put("modulesStatus", new JSONArray((Collection) arrayList));
            jSONObject2.put("lastSendTime", this.b);
            return jSONObject2.toString();
        } catch (Throwable unused2) {
            return "";
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fd)) {
            return false;
        }
        Fd fd = (Fd) obj;
        return aa4.e(this.a, fd.a) && this.b == fd.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ModulesStatus(modulesStatus=");
        sb.append(this.a);
        sb.append(", lastSendTime=");
        return defpackage.lg.f(sb, this.b, ')');
    }
}
