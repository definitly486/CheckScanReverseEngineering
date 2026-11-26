package com.google.android.gms.auth.api.signin.internal;

/* JADX INFO: loaded from: classes4.dex */
public class HashAccumulator {
    public int a = 1;

    public HashAccumulator addObject(Object obj) {
        this.a = (this.a * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int hash() {
        return this.a;
    }

    public final HashAccumulator zaa(boolean z) {
        this.a = (this.a * 31) + (z ? 1 : 0);
        return this;
    }
}
