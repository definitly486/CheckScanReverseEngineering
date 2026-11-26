package com.iab.omid.library.corpmailru.walking.a;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends b {
    protected final HashSet<String> a;
    protected final JSONObject b;
    protected final long c;

    public a(b.InterfaceC0149b interfaceC0149b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0149b);
        this.a = new HashSet<>(hashSet);
        this.b = jSONObject;
        this.c = j;
    }
}
