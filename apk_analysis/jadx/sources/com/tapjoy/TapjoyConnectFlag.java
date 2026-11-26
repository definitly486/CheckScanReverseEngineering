package com.tapjoy;

import com.tapjoy.internal.q2;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyConnectFlag {
    public static final String DISABLE_ADVERTISING_ID = "TJC_OPTION_DISABLE_ADVERTISING_ID";
    public static final String DISABLE_AUTOMATIC_SESSION_TRACKING = "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING";

    @Deprecated
    public static final String DISABLE_PERSISTENT_IDS = "TJC_OPTION_DISABLE_PERSISTENT_IDS";
    public static final String TJC_OPTION_LOGGING_LEVEL = "TJC_OPTION_LOGGING_LEVEL";
    public static final String USER_ID = "TJC_OPTION_USER_ID";

    @Deprecated
    public static final String ENABLE_LOGGING = "TJC_OPTION_ENABLE_LOGGING";
    public static final String SERVICE_URL = "TJC_OPTION_SERVICE_URL";
    public static final String PLACEMENT_URL = "TJC_OPTION_PLACEMENT_SERVICE_URL";
    public static final String DISABLE_ADVERTISING_ID_CHECK = "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK";
    public static final String ALLOW_LEGACY_ID_FALLBACK = "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK";
    public static final String[] FLAG_ARRAY = {USER_ID, ENABLE_LOGGING, SERVICE_URL, PLACEMENT_URL, DISABLE_ADVERTISING_ID_CHECK, ALLOW_LEGACY_ID_FALLBACK};
    public static final Hashtable<String, Object> CONNECT_FLAG_DEFAULTS = new q2();
}
