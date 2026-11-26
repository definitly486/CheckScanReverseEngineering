package com.iab.omid.library.corpmailru.walking;

import com.iab.omid.library.corpmailru.walking.a.d;
import com.iab.omid.library.corpmailru.walking.a.e;
import com.iab.omid.library.corpmailru.walking.a.f;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class b implements com.iab.omid.library.corpmailru.walking.a.b.InterfaceC0149b {
    private JSONObject a;
    private final com.iab.omid.library.corpmailru.walking.a.c b;

    public b(com.iab.omid.library.corpmailru.walking.a.c cVar) {
        this.b = cVar;
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.b(new f(this, hashSet, jSONObject, j));
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.b(new e(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.corpmailru.walking.a.b.InterfaceC0149b
    public void a(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // com.iab.omid.library.corpmailru.walking.a.b.InterfaceC0149b
    public JSONObject b() {
        return this.a;
    }

    public void a() {
        this.b.b(new d(this));
    }
}
