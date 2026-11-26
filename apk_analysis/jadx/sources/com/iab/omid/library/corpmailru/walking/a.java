package com.iab.omid.library.corpmailru.walking;

import android.view.View;
import com.iab.omid.library.corpmailru.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private final HashMap<View, String> a = new HashMap<>();
    private final HashMap<View, C0148a> b = new HashMap<>();
    private final HashMap<String, View> c = new HashMap<>();
    private final HashSet<View> d = new HashSet<>();
    private final HashSet<String> e = new HashSet<>();
    private final HashSet<String> f = new HashSet<>();
    private final HashMap<String, String> g = new HashMap<>();
    private boolean h;

    private void a(com.iab.omid.library.corpmailru.b.c cVar, com.iab.omid.library.corpmailru.adsession.a aVar) {
        View view = cVar.a().get();
        if (view == null) {
            return;
        }
        C0148a c0148a = this.b.get(view);
        if (c0148a != null) {
            c0148a.a(aVar.getAdSessionId());
        } else {
            this.b.put(view, new C0148a(cVar, aVar.getAdSessionId()));
        }
    }

    private String d(View view) {
        if (!view.hasWindowFocus()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strE = f.e(view);
            if (strE != null) {
                return strE;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.d.addAll(hashSet);
        return null;
    }

    public C0148a b(View view) {
        C0148a c0148a = this.b.get(view);
        if (c0148a != null) {
            this.b.remove(view);
        }
        return c0148a;
    }

    public void c() {
        com.iab.omid.library.corpmailru.b.a aVarA = com.iab.omid.library.corpmailru.b.a.a();
        if (aVarA != null) {
            for (com.iab.omid.library.corpmailru.adsession.a aVar : aVarA.c()) {
                View viewD = aVar.d();
                if (aVar.e()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (viewD != null) {
                        String strD = d(viewD);
                        if (strD == null) {
                            this.e.add(adSessionId);
                            this.a.put(viewD, adSessionId);
                            a(aVar);
                        } else {
                            this.f.add(adSessionId);
                            this.c.put(adSessionId, viewD);
                            this.g.put(adSessionId, strD);
                        }
                    } else {
                        this.f.add(adSessionId);
                        this.g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void e() {
        this.h = true;
    }

    /* JADX INFO: renamed from: com.iab.omid.library.corpmailru.walking.a$a, reason: collision with other inner class name */
    public static class C0148a {
        private final com.iab.omid.library.corpmailru.b.c a;
        private final ArrayList<String> b = new ArrayList<>();

        public C0148a(com.iab.omid.library.corpmailru.b.c cVar, String str) {
            this.a = cVar;
            a(str);
        }

        public void a(String str) {
            this.b.add(str);
        }

        public ArrayList<String> b() {
            return this.b;
        }

        public com.iab.omid.library.corpmailru.b.c a() {
            return this.a;
        }
    }

    public View b(String str) {
        return this.c.get(str);
    }

    public HashSet<String> b() {
        return this.f;
    }

    public String a(String str) {
        return this.g.get(str);
    }

    public void d() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.h = false;
    }

    public HashSet<String> a() {
        return this.e;
    }

    private void a(com.iab.omid.library.corpmailru.adsession.a aVar) {
        Iterator<com.iab.omid.library.corpmailru.b.c> it = aVar.a().iterator();
        while (it.hasNext()) {
            a(it.next(), aVar);
        }
    }

    public String a(View view) {
        if (this.a.size() == 0) {
            return null;
        }
        String str = this.a.get(view);
        if (str != null) {
            this.a.remove(view);
        }
        return str;
    }

    public c c(View view) {
        if (this.d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.h ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }
}
