package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.IParamsAppender;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1135nm implements IParamsAppender {
    public final C1230re a;
    public final Ad b;
    public final Wb c = new Wb();

    public C1135nm(C1230re c1230re, Ad ad) {
        this.a = c1230re;
        this.b = ad;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.IParamsAppender
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void appendParams(Uri.Builder builder, C1238rm c1238rm) {
        String str;
        builder.path("analytics/startup");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.DEVICE_ID), c1238rm.getDeviceId());
        a(builder, Fa.I.h(), this.c);
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_SET_ID), c1238rm.getAppSetId());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_SET_ID_SCOPE), c1238rm.getAppSetIdScope());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_PLATFORM), c1238rm.getAppPlatform());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.PROTOCOL_VERSION), c1238rm.getProtocolVersion());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME), c1238rm.getAnalyticsSdkVersionName());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.MODEL), c1238rm.getModel());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.MANUFACTURER), c1238rm.getManufacturer());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.OS_VERSION), c1238rm.getOsVersion());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_WIDTH), String.valueOf(c1238rm.getScreenWidth()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_HEIGHT), String.valueOf(c1238rm.getScreenHeight()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_DPI), String.valueOf(c1238rm.getScreenDpi()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCALE_FACTOR), String.valueOf(c1238rm.getScaleFactor()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.LOCALE), c1238rm.getLocale());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.DEVICE_TYPE), c1238rm.getDeviceType());
        builder.appendQueryParameter(this.a.a("queries"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("query_hosts"), String.valueOf(2));
        String strA = this.a.a("features");
        List<String> listG = ((Nk) this.b).g();
        String[] strArr = {this.a.a("permissions_collecting"), this.a.a("features_collecting"), this.a.a("google_aid"), this.a.a("huawei_oaid"), this.a.a("sim_info"), this.a.a("ssl_pinning")};
        ArrayList arrayList = new ArrayList(listG);
        arrayList.addAll(Arrays.asList(strArr));
        builder.appendQueryParameter(strA, StringUtils.wrapFeatures((String[]) arrayList.toArray(new String[0])));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_ID), c1238rm.getPackageName());
        builder.appendQueryParameter(this.a.a("app_debuggable"), ((Y5) c1238rm).a);
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_VERSION), c1238rm.getAppVersion());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_VERSION_CODE), c1238rm.getAppBuildNumber());
        if (c1238rm.l) {
            String str2 = c1238rm.m;
            if (!TextUtils.isEmpty(str2)) {
                builder.appendQueryParameter(this.a.a("country_init"), str2);
            }
        } else {
            builder.appendQueryParameter(this.a.a("detect_locale"), String.valueOf(1));
        }
        F3 f3 = c1238rm.i;
        if (!xo.a(f3.a)) {
            builder.appendQueryParameter(this.a.a("distribution_customization"), String.valueOf(1));
            builder.appendQueryParameter(this.a.a("clids_set"), Vm.a(f3.a));
            int iOrdinal = f3.b.ordinal();
            if (iOrdinal == 1) {
                str = "api";
            } else if (iOrdinal != 2) {
                str = iOrdinal != 3 ? "" : "retail";
            } else {
                str = "satellite";
            }
            builder.appendQueryParameter(this.a.a("clids_set_source"), str);
            String str3 = c1238rm.f;
            String strA2 = c1238rm.g;
            if (TextUtils.isEmpty(str3)) {
                InterfaceC1410yg interfaceC1410yg = c1238rm.o.b;
                C1155og c1155ogA = interfaceC1410yg == null ? null : interfaceC1410yg.a();
                if (c1155ogA != null) {
                    str3 = c1155ogA.a;
                    strA2 = AbstractC1129ng.a(c1155ogA.d);
                }
            }
            if (!TextUtils.isEmpty(str3)) {
                builder.appendQueryParameter(this.a.a("install_referrer"), str3);
                if (strA2 == null) {
                    strA2 = "null";
                }
                builder.appendQueryParameter(this.a.a("install_referrer_source"), strA2);
            }
        }
        String uuid = c1238rm.getUuid();
        if (!TextUtils.isEmpty(uuid)) {
            builder.appendQueryParameter(this.a.a(CommonUrlParts.UUID), uuid);
        }
        builder.appendQueryParameter(this.a.a("time"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("stat_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("retry_policy"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("cache_control"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("permissions_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("app_system_flag"), ((Y5) c1238rm).b);
        builder.appendQueryParameter(this.a.a("attribution"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("startup_update"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("external_attribution"), String.valueOf(1));
        Map<String, Integer> mapC = ((Nk) this.b).c();
        for (String str4 : mapC.keySet()) {
            builder.appendQueryParameter(str4, String.valueOf(mapC.get(str4)));
        }
    }

    public final void a(Uri.Builder builder, DataSendingRestrictionController dataSendingRestrictionController, Wb wb) {
        wb.getClass();
        AdvertisingIdsHolder identifiers = Fa.I.c().getIdentifiers();
        if (identifiers != null && !dataSendingRestrictionController.isRestrictedForSdk()) {
            AdTrackingInfoResult google = identifiers.getGoogle();
            boolean zIsValid = google.isValid();
            C1230re c1230re = this.a;
            if (!zIsValid) {
                builder.appendQueryParameter(c1230re.a(CommonUrlParts.ADV_ID), "");
            } else {
                builder.appendQueryParameter(c1230re.a(CommonUrlParts.ADV_ID), google.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult huawei = identifiers.getHuawei();
            boolean zIsValid2 = huawei.isValid();
            C1230re c1230re2 = this.a;
            if (!zIsValid2) {
                builder.appendQueryParameter(c1230re2.a(CommonUrlParts.HUAWEI_OAID), "");
            } else {
                builder.appendQueryParameter(c1230re2.a(CommonUrlParts.HUAWEI_OAID), huawei.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult yandex = identifiers.getYandex();
            boolean zIsValid3 = yandex.isValid();
            C1230re c1230re3 = this.a;
            if (!zIsValid3) {
                builder.appendQueryParameter(c1230re3.a(CommonUrlParts.YANDEX_ADV_ID), "");
                return;
            } else {
                builder.appendQueryParameter(c1230re3.a(CommonUrlParts.YANDEX_ADV_ID), yandex.mAdTrackingInfo.advId);
                return;
            }
        }
        builder.appendQueryParameter(this.a.a(CommonUrlParts.ADV_ID), "");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.HUAWEI_OAID), "");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.YANDEX_ADV_ID), "");
    }
}
