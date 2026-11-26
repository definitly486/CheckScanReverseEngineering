package yads;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j01 implements m01 {
    public final JSONArray a;

    public j01(JSONArray jSONArray) {
        this.a = jSONArray;
    }

    @Override // yads.m01
    public final void a(Object obj, String str) {
        int i = Integer.parseInt(str);
        if (i < 0 || i > this.a.length()) {
            defpackage.v93.b();
        } else {
            try {
                this.a.put(i, obj);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // yads.m01
    public final m01 get(String str) {
        Object objOpt = this.a.opt(Integer.parseInt(str));
        if (objOpt instanceof JSONArray) {
            return new j01((JSONArray) objOpt);
        }
        if (objOpt instanceof JSONObject) {
            return new k01((JSONObject) objOpt);
        }
        if (objOpt == null ? true : objOpt.equals(JSONObject.NULL)) {
            return null;
        }
        return l01.a;
    }
}
