package com.iab.omid.library.corpmailru.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.corpmailru.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class f implements com.iab.omid.library.corpmailru.a.c, b.a {
    private static f a;
    private float b = 0.0f;
    private final com.iab.omid.library.corpmailru.a.e c;
    private final com.iab.omid.library.corpmailru.a.b d;
    private com.iab.omid.library.corpmailru.a.d e;
    private a f;

    public f(com.iab.omid.library.corpmailru.a.e eVar, com.iab.omid.library.corpmailru.a.b bVar) {
        this.c = eVar;
        this.d = bVar;
    }

    private a e() {
        a aVar = this.f;
        if (aVar != null) {
            return aVar;
        }
        a aVarA = a.a();
        this.f = aVarA;
        return aVarA;
    }

    @Override // com.iab.omid.library.corpmailru.a.c
    public void a(float f) {
        this.b = f;
        Iterator<com.iab.omid.library.corpmailru.adsession.a> it = e().c().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f);
        }
    }

    public void b() {
        b.a().a(this);
        b.a().b();
        TreeWalker.getInstance().a();
        this.e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.e.b();
    }

    public float d() {
        return this.b;
    }

    public static f a() {
        f fVar = a;
        if (fVar != null) {
            return fVar;
        }
        f fVar2 = new f(new com.iab.omid.library.corpmailru.a.e(), new com.iab.omid.library.corpmailru.a.b());
        a = fVar2;
        return fVar2;
    }

    public void a(Context context) {
        this.e = this.c.a(new Handler(), context, this.d.a(), this);
    }

    @Override // com.iab.omid.library.corpmailru.b.b.a
    public void a(boolean z) {
        TreeWalker treeWalker = TreeWalker.getInstance();
        if (z) {
            treeWalker.a();
        } else {
            treeWalker.c();
        }
    }
}
