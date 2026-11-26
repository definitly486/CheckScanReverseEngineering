package defpackage;

import android.os.Bundle;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import io.appmetrica.analytics.AppMetrica;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class kd {
    public static final fh8 c = nm4.b(l.f);
    public static final fh8 d = nm4.b(k.f);
    public final String a;
    public final Map<String, Object> b;

    public static class a extends kd {

        /* JADX INFO: renamed from: kd$a$a, reason: collision with other inner class name */
        public static class C0220a extends a {

            /* JADX INFO: renamed from: kd$a$a$a, reason: collision with other inner class name */
            public static final class C0221a extends C0220a {
            }
        }

        public static class b extends a {

            /* JADX INFO: renamed from: kd$a$b$a, reason: collision with other inner class name */
            public static final class C0222a extends b {
            }
        }

        public static class c extends a {

            /* JADX INFO: renamed from: kd$a$c$a, reason: collision with other inner class name */
            public static final class C0223a extends c {
            }
        }

        public static class d extends a {

            /* JADX INFO: renamed from: kd$a$d$a, reason: collision with other inner class name */
            public static class C0224a extends d {
            }
        }

        /* JADX INFO: loaded from: classes5.dex */
        public static class e extends a {

            /* JADX INFO: renamed from: kd$a$e$a, reason: collision with other inner class name */
            public static final class C0225a extends e {
            }

            public static final class b extends e {
            }

            public static final class c extends e {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public e(String str) {
                Map mapSingletonMap = Collections.singletonMap("Elcheck", str);
                mapSingletonMap.getClass();
                super("Account", mapSingletonMap);
            }
        }

        public static class f extends a {

            /* JADX INFO: renamed from: kd$a$f$a, reason: collision with other inner class name */
            public static final class C0226a extends f {
                public final String e;

                /* JADX WARN: Illegal instructions before constructor call */
                public C0226a(String str) {
                    str.getClass();
                    Map mapSingletonMap = Collections.singletonMap("Activate", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                    this.e = str;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0226a) && aa4.e(this.e, ((C0226a) obj).e);
                }

                public final int hashCode() {
                    return this.e.hashCode();
                }

                public final String toString() {
                    return me0.c("Activate(code=", this.e, ")");
                }
            }

            public static final class b extends f {
                public static final b e = new b("CheckBalance");
            }

            public static final class c extends f {
                public static final c e = new c("CodeChanged");
            }

            public static final class d extends f {
                public static final d e = new d("GreatBottom");
            }

            public static final class e extends f {
                public static final e e = new e("OkBottom");
            }

            /* JADX INFO: renamed from: kd$a$f$f, reason: collision with other inner class name */
            public static final class C0227f extends f {
                public static final C0227f e = new C0227f("ShowBottom");
            }

            public static final class g extends f {
                public static final g e = new g("ShowBottomSuccess");
            }

            public static final class h extends f {
                public static final h e = new h("StartInteraction");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public f(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("FakePromocode", obj);
                mapSingletonMap.getClass();
                super("Account", mapSingletonMap);
            }
        }

        /* JADX INFO: loaded from: classes5.dex */
        public static class g extends a {

            /* JADX INFO: renamed from: kd$a$g$a, reason: collision with other inner class name */
            public static final class C0228a extends g {
                public C0228a() {
                    super("LOGIN_FAILED");
                }
            }

            public static final class b extends g {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public g(String str) {
                Map mapSingletonMap = Collections.singletonMap("Log In", str);
                mapSingletonMap.getClass();
                super("Account", mapSingletonMap);
            }
        }

        public static class h extends a {

            /* JADX INFO: renamed from: kd$a$h$a, reason: collision with other inner class name */
            public static final class C0229a extends h {
                public C0229a() {
                    super("LOG_IN_CLICKED");
                }
            }

            public static final class b extends h {
                public b() {
                    super("LOG_OUT_CLICKED");
                }
            }

            public static final class c extends h {
                public c() {
                    super("PROFILE_BUTTON_CLICKED");
                }
            }

            public static final class d extends h {
                public d() {
                    super("SEND_FEEDBACK_CLICKED");
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public h(String str) {
                Map mapSingletonMap = Collections.singletonMap("Popup", str);
                mapSingletonMap.getClass();
                super("Account", mapSingletonMap);
            }
        }

        public static class i extends a {

            /* JADX INFO: renamed from: kd$a$i$a, reason: collision with other inner class name */
            public static final class C0230a extends i {
                public static final C0230a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Profile", "NAVBAR_PROFILE_CLICKED");
                    mapSingletonMap.getClass();
                    e = new C0230a("Account", mapSingletonMap);
                }
            }
        }

        public static class j extends a {

            /* JADX INFO: renamed from: kd$a$j$a, reason: collision with other inner class name */
            public static final class C0231a extends j {
                public final String e;

                /* JADX WARN: Illegal instructions before constructor call */
                public C0231a(String str) {
                    str.getClass();
                    Map mapSingletonMap = Collections.singletonMap("Activate", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                    this.e = str;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0231a) && aa4.e(this.e, ((C0231a) obj).e);
                }

                public final int hashCode() {
                    return this.e.hashCode();
                }

                public final String toString() {
                    return me0.c("Activate(code=", this.e, ")");
                }
            }

            public static final class b extends j {
                public static final b e = new b("CheckBalance");
            }

            public static final class c extends j {
                public static final c e = new c("CodeChanged");
            }

            public static final class d extends j {
                public static final d e = new d("GreatBottom");
            }

            public static final class e extends j {
                public static final e e = new e("OkBottom");
            }

            public static final class f extends j {
                public static final f e = new f("Show");
            }

            public static final class g extends j {
                public static final g e = new g("ShowBottom");
            }

            public static final class h extends j {
                public static final h e = new h("ShowBottomSuccess");
            }

            public static final class i extends j {
                public static final i e = new i("StartInteraction");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public j(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("PromocodeMainScreen", obj);
                mapSingletonMap.getClass();
                super("Account", mapSingletonMap);
            }
        }

        public static class k extends a {

            /* JADX INFO: renamed from: kd$a$k$a, reason: collision with other inner class name */
            public static final class C0232a extends k {
                public static final C0232a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Register", "SUCCESSFUL_REGISTER");
                    mapSingletonMap.getClass();
                    e = new C0232a("Account", mapSingletonMap);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a0 extends kd {
        public final String e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(String str) {
            super("online_shop_tutorial_close_".concat(str), mx2.b);
            str.getClass();
            this.e = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a0) && aa4.e(this.e, ((a0) obj).e);
        }

        public final int hashCode() {
            return this.e.hashCode();
        }

        public final String toString() {
            return me0.c("OnlineShopTutorialClose(slide=", this.e, ")");
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b extends kd {
        public static final b e = new b("Add_5_checks", mx2.b);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b0 extends kd {
        public static final b0 e = new b0("online_shop_tutorial_completed", mx2.b);
    }

    public static class c extends kd {

        public static class a extends c {

            /* JADX INFO: renamed from: kd$c$a$a, reason: collision with other inner class name */
            public static class C0233a extends a {
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class c0 extends kd {
        public static final c0 e = new c0("online_shop_tutorial_tap", mx2.b);
    }

    public static class d extends d0 {

        public static final class a extends d {
        }

        public static final class b extends d {
        }

        public static final class c extends d {
        }
    }

    public static class d0 extends kd {
    }

    public static class e extends kd {

        public static class a extends e {

            /* JADX INFO: renamed from: kd$e$a$a, reason: collision with other inner class name */
            /* JADX INFO: loaded from: classes5.dex */
            public static class C0234a extends a {

                /* JADX INFO: renamed from: kd$e$a$a$a, reason: collision with other inner class name */
                public static class C0235a extends C0234a {
                }

                /* JADX INFO: renamed from: kd$e$a$a$b */
                public static class b extends C0234a {
                }

                /* JADX INFO: renamed from: kd$e$a$a$c */
                public static class c extends C0234a {

                    /* JADX INFO: renamed from: kd$e$a$a$c$a, reason: collision with other inner class name */
                    public static class C0236a extends c {
                    }

                    /* JADX WARN: Illegal instructions before constructor call */
                    public c(int i, Map map) {
                        Map mapSingletonMap = Collections.singletonMap("Hot items", map);
                        mapSingletonMap.getClass();
                        super(i, mapSingletonMap);
                    }
                }

                /* JADX INFO: renamed from: kd$e$a$a$d */
                public static class d extends C0234a {
                }

                /* JADX INFO: renamed from: kd$e$a$a$e, reason: collision with other inner class name */
                public static class C0237e extends C0234a {

                    /* JADX INFO: renamed from: kd$e$a$a$e$a, reason: collision with other inner class name */
                    public static class C0238a extends C0237e {
                    }

                    /* JADX INFO: renamed from: kd$e$a$a$e$b */
                    public static class b extends C0237e {
                    }

                    /* JADX WARN: Illegal instructions before constructor call */
                    public C0237e(int i, Object obj) {
                        Map mapSingletonMap = Collections.singletonMap("Promocode", obj);
                        mapSingletonMap.getClass();
                        super(i, mapSingletonMap);
                    }
                }

                /* JADX INFO: renamed from: kd$e$a$a$f */
                public static class f extends C0234a {

                    /* JADX INFO: renamed from: kd$e$a$a$f$a, reason: collision with other inner class name */
                    public static class C0239a extends f {
                        public C0239a(int i) {
                            super(i, "Bonuses");
                        }
                    }

                    /* JADX INFO: renamed from: kd$e$a$a$f$b */
                    public static class b extends f {
                    }

                    /* JADX INFO: renamed from: kd$e$a$a$f$c */
                    public static class c extends f {
                    }

                    /* JADX INFO: renamed from: kd$e$a$a$f$d */
                    public static class d extends f {
                        public d(int i) {
                            super(i, "List");
                        }
                    }

                    /* JADX WARN: Illegal instructions before constructor call */
                    public f(int i, String str) {
                        Map mapSingletonMap = Collections.singletonMap("Selected from", str);
                        mapSingletonMap.getClass();
                        super(i, mapSingletonMap);
                    }
                }

                /* JADX INFO: renamed from: kd$e$a$a$g */
                public static class g extends C0234a {
                }

                /* JADX INFO: renamed from: kd$e$a$a$h */
                public static class h extends C0234a {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public C0234a(int i, Object obj) {
                    Map mapSingletonMap = Collections.singletonMap(Integer.valueOf(i), obj);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static class b extends a {

                /* JADX INFO: renamed from: kd$e$a$b$a, reason: collision with other inner class name */
                public static final class C0240a extends b {
                    public static final C0240a e;

                    static {
                        Map mapSingletonMap = Collections.singletonMap("check_cb_button", "cb_checked");
                        mapSingletonMap.getClass();
                        e = new C0240a(mapSingletonMap);
                    }
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Card_shop", map);
                mapSingletonMap.getClass();
                super("Bonuses", mapSingletonMap);
            }
        }

        /* JADX INFO: loaded from: classes5.dex */
        public static class b extends e {

            public static class a extends b {
            }

            /* JADX INFO: renamed from: kd$e$b$b, reason: collision with other inner class name */
            public static class C0241b extends b {
                public C0241b(int i) {
                    super(ud.c(i, "Fave"));
                }
            }

            /* JADX INFO: loaded from: classes.dex */
            public static class c extends b {

                public static class a extends c {
                }
            }

            public static class d extends b {
            }

            /* JADX INFO: renamed from: kd$e$b$e, reason: collision with other inner class name */
            public static class C0242e extends b {
            }

            public static class f extends b {
                public f(int i) {
                    super(ud.c(i, "UnFave"));
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public b(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Coupon_card", obj);
                mapSingletonMap.getClass();
                super("Bonuses", mapSingletonMap);
            }
        }

        public static class c extends e {

            public static class a extends c {

                /* JADX INFO: renamed from: kd$e$c$a$a, reason: collision with other inner class name */
                public static class C0243a extends a {

                    /* JADX INFO: renamed from: kd$e$c$a$a$a, reason: collision with other inner class name */
                    public static class C0244a extends C0243a {

                        /* JADX INFO: renamed from: kd$e$c$a$a$a$a, reason: collision with other inner class name */
                        public static class C0245a extends C0244a {
                        }

                        /* JADX INFO: renamed from: kd$e$c$a$a$a$b */
                        public static class b extends C0244a {
                        }

                        /* JADX WARN: Illegal instructions before constructor call */
                        public C0244a(Map map) {
                            Map mapSingletonMap = Collections.singletonMap("Promo_button", map);
                            mapSingletonMap.getClass();
                            Map mapSingletonMap2 = Collections.singletonMap("Buttons", mapSingletonMap);
                            mapSingletonMap2.getClass();
                            super(mapSingletonMap2);
                        }
                    }
                }
            }

            /* JADX INFO: loaded from: classes5.dex */
            public static class b extends c {

                public static final class a extends b {
                }

                /* JADX INFO: renamed from: kd$e$c$b$b, reason: collision with other inner class name */
                public static final class C0246b extends b {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public b(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("Category", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            /* JADX INFO: renamed from: kd$e$c$c, reason: collision with other inner class name */
            public static final class C0247c extends c {
            }

            public static final class d extends c {
            }

            /* JADX INFO: renamed from: kd$e$c$e, reason: collision with other inner class name */
            public static final class C0248e extends c {
            }

            /* JADX INFO: loaded from: classes5.dex */
            public static class f extends c {

                public static final class a extends f {
                }

                public static final class b extends f {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public f(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("Search", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static class g extends c {

                public static class a extends g {
                    public a(int i) {
                        super(ud.c(i, "Go to deeplink"));
                    }
                }

                public static class b extends g {
                    public b(int i) {
                        super(ud.c(i, "Show"));
                    }
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public g(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("Specials", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static class h extends c {

                public static final class a extends h {
                    /* JADX WARN: Illegal instructions before constructor call */
                    public a(int i) {
                        Map mapSingletonMap = Collections.singletonMap("Top_from_the_list", Integer.valueOf(i));
                        mapSingletonMap.getClass();
                        Map mapSingletonMap2 = Collections.singletonMap("Top", mapSingletonMap);
                        mapSingletonMap2.getClass();
                        super(mapSingletonMap2);
                    }
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Main screen", obj);
                mapSingletonMap.getClass();
                super("Bonuses", mapSingletonMap);
            }
        }

        public static class d extends e {

            public static class a extends d {
            }

            public static final class b extends d {
            }

            public static class c extends d {
            }

            /* JADX INFO: renamed from: kd$e$d$d, reason: collision with other inner class name */
            public static class C0249d extends d {

                /* JADX INFO: renamed from: kd$e$d$d$a */
                public static class a extends C0249d {
                }
            }

            /* JADX INFO: renamed from: kd$e$d$e, reason: collision with other inner class name */
            public static class C0250e extends d {
            }

            public static class f extends d {

                public static class a extends f {
                }

                public static class b extends f {

                    public static class a extends b {
                    }
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public f(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("Promocode", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            /* JADX INFO: loaded from: classes5.dex */
            public static class g extends d {

                public static class a extends g {
                    public a(int i) {
                        super(ud.c(i, "Bonuses"));
                    }
                }

                public static final class b extends g {
                    public static final b e = new b("card_from_bonus");
                }

                public static class c extends g {
                }

                /* JADX INFO: renamed from: kd$e$d$g$d, reason: collision with other inner class name */
                public static class C0251d extends g {
                }

                /* JADX INFO: renamed from: kd$e$d$g$e, reason: collision with other inner class name */
                public static final class C0252e extends g {
                }

                public static class f extends g {
                    public f(int i) {
                        super(ud.c(i, "List"));
                    }
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public g(Object obj) {
                    Map mapSingletonMap = Collections.singletonMap("Selected from", obj);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static class h extends d {
            }

            public static final class i extends d {
            }

            public static final class j extends d {
            }

            public static final class k extends d {
            }

            public static class l extends d {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public d(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Offer_card", obj);
                mapSingletonMap.getClass();
                super("Bonuses", mapSingletonMap);
            }
        }
    }

    public static class e0 extends kd {

        public static class a extends e0 {
        }

        public static class b extends e0 {
        }

        public static class c extends e0 {
        }

        public static class d extends e0 {
        }

        public static class e extends e0 {
            /* JADX WARN: Illegal instructions before constructor call */
            public e(String str) {
                str.getClass();
                Map mapSingletonMap = Collections.singletonMap("PopupBanner_".concat(str), new String());
                mapSingletonMap.getClass();
                super("Ord", mapSingletonMap);
            }
        }

        public static class f extends e0 {
            /* JADX WARN: Illegal instructions before constructor call */
            public f(String str) {
                str.getClass();
                Map mapSingletonMap = Collections.singletonMap("PopupBanner_".concat(str), "description");
                mapSingletonMap.getClass();
                super("Ord", mapSingletonMap);
            }
        }

        public static class g extends e0 {
        }

        public static class h extends e0 {
        }

        public static class i extends e0 {
        }

        public static class j extends e0 {
            /* JADX WARN: Illegal instructions before constructor call */
            public j(String str) {
                str.getClass();
                Map mapSingletonMap = Collections.singletonMap("Welcome_".concat(str), new String());
                mapSingletonMap.getClass();
                super("Ord", mapSingletonMap);
            }
        }

        public static class k extends e0 {
            /* JADX WARN: Illegal instructions before constructor call */
            public k(String str) {
                str.getClass();
                Map mapSingletonMap = Collections.singletonMap("Welcome_".concat(str), "skip");
                mapSingletonMap.getClass();
                super("Ord", mapSingletonMap);
            }
        }
    }

    public static class f extends d0 {

        /* JADX INFO: loaded from: classes5.dex */
        public static class a extends f {

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: renamed from: kd$f$a$a, reason: collision with other inner class name */
            public static final class EnumC0253a {
                private static final /* synthetic */ EnumC0253a[] $VALUES;
                public static final EnumC0253a Admitad;
                public static final EnumC0253a BonusProgram;
                public static final EnumC0253a Coupon;
                public static final EnumC0253a Partner;

                static {
                    EnumC0253a enumC0253a = new EnumC0253a("Admitad", 0);
                    Admitad = enumC0253a;
                    EnumC0253a enumC0253a2 = new EnumC0253a("BonusProgram", 1);
                    BonusProgram = enumC0253a2;
                    EnumC0253a enumC0253a3 = new EnumC0253a("Coupon", 2);
                    Coupon = enumC0253a3;
                    EnumC0253a enumC0253a4 = new EnumC0253a("Partner", 3);
                    Partner = enumC0253a4;
                    $VALUES = new EnumC0253a[]{enumC0253a, enumC0253a2, enumC0253a3, enumC0253a4};
                }

                public EnumC0253a() {
                    throw null;
                }

                public static EnumC0253a valueOf(String str) {
                    return (EnumC0253a) Enum.valueOf(EnumC0253a.class, str);
                }

                public static EnumC0253a[] values() {
                    return (EnumC0253a[]) $VALUES.clone();
                }
            }

            public static final class b extends a {
                /* JADX WARN: Illegal instructions before constructor call */
                public b(EnumC0253a enumC0253a, long j) {
                    enumC0253a.getClass();
                    Map mapSingletonMap = Collections.singletonMap(enumC0253a.name(), "CardId:" + j);
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("Shown", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    Map mapSingletonMap3 = Collections.singletonMap("Cards", mapSingletonMap2);
                    mapSingletonMap3.getClass();
                    super("Bonuses events", mapSingletonMap3);
                }
            }
        }

        public static class b extends f {
        }
    }

    public static class f0 extends d0 {

        public static class a extends f0 {

            /* JADX INFO: renamed from: kd$f0$a$a, reason: collision with other inner class name */
            public static final class C0254a extends a {
                public static final C0254a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Success", "ChangeNumber");
                    mapSingletonMap.getClass();
                    e = new C0254a("PhoneConfirm", mapSingletonMap);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class g extends kd {

        public static class a extends g {

            /* JADX INFO: renamed from: kd$g$a$a, reason: collision with other inner class name */
            public static final class C0255a extends a {
                public static final C0255a e = new C0255a("Add_3_checks");
            }

            public static final class b extends a {
                public static final b e = new b("Add_1_check");
            }

            public static final class c extends a {
                public static final c e = new c("CQ_fault");
            }

            public static class d extends a {

                /* JADX INFO: renamed from: kd$g$a$d$a, reason: collision with other inner class name */
                public static final class C0256a extends d {
                }

                public static final class b extends d {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public d(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("LoadingBanner", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static final class e extends a {
            }

            public static final class f extends a {
            }

            /* JADX INFO: renamed from: kd$g$a$g, reason: collision with other inner class name */
            public static final class C0257g extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Add cheque", obj);
                mapSingletonMap.getClass();
                super("Cheques event", mapSingletonMap);
            }
        }

        /* JADX INFO: loaded from: classes.dex */
        public static class b extends g {

            public static final class a extends b {
            }
        }

        public static class c extends g {

            public static final class a extends c {
                public a() {
                    super("CHEQUE_CLICKED");
                }
            }

            public static final class b extends c {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Serializable serializable) {
                Map mapSingletonMap = Collections.singletonMap("Cheques", serializable);
                mapSingletonMap.getClass();
                super("Cheques event", mapSingletonMap);
            }
        }

        public static class d extends g {

            public static final class a extends d {
            }

            public static final class b extends d {
            }

            public static final class c extends d {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public d(String str) {
                Map mapSingletonMap = Collections.singletonMap("Cheques Queue", str);
                mapSingletonMap.getClass();
                super("Cheques event", mapSingletonMap);
            }
        }
    }

    public static class g0 extends d0 {

        public static class a extends g0 {

            /* JADX INFO: renamed from: kd$g0$a$a, reason: collision with other inner class name */
            public static class C0258a extends a {

                /* JADX INFO: renamed from: kd$g0$a$a$a, reason: collision with other inner class name */
                public static final class C0259a extends C0258a {
                    public C0259a(int i) {
                        super(i, "Accept");
                    }
                }

                /* JADX INFO: renamed from: kd$g0$a$a$b */
                public static final class b extends C0258a {
                    public b(int i) {
                        super(i, "Shows");
                    }
                }

                /* JADX INFO: renamed from: kd$g0$a$a$c */
                public static final class c extends C0258a {
                    public c(int i) {
                        super(i, "Skip");
                    }
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public C0258a(int i, String str) {
                    Map mapSingletonMap = Collections.singletonMap(String.valueOf(i), str);
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("OnLaunch", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    super("PopupBanner", mapSingletonMap2);
                }
            }
        }
    }

    public static class h extends d0 {

        public static class a extends h {

            /* JADX INFO: renamed from: kd$h$a$a, reason: collision with other inner class name */
            public static final class C0260a extends a {
                /* JADX WARN: Illegal instructions before constructor call */
                public C0260a(int i, boolean z) {
                    Map mapSingletonMap = Collections.singletonMap(z ? "Close" : "Accept", Integer.valueOf(i));
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("TopBanner", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    super(mapSingletonMap2);
                }
            }

            public static class b extends a {

                /* JADX INFO: renamed from: kd$h$a$b$a, reason: collision with other inner class name */
                public static final class C0261a extends b {
                }

                /* JADX INFO: renamed from: kd$h$a$b$b, reason: collision with other inner class name */
                public static final class C0262b extends b {
                }

                public static final class c extends b {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public b(Map map) {
                    Map mapSingletonMap = Collections.singletonMap("Polls", map);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Cheques", map);
                mapSingletonMap.getClass();
                super("Cheques event", mapSingletonMap);
            }
        }

        public static class b extends h {

            public static final class a extends b {
                public static final a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Scanner", "go_to_brandlink");
                    mapSingletonMap.getClass();
                    e = new a("Cheques event", mapSingletonMap);
                }
            }
        }
    }

    public static class h0 extends kd {

        public static class a extends h0 {

            /* JADX INFO: renamed from: kd$h0$a$a, reason: collision with other inner class name */
            public static final class C0263a extends a {
            }
        }

        public static class b extends h0 {

            public static final class a extends b {
            }
        }
    }

    public static class i extends d0 {

        public static abstract class a extends i {

            /* JADX INFO: renamed from: kd$i$a$a, reason: collision with other inner class name */
            public static abstract class AbstractC0264a extends a {

                /* JADX INFO: renamed from: kd$i$a$a$a, reason: collision with other inner class name */
                public static final class C0265a extends AbstractC0264a {
                }

                /* JADX INFO: renamed from: kd$i$a$a$b */
                public static final class b extends AbstractC0264a {
                }

                /* JADX INFO: renamed from: kd$i$a$a$c */
                public static final class c extends AbstractC0264a {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public AbstractC0264a(String str) {
                    Map mapSingletonMap = Collections.singletonMap("Action", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static abstract class b extends a {

                /* JADX INFO: renamed from: kd$i$a$b$a, reason: collision with other inner class name */
                /* JADX INFO: loaded from: classes5.dex */
                public static final class C0266a extends b {
                    public C0266a() {
                        super("choosen default");
                    }
                }

                /* JADX INFO: renamed from: kd$i$a$b$b, reason: collision with other inner class name */
                public static final class C0267b extends b {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public b(String str) {
                    Map mapSingletonMap = Collections.singletonMap("Show", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Suggest", map);
                mapSingletonMap.getClass();
                super("City", mapSingletonMap);
            }
        }
    }

    public static class i0 extends d0 {

        public static class a extends i0 {
            /* JADX WARN: Illegal instructions before constructor call */
            public a(int i, q qVar) {
                qVar.getClass();
                Map mapSingletonMap = Collections.singletonMap(Integer.valueOf(i), qVar.name());
                mapSingletonMap.getClass();
                Map mapSingletonMap2 = Collections.singletonMap("Forms", mapSingletonMap);
                mapSingletonMap2.getClass();
                super("Promo events", mapSingletonMap2);
            }
        }
    }

    public static class j extends d0 {

        public static class a extends j {

            /* JADX INFO: renamed from: kd$j$a$a, reason: collision with other inner class name */
            public static class C0268a extends a {

                /* JADX INFO: renamed from: kd$j$a$a$a, reason: collision with other inner class name */
                public static final class C0269a extends C0268a {
                }
            }
        }

        public static class b extends j {

            public static final class a extends b {
                public static final a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("phone_verified_callback_success", p46.d);
                    mapSingletonMap.getClass();
                    e = new a(mapSingletonMap);
                }
            }

            /* JADX INFO: renamed from: kd$j$b$b, reason: collision with other inner class name */
            public static final class C0270b extends b {
                public static final C0270b e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("phone_verified_SMS_success", p46.d);
                    mapSingletonMap.getClass();
                    e = new C0270b(mapSingletonMap);
                }
            }

            public static class c extends b {

                public static final class a extends c {
                    public static final a e = new a("button_later");
                }

                /* JADX INFO: renamed from: kd$j$b$c$b, reason: collision with other inner class name */
                public static final class C0271b extends c {
                    public static final C0271b e = new C0271b("button_withdrawal");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public c(String str) {
                    Map mapSingletonMap = Collections.singletonMap("got_min_cb_for_card", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static final class d extends b {
                public static final d e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("AnketaError", p46.d);
                    mapSingletonMap.getClass();
                    e = new d(mapSingletonMap);
                }
            }

            public static final class e extends b {
                public static final e e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Denied", p46.d);
                    mapSingletonMap.getClass();
                    e = new e(mapSingletonMap);
                }
            }

            public static final class f extends b {
                public static final f e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("HasAlfa", p46.d);
                    mapSingletonMap.getClass();
                    e = new f(mapSingletonMap);
                }
            }

            public static final class g extends b {
                public static final g e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("WaitPlastic", p46.d);
                    mapSingletonMap.getClass();
                    e = new g(mapSingletonMap);
                }
            }

            public static final class h extends b {
                public static final h e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Created", p46.d);
                    mapSingletonMap.getClass();
                    e = new h(mapSingletonMap);
                }
            }

            public static final class i extends b {
                public static final i e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("TryAgain", p46.d);
                    mapSingletonMap.getClass();
                    e = new i(mapSingletonMap);
                }
            }

            /* JADX INFO: renamed from: kd$j$b$j, reason: collision with other inner class name */
            public static final class C0272j extends b {
                public static final C0272j e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("UserClose", p46.d);
                    mapSingletonMap.getClass();
                    e = new C0272j(mapSingletonMap);
                }
            }

            public static final class k extends b {
                public static final k e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("iframe_create_card", p46.d);
                    mapSingletonMap.getClass();
                    e = new k(mapSingletonMap);
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public b(Map<String, ? extends Object> map) {
                Map mapSingletonMap = Collections.singletonMap("BankAlfa", map);
                mapSingletonMap.getClass();
                super("Cobrand", mapSingletonMap);
            }
        }

        public static class c extends j {

            public static final class a extends c {
                public static final a e = new a("ButtonActivate");
            }

            public static final class b extends c {
                public static final b e = new b("ChangePhone");
            }

            /* JADX INFO: renamed from: kd$j$c$c, reason: collision with other inner class name */
            public static final class C0273c extends c {
                public static final C0273c e = new C0273c("HasBadPhone");
            }

            public static final class d extends c {
                public static final d e = new d("HasPhone");
            }

            public static final class e extends c {
                public static final e e = new e("NoPhone");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public c(String str) {
                Map mapSingletonMap = Collections.singletonMap("Create", str);
                mapSingletonMap.getClass();
                super("Cobrand", mapSingletonMap);
            }
        }

        public static class d extends j {

            public static final class a extends d {
                public static final a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Landing", "ButtonBack");
                    mapSingletonMap.getClass();
                    e = new a("Cobrand", mapSingletonMap);
                }
            }
        }
    }

    public static class j0 extends d0 {

        public static abstract class a extends j0 {

            /* JADX INFO: renamed from: kd$j0$a$a, reason: collision with other inner class name */
            public static final class C0274a extends a {
            }

            public static final class b extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Submit", obj);
                mapSingletonMap.getClass();
                super("Promocode", mapSingletonMap);
            }
        }

        public static final class b extends j0 {
        }
    }

    public static final class k extends gh4 implements ll3<se> {
        public static final k f = new k(0);

        @Override // defpackage.ll3
        public final se invoke() {
            return new se();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class k0 extends kd {

        public static class a extends k0 {
        }

        public static class b extends k0 {
        }

        public static class c extends k0 {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public k0(Object obj) {
            Map mapSingletonMap = Collections.singletonMap("Promocode_showcase", obj);
            mapSingletonMap.getClass();
            super("Promocode_showcase", mapSingletonMap);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class l extends gh4 implements ll3<Gson> {
        public static final l f = new l(0);

        @Override // defpackage.ll3
        public final Gson invoke() {
            ws3 ws3Var = new ws3();
            wi3 wi3Var = wi3.e;
            Objects.requireNonNull(wi3Var);
            ws3Var.g = wi3Var;
            return new Gson(ws3Var);
        }
    }

    public static class l0 extends kd {

        public static final class a extends l0 {
            public static final a e;

            static {
                Map mapSingletonMap = Collections.singletonMap("copy_ref", mx2.b);
                mapSingletonMap.getClass();
                e = new a("Ref", mapSingletonMap);
            }
        }

        public static final class b extends l0 {
            public static final b e;

            static {
                Map mapSingletonMap = Collections.singletonMap(FirebaseAnalytics.Event.SHARE, mx2.b);
                mapSingletonMap.getClass();
                e = new b("Ref", mapSingletonMap);
            }
        }
    }

    public static class m extends kd {

        public static class a extends m {

            /* JADX INFO: renamed from: kd$m$a$a, reason: collision with other inner class name */
            public static final class C0275a extends a {
                public final int e;

                public C0275a(int i) {
                    super(ud.c(i, "click"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0275a) && this.e == ((C0275a) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Click(id=", ")");
                }
            }

            public static final class b extends a {
                public final int e;

                public b(int i) {
                    super(ud.c(i, "hide"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof b) && this.e == ((b) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Hide(id=", ")");
                }
            }

            public static final class c extends a {
                public final int e;

                public c(int i) {
                    super(ud.c(i, "shows"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof c) && this.e == ((c) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Shows(id=", ")");
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Balance", map);
                mapSingletonMap.getClass();
                super("CreditBanner", mapSingletonMap);
            }
        }

        public static class b extends m {

            public static final class a extends b {
                public final int e;

                public a(int i) {
                    super(ud.c(i, "click"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof a) && this.e == ((a) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Click(id=", ")");
                }
            }

            /* JADX INFO: renamed from: kd$m$b$b, reason: collision with other inner class name */
            public static final class C0276b extends b {
                public final int e;

                public C0276b(int i) {
                    super(ud.c(i, "hide"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0276b) && this.e == ((C0276b) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Hide(id=", ")");
                }
            }

            public static final class c extends b {
                public final int e;

                public c(int i) {
                    super(ud.c(i, "shows"));
                    this.e = i;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof c) && this.e == ((c) obj).e;
                }

                public final int hashCode() {
                    return Integer.hashCode(this.e);
                }

                public final String toString() {
                    return kv2.b(this.e, "Shows(id=", ")");
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public b(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Bonuses", map);
                mapSingletonMap.getClass();
                super("CreditBanner", mapSingletonMap);
            }
        }
    }

    public static class m0 extends kd {
    }

    public static abstract class n extends d0 {

        public static abstract class a extends n {

            /* JADX INFO: renamed from: kd$n$a$a, reason: collision with other inner class name */
            public static final class C0277a extends a {
            }
        }
    }

    public static class n0 extends d0 {

        public static final class a extends n0 {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class o extends kd {
        public static final o e = new o("expand_all_categories", mx2.b);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class o0 {
        private static final /* synthetic */ o0[] $VALUES;
        public static final o0 Bonuses;
        public static final o0 Category;
        public static final o0 Deeplink;
        public static final o0 Search;

        static {
            o0 o0Var = new o0("Search", 0);
            Search = o0Var;
            o0 o0Var2 = new o0("Bonuses", 1);
            Bonuses = o0Var2;
            o0 o0Var3 = new o0("Deeplink", 2);
            Deeplink = o0Var3;
            o0 o0Var4 = new o0("Category", 3);
            Category = o0Var4;
            $VALUES = new o0[]{o0Var, o0Var2, o0Var3, o0Var4};
        }

        public o0() {
            throw null;
        }

        public static o0 valueOf(String str) {
            return (o0) Enum.valueOf(o0.class, str);
        }

        public static o0[] values() {
            return (o0[]) $VALUES.clone();
        }
    }

    public static class p extends kd {

        public static class a extends p {

            /* JADX INFO: renamed from: kd$p$a$a, reason: collision with other inner class name */
            public static final class C0278a extends a {
                public static final C0278a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("tap", new Object());
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("shop", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    e = new C0278a("favorite", mapSingletonMap2);
                }
            }
        }
    }

    public static class p0 extends kd {

        public static class a extends p0 {

            /* JADX INFO: renamed from: kd$p0$a$a, reason: collision with other inner class name */
            public static final class C0279a extends a {
            }

            public static final class b extends a {
            }

            public static final class c extends a {
            }

            public static final class d extends a {
            }

            public static final class e extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Showcase", obj);
                mapSingletonMap.getClass();
                super("Showcase Checkscan", mapSingletonMap);
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class q {
        private static final /* synthetic */ q[] $VALUES;
        public static final q OpenForm;
        public static final q RegisterForm;

        static {
            q qVar = new q("OpenForm", 0);
            OpenForm = qVar;
            q qVar2 = new q("RegisterForm", 1);
            RegisterForm = qVar2;
            $VALUES = new q[]{qVar, qVar2};
        }

        public q() {
            throw null;
        }

        public static q valueOf(String str) {
            return (q) Enum.valueOf(q.class, str);
        }

        public static q[] values() {
            return (q[]) $VALUES.clone();
        }
    }

    public static abstract class q0 extends kd {

        public static abstract class a extends q0 {

            /* JADX INFO: renamed from: kd$q0$a$a, reason: collision with other inner class name */
            public static final class C0280a extends a {
            }

            /* JADX INFO: loaded from: classes5.dex */
            public static class b extends a {

                /* JADX INFO: renamed from: kd$q0$a$b$a, reason: collision with other inner class name */
                public static final class C0281a extends b {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public b(Object obj) {
                    Map mapSingletonMap = Collections.singletonMap("Receipts", obj);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static abstract class c extends a {

                /* JADX INFO: renamed from: kd$q0$a$c$a, reason: collision with other inner class name */
                public static final class C0282a extends c {
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Select", obj);
                mapSingletonMap.getClass();
                super("TabBar", mapSingletonMap);
            }
        }
    }

    public static class r extends kd {

        public static final class a extends r {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class r0 extends kd {
        public static final r0 e = new r0("tap_bonus", mx2.b);
    }

    public static class s extends kd {

        public static class a extends s {

            /* JADX INFO: renamed from: kd$s$a$a, reason: collision with other inner class name */
            public static final class C0283a extends a {
                public static final C0283a e;

                static {
                    Map mapSingletonMap = Collections.singletonMap("Bottom_balance", "Open");
                    mapSingletonMap.getClass();
                    e = new C0283a("Header", mapSingletonMap);
                }
            }
        }
    }

    public static class s0 extends kd {

        public static class a extends s0 {

            /* JADX INFO: renamed from: kd$s0$a$a, reason: collision with other inner class name */
            public static class C0284a extends a {

                /* JADX INFO: renamed from: kd$s0$a$a$a, reason: collision with other inner class name */
                public static class C0285a extends C0284a {
                }

                /* JADX INFO: renamed from: kd$s0$a$a$b */
                public static class b extends C0284a {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public C0284a(int i, String str) {
                    Map mapSingletonMap = Collections.singletonMap(String.valueOf(i), str);
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("Banner", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    super("Tasks Showcase", mapSingletonMap2);
                }
            }
        }

        public static class b extends s0 {

            public static final class a extends b {
                public static final a e = new a("Clicks");
            }

            /* JADX INFO: renamed from: kd$s0$b$b, reason: collision with other inner class name */
            public static final class C0286b extends b {
                public static final C0286b e = new C0286b("Success");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public b(String str) {
                Map mapSingletonMap = Collections.singletonMap("Daily Advertising", str);
                mapSingletonMap.getClass();
                super("Tasks Showcase", mapSingletonMap);
            }
        }

        public static class c extends s0 {

            public static class a extends c {

                /* JADX INFO: renamed from: kd$s0$c$a$a, reason: collision with other inner class name */
                public static class C0287a extends a {
                    public C0287a() {
                        super("Clicks");
                    }
                }

                public static class b extends a {
                    public b() {
                        super("Shows");
                    }
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public a(String str) {
                    Map mapSingletonMap = Collections.singletonMap("Banner", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            public static class b extends c {

                public static final class a extends b {
                    public static final a e;

                    static {
                        Map mapSingletonMap = Collections.singletonMap("Block", "Clicks");
                        mapSingletonMap.getClass();
                        e = new a(mapSingletonMap);
                    }
                }
            }

            /* JADX INFO: renamed from: kd$s0$c$c, reason: collision with other inner class name */
            public static class C0288c extends c {

                /* JADX INFO: renamed from: kd$s0$c$c$a */
                public static class a extends C0288c {
                }
            }

            /* JADX INFO: loaded from: classes5.dex */
            public static class d extends c {

                public static class a extends d {
                }

                public static class b extends d {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public d(String str) {
                    Map mapSingletonMap = Collections.singletonMap("Success", str);
                    mapSingletonMap.getClass();
                    super(mapSingletonMap);
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Daily Bonus", map);
                mapSingletonMap.getClass();
                super("Tasks Showcase", mapSingletonMap);
            }
        }

        public static class d extends s0 {

            public static class a extends d {
            }

            public static class b extends d {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public d(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("Flocktory_screen", obj);
                mapSingletonMap.getClass();
                super("Tasks Showcase", mapSingletonMap);
            }
        }

        public static class e extends s0 {

            public static class a extends e {
            }
        }

        public static class f extends s0 {

            /* JADX INFO: loaded from: classes5.dex */
            public static class a extends f {

                /* JADX INFO: renamed from: kd$s0$f$a$a, reason: collision with other inner class name */
                public static class C0289a extends a {
                    public C0289a(int i) {
                        super(i, "Button action");
                    }
                }

                public static class b extends a {
                    public b(int i, int i2) {
                        super(i, jh.b(i2, "Button_subtask_"));
                    }
                }

                public static class c extends a {
                    public c(int i) {
                        super(i, "Clicks");
                    }
                }

                public static class d extends a {
                }

                public static class e extends a {
                    public e(int i) {
                        super(i, "Shows");
                    }
                }

                /* JADX INFO: renamed from: kd$s0$f$a$f, reason: collision with other inner class name */
                public static class C0290f extends a {
                }

                /* JADX WARN: Illegal instructions before constructor call */
                public a(int i, String str) {
                    Map mapSingletonMap = Collections.singletonMap(String.valueOf(i), str);
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("Tasks", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    super("Tasks Showcase", mapSingletonMap2);
                }
            }
        }
    }

    public static class t extends kd {

        public static class a extends t {

            /* JADX INFO: renamed from: kd$t$a$a, reason: collision with other inner class name */
            public static final class C0291a extends a {
            }
        }
    }

    public static class t0 extends kd {

        public static final class a extends t0 {
        }

        public static final class b extends t0 {
        }

        public static final class c extends t0 {
        }

        public static final class d extends t0 {
        }
    }

    public static class u extends d0 {

        public static class a extends u {

            /* JADX INFO: renamed from: kd$u$a$a, reason: collision with other inner class name */
            public static final class C0292a extends a {
            }

            public static final class b extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(int i, b36 b36Var) {
                Map mapSingletonMap = Collections.singletonMap("PushId:" + i, b36Var);
                mapSingletonMap.getClass();
                super("Notification", mapSingletonMap);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class v extends kd {

        public static class a extends v {

            /* JADX INFO: renamed from: kd$v$a$a, reason: collision with other inner class name */
            public static class C0293a extends a {
            }

            public static final class b extends a {
                public static final b e = new b("Open");
            }

            public static class c extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Object obj) {
                Map mapSingletonMap = Collections.singletonMap("List", obj);
                mapSingletonMap.getClass();
                super("Notifications", mapSingletonMap);
            }
        }
    }

    public static class w extends kd {

        public static class a extends w {

            /* JADX INFO: renamed from: kd$w$a$a, reason: collision with other inner class name */
            public static final class C0294a extends a {
            }

            public static final class b extends a {
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(Map map) {
                Map mapSingletonMap = Collections.singletonMap("Landing", map);
                mapSingletonMap.getClass();
                super("OfferLanding", mapSingletonMap);
            }
        }
    }

    public static class x extends d0 {

        public static class a extends x {

            /* JADX INFO: renamed from: kd$x$a$a, reason: collision with other inner class name */
            public static final class C0295a extends a {
                public static final C0295a e = new C0295a("get_card");
            }

            public static final class b extends a {
                public static final b e = new b("pass");
            }

            public static final class c extends a {
                public static final c e = new c(TtmlNode.START);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public a(String str) {
                Map mapSingletonMap = Collections.singletonMap("10_rub", str);
                mapSingletonMap.getClass();
                super("Onboarding", mapSingletonMap);
            }
        }
    }

    public static class y extends kd {

        public static class a extends y {
        }
    }

    public static class z extends kd {

        public static class a extends z {

            /* JADX INFO: renamed from: kd$z$a$a, reason: collision with other inner class name */
            public static class C0296a extends a {
            }
        }
    }

    public kd(String str, Map<String, ? extends Object> map) {
        map.getClass();
        this.a = str;
        this.b = map;
    }

    public static void b(Map map) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Object obj = map.get((String) it.next());
            boolean z2 = obj instanceof String;
            fh8 fh8Var = d;
            if (z2) {
                Log.d("AnalyticsEvent", "name: " + obj + ", params: None");
                re reVar = (re) fh8Var.getValue();
                if (reVar != null) {
                    reVar.e(Bundle.EMPTY, (String) obj);
                }
            } else if (obj instanceof Map) {
                Map map2 = (Map) obj;
                for (Object obj2 : map2.keySet()) {
                    if (obj2 instanceof String) {
                        Bundle bundle = new Bundle();
                        Object obj3 = map2.get(obj2);
                        if (obj3 instanceof Map) {
                            for (Map.Entry entry : ((Map) obj3).entrySet()) {
                                Object key = entry.getKey();
                                Object value = entry.getValue();
                                if ((key instanceof String) && ((value instanceof String) || (value instanceof Enum))) {
                                    bundle.putString((String) key, value.toString());
                                } else {
                                    Log.d("AnalyticsEvent", "Not str!: " + obj3);
                                }
                            }
                        }
                        Log.d("AnalyticsEvent", "name: " + obj2 + ", params: " + bundle);
                        re reVar2 = (re) fh8Var.getValue();
                        if (reVar2 != null) {
                            reVar2.e(bundle, (String) obj2);
                        }
                    }
                }
            }
        }
    }

    public final void a() {
        Map<String, Object> map = this.b;
        try {
            AppMetrica.reportEvent(this.a, ((Gson) c.getValue()).j(map));
            if (this instanceof d0) {
                return;
            }
            b(map);
        } catch (Exception unused) {
        }
    }

    public final void c() {
        a();
        oa6.I.a(this.a, (122 & 2) != 0 ? null : null, (122 & 4) != 0 ? null : this.b, null, null);
    }
}
