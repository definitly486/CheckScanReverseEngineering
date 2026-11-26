package com.iab.omid.library.corpmailru.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static a a = new a();
    private final ArrayList<com.iab.omid.library.corpmailru.adsession.a> b = new ArrayList<>();
    private final ArrayList<com.iab.omid.library.corpmailru.adsession.a> c = new ArrayList<>();

    private a() {
    }

    public void a(com.iab.omid.library.corpmailru.adsession.a aVar) {
        this.b.add(aVar);
    }

    public void b(com.iab.omid.library.corpmailru.adsession.a aVar) {
        boolean zD = d();
        this.c.add(aVar);
        if (zD) {
            return;
        }
        f.a().b();
    }

    public void c(com.iab.omid.library.corpmailru.adsession.a aVar) {
        boolean zD = d();
        this.b.remove(aVar);
        this.c.remove(aVar);
        if (!zD || d()) {
            return;
        }
        f.a().c();
    }

    public boolean d() {
        return this.c.size() > 0;
    }

    public static a a() {
        return a;
    }

    public Collection<com.iab.omid.library.corpmailru.adsession.a> b() {
        return Collections.unmodifiableCollection(this.b);
    }

    public Collection<com.iab.omid.library.corpmailru.adsession.a> c() {
        return Collections.unmodifiableCollection(this.c);
    }
}
