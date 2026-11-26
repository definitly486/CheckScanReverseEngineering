package yads;

import android.content.Context;
import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.k57;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class te5 implements a85 {
    public final zg5 a;
    public final we5 b;
    public final re5 c;
    public final Context d;

    public te5(Context context, q84 q84Var) {
        zg5 zg5Var;
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
        we5 we5Var = new we5(q84Var);
        re5 re5Var = new re5();
        this.a = zg5Var2;
        this.b = we5Var;
        this.c = re5Var;
        this.d = context.getApplicationContext();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x01a9  */
    @Override // yads.a85
    public final Object a(en4 en4Var) {
        nn2 nn2Var;
        Map mapA;
        Object aVar;
        Object aVar2;
        Set setA;
        lv4 lv4Var;
        Object aVar3;
        String strOptString;
        JSONObject jSONObjectOptJSONObject;
        we5 we5Var = this.b;
        we5Var.b.getClass();
        int i = en4Var.a;
        b95 b95Var = new b95(en4Var.b);
        Map map = en4Var.c;
        if (map == null) {
            map = defpackage.mx2.b;
        }
        a95 a95Var = new a95(i, b95Var, map);
        ve5 ve5Var = we5Var.a;
        String str = (String) ve5Var.b.a(a95Var);
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean zOptBoolean = jSONObject.optBoolean("custom_click_handling_enabled");
            boolean zOptBoolean2 = jSONObject.optBoolean("legacy_visibility_logic_enabled");
            boolean zOptBoolean3 = jSONObject.optBoolean("legacy_vast_tracking_enabled");
            boolean zOptBoolean4 = jSONObject.optBoolean("overlapping_view_tracking_enabled");
            boolean zOptBoolean5 = jSONObject.optBoolean("overlapping_window_tracking_enabled");
            boolean zOptBoolean6 = jSONObject.optBoolean("open_measurement_sdk_disabled");
            defpackage.xb4 xb4Var = zq3.a;
            Boolean boolValueOf = jSONObject.has("visibility_error_indicator_enabled") ? Boolean.valueOf(jSONObject.optBoolean("visibility_error_indicator_enabled")) : null;
            String strOptString2 = jSONObject.optString("mraid_controller", null);
            String strOptString3 = jSONObject.optString("open_measurement_sdk_controller", null);
            String strOptString4 = jSONObject.optString("click_handler_type", null);
            String strOptString5 = jSONObject.optString("ad_host", null);
            String strOptString6 = jSONObject.optString("divkit_font", null);
            String strOptString7 = jSONObject.optString("instream_design", null);
            boolean zOptBoolean7 = jSONObject.optBoolean("sensitive_mode_disabled");
            boolean zOptBoolean8 = jSONObject.optBoolean("hard_sensitive_mode_enabled");
            boolean zOptBoolean9 = jSONObject.optBoolean("encrypted_requests_enabled");
            Boolean boolValueOf2 = jSONObject.has("mediation_sensitive_mode_disabled") ? Boolean.valueOf(jSONObject.optBoolean("mediation_sensitive_mode_disabled")) : null;
            boolean zOptBoolean10 = jSONObject.optBoolean("fused_location_provider_disabled");
            boolean zOptBoolean11 = jSONObject.optBoolean("lock_screen_enabled");
            boolean zOptBoolean12 = jSONObject.optBoolean("impression_validation_on_click_enabled");
            boolean zOptBoolean13 = jSONObject.optBoolean("legacy_slider_impression_enabled");
            long jOptLong = jSONObject.optLong("reload_timeout");
            ve5Var.c.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() + (jOptLong > 0 ? jOptLong * 1000 : CalendarModelKt.MillisecondsIn24Hours);
            int iOptInt = jSONObject.optInt("ad_ids_storage_size");
            int iOptInt2 = jSONObject.optInt("native_web_view_pool_size");
            long jOptLong2 = jSONObject.optLong("max_disk_cache_size_bytes_for_video");
            long jOptLong3 = jSONObject.optLong("max_disk_cache_size_bytes_for_request_queue");
            Integer numA = zq3.a("ad_request_max_retries", jSONObject);
            Integer numA2 = zq3.a("ping_request_max_retries", jSONObject);
            boolean zOptBoolean14 = jSONObject.optBoolean("show_version_validation_error_log", false);
            boolean zOptBoolean15 = jSONObject.optBoolean("show_version_validation_error_indicator", false);
            boolean zOptBoolean16 = jSONObject.optBoolean("fullscreen_back_button_enabled", false);
            boolean zOptBoolean17 = jSONObject.optBoolean("location_consent", false);
            boolean zOptBoolean18 = jSONObject.optBoolean("divkit_disabled", false);
            boolean zOptBoolean19 = jSONObject.optBoolean("libssl_enabled", false);
            String strOptString8 = jSONObject.optString("light_bundle_script_url", null);
            boolean zOptBoolean20 = jSONObject.optBoolean("should_wait_light_bundle_script_loading_on_configuration", false);
            boolean zOptBoolean21 = jSONObject.optBoolean("should_start_light_bundle_script_loading_on_configuration", false);
            boolean zOptBoolean22 = jSONObject.optBoolean("client_bidding_startup_initialization_enabled");
            boolean zOptBoolean23 = jSONObject.optBoolean("header_bidding_startup_initialization_enabled");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("bidding_settings");
            dt dtVarB = jSONObjectOptJSONObject2 != null ? ve5Var.e.b(jSONObjectOptJSONObject2) : null;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("encryption");
            ve5Var.d.getClass();
            if (jSONObjectOptJSONObject3 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("rsa")) == null) {
                nn2Var = null;
            } else {
                String strOptString9 = jSONObjectOptJSONObject.optString("public_key", "");
                Integer numA3 = zq3.a("version", jSONObjectOptJSONObject);
                if (strOptString9.length() <= 0 || numA3 == null) {
                    nn2Var = null;
                } else {
                    nn2Var = new nn2(strOptString9, numA3.intValue());
                }
            }
            boolean zOptBoolean24 = jSONObject.optBoolean("legacy_impression_callback_enabled", false);
            boolean zOptBoolean25 = jSONObject.optBoolean("close_fullscreen_with_adtune_disabled", false);
            boolean zOptBoolean26 = jSONObject.optBoolean("render_asset_validation_enabled", false);
            boolean zOptBoolean27 = jSONObject.optBoolean("automatic_sdk_initialization_delay_enabled", false);
            boolean zOptBoolean28 = jSONObject.optBoolean("native_banner_enabled", false);
            boolean zOptBoolean29 = jSONObject.optBoolean("use_divkit_close_action_instead_system_click", false);
            String strOptString10 = jSONObject.optString("banner_size_calculation_type", null);
            String strOptString11 = jSONObject.optString("startup_version", null);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("startup_parameters");
            if (jSONObjectOptJSONObject4 != null) {
                ve5Var.h.getClass();
                mapA = oq5.a(jSONObjectOptJSONObject4);
            } else {
                mapA = null;
            }
            boolean zOptBoolean30 = jSONObject.optBoolean("app_open_ad_preloading_enabled", false);
            boolean zOptBoolean31 = jSONObject.optBoolean("interstitial_preloading_enabled", false);
            boolean zOptBoolean32 = jSONObject.optBoolean("rewarded_preloading_enabled", false);
            boolean zOptBoolean33 = jSONObject.optBoolean("new_false_click_tracking_enabled", false);
            boolean zOptBoolean34 = jSONObject.optBoolean("app_start_false_click_interval_check_enabled", false);
            boolean zOptBoolean35 = jSONObject.optBoolean("varioqub_enabled", false);
            boolean zOptBoolean36 = jSONObject.optBoolean("crash_tracker_enabled", false);
            boolean zOptBoolean37 = jSONObject.optBoolean("error_tracker_enabled", false);
            boolean zOptBoolean38 = jSONObject.optBoolean("anr_tracker_enabled", false);
            try {
                aVar = Long.valueOf(jSONObject.getLong("anr_tracker_interval"));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            Long l = (Long) aVar;
            try {
                aVar2 = Long.valueOf(jSONObject.getLong("anr_tracker_threshold"));
            } catch (Throwable th2) {
                aVar2 = new k57.a(th2);
            }
            if (aVar2 instanceof k57.a) {
                aVar2 = null;
            }
            Long l2 = (Long) aVar2;
            boolean zOptBoolean39 = jSONObject.optBoolean("exit_info_anr_tracker_enabled", false);
            Integer numA4 = ve5.a("exit_info_anr_tracker_max_results", jSONObject);
            Integer numA5 = ve5.a("exit_info_anr_tracker_historical_threshold_days", jSONObject);
            Boolean boolValueOf3 = jSONObject.has("exit_info_anr_tracker_enriched_traces_enabled") ? Boolean.valueOf(jSONObject.optBoolean("exit_info_anr_tracker_enriched_traces_enabled")) : null;
            boolean zOptBoolean40 = jSONObject.optBoolean("crash_ignore_enabled", false);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("crash_stack_trace_exclusion_rules");
            if (jSONArrayOptJSONArray != null) {
                ve5Var.f.getClass();
                setA = lp2.a(jSONArrayOptJSONArray);
            } else {
                setA = null;
            }
            boolean zOptBoolean41 = jSONObject.optBoolean("time_stamping_tracking_urls_enabled", false);
            boolean zOptBoolean42 = jSONObject.optBoolean("app_ad_analytics_reporting_enabled", true);
            boolean zOptBoolean43 = jSONObject.optBoolean("app_metrica_easy_integration_auto_activation_disabled", false);
            Integer numA6 = ve5.a("network_thread_pool_size", jSONObject);
            Integer numA7 = ve5.a("image_loading_thread_pool_size", jSONObject);
            Integer numA8 = ve5.a("timeout_interval_for_request", jSONObject);
            Integer numA9 = ve5.a("timeout_interval_for_ping_request", jSONObject);
            b7 b7Var = ve5Var.g;
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("verification_configuration");
            b7Var.getClass();
            n7 n7VarA = b7.a(jSONObjectOptJSONObject5);
            boolean zOptBoolean44 = jSONObject.optBoolean("sdk_tracking_reporter_enabled", false);
            List listB = zq3.b("fallback_hosts", jSONObject);
            if (listB == null) {
                listB = defpackage.kx2.b;
            }
            List list = listB;
            boolean zOptBoolean45 = jSONObject.optBoolean("should_prefetch_dns", false);
            boolean zOptBoolean46 = jSONObject.optBoolean("should_use_ad_rendered_web_view_callback", false);
            boolean zOptBoolean47 = jSONObject.optBoolean("outstream_wrapper_video_supported", false);
            boolean zOptBoolean48 = jSONObject.optBoolean("validate_click_in_web_view", false);
            boolean zOptBoolean49 = jSONObject.optBoolean("pass_full_screen_height_from_sdk_enabled", false);
            Integer numA10 = ve5.a("instream_qrcode_size_in_px", jSONObject);
            boolean zOptBoolean50 = jSONObject.optBoolean("hide_bottom_navigation_bar", false);
            boolean zOptBoolean51 = jSONObject.optBoolean("pre_warm_web_view_on_background", false);
            boolean zOptBoolean52 = jSONObject.optBoolean("sdk_network_debug_enabled", false);
            boolean zOptBoolean53 = jSONObject.optBoolean("support_gif", false);
            fz2 fz2VarA = jSONObject.has("font") ? gz2.a(jSONObject.getJSONObject("font")) : null;
            boolean zOptBoolean54 = jSONObject.optBoolean("force_default_player", false);
            JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("session");
            ve5Var.i.getClass();
            dj5 dj5Var = (jSONObjectOptJSONObject6 == null || (strOptString = jSONObjectOptJSONObject6.optString("token")) == null || strOptString.length() == 0) ? null : new dj5(strOptString);
            JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("playback_optimization_config");
            mv4 mv4Var = ve5Var.j;
            mv4Var.getClass();
            if (jSONObjectOptJSONObject7 != null) {
                try {
                    defpackage.xb4 xb4Var2 = mv4Var.a;
                    String string = jSONObjectOptJSONObject7.toString();
                    xb4Var2.getClass();
                    lv4Var = (lv4) xb4Var2.a(lv4.Companion.serializer(), string);
                } catch (Exception unused) {
                    lv4Var = null;
                }
            } else {
                lv4Var = null;
            }
            List listA = ve5.a(jSONObject.optJSONArray("smart_preload_blocks"));
            JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("mediation_ad_load_timeouts");
            i54 i54VarB = jSONObjectOptJSONObject8 != null ? h54.b(jSONObjectOptJSONObject8.toString()) : null;
            boolean zOptBoolean55 = jSONObject.optBoolean("is_new_request_parameters_enabled", false);
            boolean zOptBoolean56 = jSONObject.optBoolean("advertising_ids_fallback_enabled", false);
            try {
                aVar3 = Long.valueOf(jSONObject.getLong("advertising_ids_receive_timeout"));
            } catch (Throwable th3) {
                aVar3 = new k57.a(th3);
            }
            if (aVar3 instanceof k57.a) {
                aVar3 = null;
            }
            Long l3 = (Long) aVar3;
            boolean zOptBoolean57 = jSONObject.optBoolean("external_vast_url_change", false);
            boolean zOptBoolean58 = jSONObject.optBoolean("web_vast_url_change", false);
            String strOptString12 = jSONObject.optString("inroll_ad_break_url_source_host", null);
            String str2 = (strOptString12 == null || strOptString12.length() <= 0) ? null : strOptString12;
            String strOptString13 = jSONObject.optString("inroll_ad_break_url_target_host", null);
            return new fe5(iOptInt, iOptInt2, jOptLong2, jOptLong3, jCurrentTimeMillis, zOptBoolean, zOptBoolean10, zOptBoolean11, zOptBoolean7, zOptBoolean8, zOptBoolean2, zOptBoolean3, zOptBoolean4, zOptBoolean5, zOptBoolean12, zOptBoolean13, zOptBoolean15, zOptBoolean14, zOptBoolean16, zOptBoolean25, zOptBoolean24, zOptBoolean18, zOptBoolean6, zOptBoolean19, strOptString8, zOptBoolean20, zOptBoolean21, zOptBoolean9, zOptBoolean26, zOptBoolean27, zOptBoolean28, zOptBoolean29, zOptBoolean30, zOptBoolean31, zOptBoolean32, zOptBoolean33, zOptBoolean34, zOptBoolean35, numA, numA2, yg5.a().e(), yg5.a().c(), zOptBoolean17, boolValueOf, strOptString10, strOptString2, strOptString3, "8.2.0", strOptString4, strOptString7, strOptString5, strOptString6, boolValueOf2, nn2Var, zOptBoolean22, zOptBoolean23, dtVarB, strOptString11, mapA, zOptBoolean36, zOptBoolean37, zOptBoolean38, l, l2, zOptBoolean39, numA4, numA5, boolValueOf3, zOptBoolean40, setA, zOptBoolean41, zOptBoolean42, zOptBoolean43, numA6, numA7, numA8, numA9, n7VarA, zOptBoolean44, list, zOptBoolean45, zOptBoolean46, zOptBoolean47, zOptBoolean48, zOptBoolean49, numA10, zOptBoolean50, zOptBoolean51, fz2VarA, zOptBoolean54, zOptBoolean53, dj5Var, lv4Var, zOptBoolean52, listA, i54VarB, zOptBoolean55, zOptBoolean56, l3, zOptBoolean57, zOptBoolean58, str2, (strOptString13 == null || strOptString13.length() <= 0) ? null : strOptString13, jSONObject.optBoolean("native_image_loading_optimization_enabled", false), jSONObject.optBoolean("use_system_font", false));
        } catch (JSONException e) {
            ve5Var.a.reportError("Can't parse sdk configuration response", e);
            return null;
        }
    }

    public final boolean a() {
        zg5 zg5Var;
        fe5 fe5VarA = this.a.a(this.d);
        if (fe5VarA == null) {
            return true;
        }
        re5 re5Var = this.c;
        eu5 eu5Var = re5Var.a.a;
        if (System.currentTimeMillis() >= fe5VarA.e) {
            return true;
        }
        re5Var.b.getClass();
        if (!"8.2.0".equals(fe5VarA.V)) {
            return true;
        }
        re5Var.c.getClass();
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
        if (!defpackage.aa4.e(zg5Var2.e(), fe5VarA.O)) {
            return true;
        }
        re5Var.c.getClass();
        if (u50.b(fe5VarA)) {
            return true;
        }
        re5Var.c.getClass();
        return u50.a(fe5VarA);
    }
}
