package com.iab.omid.library.corpmailru.d;

import android.text.TextUtils;
import com.iab.omid.library.corpmailru.Omid;
import com.iab.omid.library.corpmailru.adsession.CreativeType;
import com.iab.omid.library.corpmailru.adsession.ImpressionType;
import com.iab.omid.library.corpmailru.adsession.Owner;
import defpackage.ah;
import defpackage.fg;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public static void a(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner == Owner.NONE) {
            fg.c("Impression owner is none");
            return;
        }
        if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            fg.c("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        } else if (impressionType == ImpressionType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            fg.c("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    public static void b(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.g()) {
            ah.f("AdSession is finished");
        }
    }

    public static void c(com.iab.omid.library.corpmailru.adsession.a aVar) {
        h(aVar);
        b(aVar);
    }

    public static void d(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.getAdSessionStatePublisher().c() == null) {
            return;
        }
        ah.f("AdEvents already exists for AdSession");
    }

    public static void e(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.getAdSessionStatePublisher().d() == null) {
            return;
        }
        ah.f("MediaEvents already exists for AdSession");
    }

    public static void f(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.h()) {
            return;
        }
        ah.f("Impression event is not expected from the Native AdSession");
    }

    public static void g(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.i()) {
            return;
        }
        ah.f("Cannot create MediaEvents for JavaScript AdSession");
    }

    private static void h(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.f()) {
            return;
        }
        ah.f("AdSession is not started");
    }

    public static void a() {
        if (Omid.isActive()) {
            return;
        }
        ah.f("Method called before OM SDK activation");
    }

    public static void a(com.iab.omid.library.corpmailru.adsession.a aVar) {
        if (aVar.f()) {
            ah.f("AdSession is started");
        }
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        fg.c(str);
    }

    public static void a(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        fg.c(str2);
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            fg.c(str2);
        }
    }
}
