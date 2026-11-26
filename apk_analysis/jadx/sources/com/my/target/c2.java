package com.my.target;

import android.net.Uri;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJVerifierKt;
import defpackage.i7a;
import defpackage.pp9;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class c2 {
    public final String a;
    public final String b;
    public final String c;
    public final i7a e;
    public boolean d = false;
    public final CopyOnWriteArrayList f = new CopyOnWriteArrayList();

    public c2(String str, String str2, i7a i7aVar) {
        String host;
        this.a = str;
        try {
            host = Uri.parse(str).getHost();
        } catch (Throwable unused) {
            host = null;
        }
        this.c = host;
        this.b = str2;
        this.e = i7aVar;
    }

    public final a a(d1.a aVar, i7a i7aVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f;
        int size = copyOnWriteArrayList.size();
        String str = aVar.d;
        a aVar2 = new a(size, str);
        copyOnWriteArrayList.add(aVar2);
        String str2 = "responseCode=" + aVar.c + ", resultCode=" + aVar.a + ", message=" + str;
        if (aVar.a()) {
            i7aVar.a(9101, str2, aVar2.a());
            return aVar2;
        }
        String strA = aVar2.a();
        pp9 pp9Var = i7aVar.b;
        if (pp9Var != null) {
            pp9Var.b(str2, i7aVar.c, 0, 9101, strA);
            return aVar2;
        }
        i7aVar.a.a(str2, i7aVar.c, 0, 9101, strA);
        return aVar2;
    }

    public final JSONObject b() {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        for (a aVar : this.f) {
            aVar.getClass();
            try {
                jSONObject = new JSONObject();
                jSONObject.put("attempt", aVar.a);
                jSONObject.put(TJVerifierKt.TJC_TIMESTAMP, aVar.b);
                jSONObject.put("error", aVar.c);
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            jSONArray.put(jSONObject);
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("pixelId", String.valueOf(this.a.hashCode()));
            jSONObject2.put("host", this.c);
            jSONObject2.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, this.b);
            jSONObject2.put("attempts", jSONArray);
            return jSONObject2;
        } catch (JSONException unused2) {
            return new JSONObject();
        }
    }

    public class a {
        public final int a;
        public final long b;
        public final String c;

        public a(int i, String str) {
            this.a = i;
            this.b = System.currentTimeMillis();
            this.c = str;
        }

        public final String a() {
            c2 c2Var = c2.this;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pixelId", String.valueOf(c2Var.a.hashCode()));
                jSONObject.put("host", c2Var.c);
                jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, c2Var.b);
                jSONObject.put("attempt", this.a);
                jSONObject.put(TJVerifierKt.TJC_TIMESTAMP, this.b);
                jSONObject.put("error", this.c);
                return jSONObject.toString();
            } catch (JSONException unused) {
                return "{}";
            }
        }

        public a(int i, long j, String str) {
            this.a = i;
            this.b = j;
            this.c = str;
        }
    }
}
