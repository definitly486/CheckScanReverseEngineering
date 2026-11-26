package com.tapjoy;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import defpackage.me0;
import defpackage.mk8;

/* JADX INFO: loaded from: classes4.dex */
public final class TapjoyLog {
    public static boolean a;
    public static final TapjoyLog INSTANCE = new TapjoyLog();
    public static TJLogLevel b = TJLogLevel.ERROR;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TJLogLevel.values().length];
            try {
                iArr[TJLogLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TJLogLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TJLogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TJLogLevel.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void a(TJLogLevel tJLogLevel, String str) {
        int i;
        if (b.ordinal() < tJLogLevel.ordinal()) {
            return;
        }
        int i2 = 6;
        if (str.length() <= 4096) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[tJLogLevel.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    i2 = 5;
                } else if (i3 == 3) {
                    i2 = 4;
                } else {
                    if (i3 != 4) {
                        me0.e();
                        return;
                    }
                    i2 = 3;
                }
            }
            Log.println(i2, "TapjoyLog", str);
            return;
        }
        int length = str.length() / 4096;
        if (length < 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4 * 4096;
            int i6 = i4 + 1;
            int length2 = i6 * 4096;
            if (length2 > str.length()) {
                length2 = str.length();
            }
            int i7 = WhenMappings.$EnumSwitchMapping$0[tJLogLevel.ordinal()];
            if (i7 == 1) {
                i = 6;
            } else if (i7 == 2) {
                i = 5;
            } else if (i7 == 3) {
                i = 4;
            } else {
                if (i7 != 4) {
                    me0.e();
                    return;
                }
                i = 3;
            }
            Log.println(i, "TapjoyLog", str.substring(i5, length2));
            if (i4 == length) {
                return;
            } else {
                i4 = i6;
            }
        }
    }

    public static final void d(String str) {
        TapjoyLog tapjoyLog = INSTANCE;
        TJLogLevel tJLogLevel = TJLogLevel.DEBUG;
        if (str == null) {
            str = "";
        }
        tapjoyLog.getClass();
        a(tJLogLevel, str);
    }

    public static final void e(String str) {
        TapjoyLog tapjoyLog = INSTANCE;
        TJLogLevel tJLogLevel = TJLogLevel.ERROR;
        if (str == null) {
            str = "";
        }
        tapjoyLog.getClass();
        a(tJLogLevel, str);
    }

    public static final TJLogLevel getLoggingLevel() {
        return b;
    }

    public static final void i(String str) {
        TapjoyLog tapjoyLog = INSTANCE;
        TJLogLevel tJLogLevel = TJLogLevel.INFO;
        if (str == null) {
            str = "";
        }
        tapjoyLog.getClass();
        a(tJLogLevel, str);
    }

    public static final void setDebugEnabled(boolean z) {
        a = z;
        if (TapjoyAppSettings.INSTANCE.getLoggingLevel() != null) {
            d("setLoggingLevel -- log setting already persisted");
        } else {
            b = a ? TJLogLevel.DEBUG : TJLogLevel.INFO;
        }
    }

    public static final void setLoggingLevel(TJLogLevel tJLogLevel, boolean z) {
        tJLogLevel.getClass();
        if (!z && TapjoyAppSettings.INSTANCE.getLoggingLevel() != null) {
            d("setLoggingLevel -- log setting already persisted");
            return;
        }
        b = tJLogLevel;
        if (tJLogLevel == TJLogLevel.DEBUG) {
            new Handler(Looper.getMainLooper()).post(new mk8());
        }
        d("logThreshold=" + b);
    }

    public static final void w(String str) {
        TapjoyLog tapjoyLog = INSTANCE;
        TJLogLevel tJLogLevel = TJLogLevel.WARNING;
        if (str == null) {
            str = "";
        }
        tapjoyLog.getClass();
        a(tJLogLevel, str);
    }

    public final boolean isLoggingEnabled() {
        return a;
    }

    public final void setLoggingEnabled(boolean z) {
        a = z;
    }

    public static final void a() {
        try {
            d("Enabling WebView debugging");
            WebView.setWebContentsDebuggingEnabled(true);
        } catch (Throwable th) {
            e("Failed to enable WebView debugging: " + th.getMessage());
        }
    }
}
