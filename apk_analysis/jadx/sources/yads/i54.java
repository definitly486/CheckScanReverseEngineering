package yads;

import com.my.tracker.ads.AdFormat;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i54 {
    public final Long a;
    public final Map b;
    public final Map c;
    public final Map d;
    public final Map e;
    public final Map f;

    public i54(Long l, Map map, Map map2, Map map3, Map map4, Map map5) {
        this.a = l;
        this.b = map;
        this.c = map2;
        this.d = map3;
        this.e = map4;
        this.f = map5;
    }

    public final String a() {
        defpackage.uz4 uz4Var = new defpackage.uz4();
        Long l = this.a;
        if (l != null) {
            uz4Var.put("default_timeout", Long.valueOf(l.longValue()));
        }
        Map map = this.b;
        if (map != null) {
            uz4Var.put(AdFormat.BANNER, map);
        }
        Map map2 = this.c;
        if (map2 != null) {
            uz4Var.put(AdFormat.INTERSTITIAL, map2);
        }
        Map map3 = this.d;
        if (map3 != null) {
            uz4Var.put(AdFormat.REWARDED, map3);
        }
        Map map4 = this.e;
        if (map4 != null) {
            uz4Var.put("native", map4);
        }
        Map map5 = this.f;
        if (map5 != null) {
            uz4Var.put("appOpenAd", map5);
        }
        return new JSONObject(uz4Var.b()).toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i54)) {
            return false;
        }
        i54 i54Var = (i54) obj;
        return defpackage.aa4.e(this.a, i54Var.a) && defpackage.aa4.e(this.b, i54Var.b) && defpackage.aa4.e(this.c, i54Var.c) && defpackage.aa4.e(this.d, i54Var.d) && defpackage.aa4.e(this.e, i54Var.e) && defpackage.aa4.e(this.f, i54Var.f);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l != null ? l.hashCode() : 0) * 31;
        Map map = this.b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Map map2 = this.c;
        int iHashCode3 = (iHashCode2 + (map2 != null ? map2.hashCode() : 0)) * 31;
        Map map3 = this.d;
        int iHashCode4 = (iHashCode3 + (map3 != null ? map3.hashCode() : 0)) * 31;
        Map map4 = this.e;
        int iHashCode5 = (iHashCode4 + (map4 != null ? map4.hashCode() : 0)) * 31;
        Map map5 = this.f;
        return iHashCode5 + (map5 != null ? map5.hashCode() : 0);
    }
}
