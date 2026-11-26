package yads;

import android.location.Location;
import android.net.Uri;
import androidx.autofill.HintConstants;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJDeviceNetworkKt;
import com.tapjoy.TapjoyConstants;
import defpackage.dp7;
import defpackage.fh8;
import defpackage.jp7;
import defpackage.r54;
import defpackage.xr;
import defpackage.zo7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class uw2 {
    public final jo2 a;
    public final zo7 b;
    public final zo7 c;
    public final defpackage.cl4 d;

    public uw2(sw2 sw2Var) {
        zg5 zg5Var;
        r8 r8Var = new r8();
        this.a = new jo2();
        defpackage.uz4 uz4Var = new defpackage.uz4();
        a(uz4Var, "ad_unit_id", sw2Var.A);
        a(uz4Var, TJAdUnitConstants.String.WIDTH, sw2Var.C);
        a(uz4Var, TJAdUnitConstants.String.HEIGHT, sw2Var.D);
        a(uz4Var, "ad_size_type", sw2Var.E);
        a(uz4Var, TJAdUnitConstants.String.ORIENTATION, sw2Var.F);
        a(uz4Var, "ads_count", sw2Var.s);
        a(uz4Var, CommonUrlParts.SCREEN_WIDTH, sw2Var.H);
        a(uz4Var, CommonUrlParts.SCREEN_HEIGHT, sw2Var.I);
        a(uz4Var, CommonUrlParts.SCALE_FACTOR, sw2Var.J);
        a(uz4Var, "ad_type", sw2Var.B);
        a(uz4Var, "network_type", sw2Var.M);
        a(uz4Var, "carrier", sw2Var.N);
        a((Map) uz4Var, "dnt", sw2Var.S);
        a((Map) uz4Var, "gaid_reset", sw2Var.T);
        a((Map) uz4Var, "huawei_dnt", sw2Var.V);
        a(uz4Var, "image_sizes", sw2Var.b0);
        a(uz4Var, "response_ad_format", sw2Var.c0);
        a(uz4Var, "open_bidding_data", sw2Var.f0);
        a(uz4Var, "session_random", sw2Var.d0);
        a(uz4Var, "charset", sw2Var.e0);
        a(uz4Var, r8Var.b(), sw2Var.j0);
        a(uz4Var, r8Var.f(), sw2Var.k0);
        a(uz4Var, r8Var.g(), sw2Var.l0);
        a(uz4Var, r8Var.d(), sw2Var.m0);
        a(uz4Var, r8Var.e(), sw2Var.n0);
        a((Map) uz4Var, r8Var.c(), sw2Var.Y);
        a(uz4Var, CommonUrlParts.LOCALE, sw2Var.o0);
        a(uz4Var, "content_language", sw2Var.p0);
        List list = sw2Var.q0;
        a(uz4Var, "device_languages", list != null ? defpackage.qn1.a0(list, StringUtils.PROCESS_POSTFIX_DELIMITER, null, null, 0, null, 62) : null);
        a(uz4Var, CommonUrlParts.APP_ID, sw2Var.r0);
        a(uz4Var, "app_version_code", sw2Var.s0);
        a(uz4Var, CommonUrlParts.APP_VERSION, sw2Var.t0);
        a(uz4Var, "appmetrica_version", sw2Var.G0);
        a(uz4Var, CommonUrlParts.SCREEN_DPI, Integer.valueOf(sw2Var.v0));
        a(uz4Var, "safe_area_inset_left", Float.valueOf(sw2Var.w0));
        a(uz4Var, "safe_area_inset_top", Float.valueOf(sw2Var.x0));
        a(uz4Var, "safe_area_inset_right", Float.valueOf(sw2Var.y0));
        a(uz4Var, "safe_area_inset_bottom", Float.valueOf(sw2Var.z0));
        a(uz4Var, "cutout_safe_area_inset_top", Float.valueOf(sw2Var.A0));
        a(uz4Var, "cutout_safe_area_inset_bottom", Float.valueOf(sw2Var.B0));
        a((Map) uz4Var, "user_consent", sw2Var.o);
        a(uz4Var, TapjoyConstants.PREF_SUBJECT_TO_GDPR, sw2Var.u);
        a(uz4Var, "gdpr_consent", sw2Var.v);
        a(uz4Var, "cmp_present", Integer.valueOf(sw2Var.t ? 1 : 0));
        a(uz4Var, "parsed_purpose_consents", sw2Var.w);
        a(uz4Var, "parsed_vendor_consents", sw2Var.x);
        a(uz4Var, "addtl_consent", sw2Var.y);
        a(uz4Var, "bidding_data", sw2Var.g0);
        a(uz4Var, "prefetched_mediation_data", sw2Var.h0);
        a(uz4Var, "connected_network_ids", sw2Var.i0);
        a(uz4Var, "sdk_version", sw2Var.E0);
        a(uz4Var, "sdk_version_name", sw2Var.F0);
        a(uz4Var, "sdk_vendor", "yandex");
        a(uz4Var, "preferred_theme", sw2Var.H0);
        a(uz4Var, "device_theme", sw2Var.I0);
        a((Map) uz4Var, "age_restricted_user", sw2Var.p);
        a(uz4Var, "view_size_info", sw2Var.J0);
        a((Map) uz4Var, "web_view_available", sw2Var.K0);
        a(uz4Var, "startup_version", sw2Var.L0);
        a(uz4Var, "session-data", sw2Var.O0);
        a(uz4Var, "user-agent", sw2Var.N0);
        a(uz4Var, "stub_reason", sw2Var.R0);
        a((Map) uz4Var, "gms_available", sw2Var.S0);
        a((Map) uz4Var, "opt_out", sw2Var.T0);
        a(uz4Var, "ram", sw2Var.U0);
        a(uz4Var, "cpu_cores", sw2Var.V0);
        a(uz4Var, "timezone", sw2Var.W0);
        a(uz4Var, "hour_format", sw2Var.X0);
        a(uz4Var, "disk_free", sw2Var.Y0);
        a(uz4Var, "disk_total", sw2Var.Z0);
        a(uz4Var, "time_since_booted", sw2Var.a1);
        a(uz4Var, "video_decoders", sw2Var.b1);
        for (Map.Entry entry : sw2Var.M0.entrySet()) {
            a(uz4Var, (String) entry.getKey(), (String) entry.getValue());
        }
        for (Map.Entry entry2 : sw2Var.n.entrySet()) {
            a(uz4Var, (String) entry2.getKey(), (String) entry2.getValue());
        }
        if (!sw2Var.l || sw2Var.k) {
            a(uz4Var, CommonUrlParts.UUID, sw2Var.z);
        }
        if (!sw2Var.l) {
            a(uz4Var, "age", sw2Var.C0);
            a(uz4Var, HintConstants.AUTOFILL_HINT_GENDER, sw2Var.D0);
            a(uz4Var, "context_query", sw2Var.Z);
            a(uz4Var, "context_taglist", sw2Var.a0);
            a(uz4Var, "google_aid", sw2Var.U);
            a(uz4Var, CommonUrlParts.APP_SET_ID, sw2Var.q);
            a(uz4Var, "huawei_oaid", sw2Var.W);
            a(uz4Var, "mauid", sw2Var.r);
            a(uz4Var, r8Var.a(), sw2Var.u0);
            a(uz4Var, "mcc", sw2Var.K);
            a(uz4Var, "mnc", sw2Var.L);
            a(uz4Var, "cellid", sw2Var.P);
            a(uz4Var, "lac", sw2Var.Q);
            a(uz4Var, TJDeviceNetworkKt.TJC_CONNECTION_TYPE_WIFI, sw2Var.R);
            a(uz4Var, "battery_charge", sw2Var.X);
            a(uz4Var, "server_side_client_ip", sw2Var.P0);
            a(uz4Var, "ipv6", sw2Var.Q0);
        }
        if (!sw2Var.a) {
            n8 n8Var = sw2Var.O;
            Location location = (n8Var == null || (location = n8Var.f) == null) ? sw2Var.G : location;
            if (location != null) {
                zg5 zg5Var2 = zg5.l;
                if (zg5Var2 == null) {
                    synchronized (zg5.k) {
                        zg5Var = zg5.l;
                        if (zg5Var == null) {
                            zg5Var = new zg5();
                            zg5.l = zg5Var;
                        }
                    }
                    zg5Var2 = zg5Var;
                }
                if (zg5Var2.b()) {
                    a(uz4Var, "lat", String.valueOf(location.getLatitude()));
                    a(uz4Var, "lon", String.valueOf(location.getLongitude()));
                    a(uz4Var, "location_timestamp", String.valueOf(location.getTime()));
                    a(uz4Var, "precision", String.valueOf((int) location.getAccuracy()));
                }
            }
        }
        this.b = defpackage.qn1.K(uz4Var.b().entrySet());
        defpackage.uz4 uz4Var2 = new defpackage.uz4();
        for (Map.Entry entry3 : sw2Var.m.entrySet()) {
            a(uz4Var2, (String) entry3.getKey(), entry3.getValue());
        }
        this.c = defpackage.qn1.K(uz4Var2.b().entrySet());
        this.d = new fh8(new r54(this, 5));
    }

    public static final String a(uw2 uw2Var) {
        zo7 zo7Var = uw2Var.b;
        zo7 zo7Var2 = uw2Var.c;
        zo7Var.getClass();
        zo7Var2.getClass();
        return jp7.m(dp7.g(new xr(new zo7[]{zo7Var, zo7Var2})), "&", new defpackage.mg6(6), 30);
    }

    public final String toString() {
        return (String) this.d.getValue();
    }

    public static final CharSequence a(Map.Entry entry) {
        return entry.getKey() + "=" + entry.getValue();
    }

    public final void a(Map map, String str, Object obj) {
        String strEncode;
        if (obj != null) {
            String strEncode2 = Uri.encode(str);
            if (!this.a.a.contains(str)) {
                strEncode = Uri.encode(obj.toString());
            } else {
                strEncode = Uri.encode(obj.toString(), StringUtils.PROCESS_POSTFIX_DELIMITER);
            }
            map.put(strEncode2, strEncode);
        }
    }

    public final void a(Map map, String str, Boolean bool) {
        if (bool != null) {
            a(map, str, Integer.valueOf(bool.booleanValue() ? 1 : 0));
        }
    }
}
