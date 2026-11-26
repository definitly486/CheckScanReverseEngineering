package defpackage;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface oc6 {
    public static final a a = a.a;

    public static final class a {
        public static final /* synthetic */ a a = new a();
        public static final Set<String> b = yr.k0(new String[]{"groups", "anonymousId", "distinctId", "isIdentified", "personProcessingEnabled", "opt-out", "featureFlags", "featureFlagsPayload", "sessionReplay", "surveys", "surveySeen", "lastSeenSurveyDate", "version", "build", "deviceId", "stringifiedKeys", "feature_flag_request_id", "feature_flag_evaluated_at", "flags", "personPropertiesForFlags", "groupPropertiesForFlags", "errorTracking", "capturePerformance"});
    }

    void a(String str, Object obj);

    boolean b();

    void c(List<String> list);

    Object d(Object obj, String str);

    LinkedHashMap getAll();

    void remove(String str);
}
