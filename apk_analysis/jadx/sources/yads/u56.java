package yads;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.tracing.Trace;
import defpackage.kv2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.conscrypt.metrics.ConscryptStatsLog;
import yads.u56;

/* JADX INFO: loaded from: classes3.dex */
public abstract class u56 {
    public static final int a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final byte[] f;
    public static final Pattern g;
    public static final Pattern h;
    public static final Pattern i;
    public static final Pattern j;
    public static HashMap k;
    public static final String[] l;
    public static final String[] m;
    public static final int[] n;
    public static final int[] o;

    static {
        int i2 = Build.VERSION.SDK_INT;
        a = i2;
        String str = Build.DEVICE;
        b = str;
        String str2 = Build.MANUFACTURER;
        c = str2;
        String str3 = Build.MODEL;
        d = str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        e = defpackage.ag.d(sb, ", ", i2);
        f = new byte[0];
        g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        i = Pattern.compile("%([A-Fa-f0-9]{2})");
        j = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        l = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        m = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        n = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        o = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 107, 98, TypedValues.TYPE_TARGET, 72, 79, 70, 65, 84, 83, 90, 93, 224, WebmConstants.MkvEbmlElement.TIMESTAMP, WebmConstants.MkvEbmlElement.BLOCK_ADD_ID, 233, 252, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, 242, 245, 216, 223, 214, 209, 196, 195, ComposerKt.compositionLocalMapKey, 205, 144, 151, 158, 153, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA, TsExtractor.TS_STREAM_TYPE_DTS_UHD, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 133, 168, 175, WebmConstants.MkvEbmlElement.BLOCK_MORE, WebmConstants.MkvEbmlElement.BLOCK, 180, WebmConstants.MkvEbmlElement.CUE_TIME, WebmConstants.MkvEbmlElement.PIXEL_HEIGHT, PsExtractor.PRIVATE_STREAM_1, 199, PsExtractor.AUDIO_STREAM, ComposerKt.providerKey, ComposerKt.referenceKey, 219, 220, 213, 210, 255, 248, WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION, 246, 227, 228, 237, 234, WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS, WebmConstants.MkvEbmlElement.PIXEL_WIDTH, 185, 190, WebmConstants.MkvEbmlElement.PREV_SIZE, TsExtractor.TS_STREAM_TYPE_AC4, WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL, 162, 143, 136, TsExtractor.TS_STREAM_TYPE_AC3, 134, 147, 148, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384, WebmConstants.MkvEbmlElement.FLAG_INTERLACED, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, GapComposerKt.nodeKey, 122, 137, 142, TsExtractor.TS_STREAM_TYPE_E_AC3, 128, 149, 146, WebmConstants.MkvEbmlElement.BLOCK_DURATION, 156, 177, 182, 191, 184, 173, 170, WebmConstants.MkvEbmlElement.SIMPLE_BLOCK, 164, 249, 254, WebmConstants.MkvEbmlElement.CUE_TRACK, PsExtractor.VIDEO_STREAM_MASK, 229, 226, 235, WebmConstants.MkvEbmlElement.VOID, 193, 198, ComposerKt.reuseKey, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, Trace.MAX_TRACE_LABEL_LENGTH, 106, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, WebmConstants.MkvEbmlElement.TRACK_ENTRY, 169, WebmConstants.MkvEbmlElement.BLOCK_GROUP, 167, 178, WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY, TsExtractor.TS_PACKET_SIZE, WebmConstants.MkvEbmlElement.CUE_POINT, 150, 145, 152, WebmConstants.MkvEbmlElement.CHANNELS, TsExtractor.TS_STREAM_TYPE_DTS, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, 132, WebmConstants.MkvEbmlElement.TRACK_TYPE, 222, 217, 208, WebmConstants.MkvEbmlElement.TRACK_NUMBER, 194, 197, 204, ComposerKt.providerValuesKey, 230, WebmConstants.MkvEbmlElement.AUDIO, 232, 239, 250, 253, 244, 243};
    }

    public static int a(Uri uri, String str) {
        int i2;
        if (str != null) {
            switch (str) {
                case "application/x-mpegURL":
                    return 2;
                case "application/vnd.ms-sstr+xml":
                    return 1;
                case "application/dash+xml":
                    return 0;
                case "application/x-rtsp":
                    return 3;
                default:
                    return 4;
            }
        }
        String scheme = uri.getScheme();
        if (scheme != null && oj.a("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment != null) {
            int iLastIndexOf = lastPathSegment.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                String strA = oj.a(lastPathSegment.substring(iLastIndexOf + 1));
                strA.getClass();
                switch (strA.hashCode()) {
                    case 104579:
                        if (strA.equals("ism")) {
                        }
                        break;
                    case 108321:
                        if (strA.equals("mpd")) {
                        }
                        break;
                    case 3242057:
                        if (strA.equals("isml")) {
                        }
                        break;
                    case 3299913:
                        if (strA.equals("m3u8")) {
                        }
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instruction units count: 280
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: yads.u56.a(android.net.Uri, java.lang.String):int");
            }

            public static Point b(Context context) {
                DisplayManager displayManager;
                int i2 = a;
                Display display = (i2 < 17 || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
                if (display == null) {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    windowManager.getClass();
                    display = windowManager.getDefaultDisplay();
                }
                if (display.getDisplayId() == 0 && c(context)) {
                    String strB = i2 < 28 ? b("sys.display-size") : b("vendor.display-size");
                    if (!TextUtils.isEmpty(strB)) {
                        try {
                            String[] strArrSplit = strB.trim().split("x", -1);
                            if (strArrSplit.length == 2) {
                                int i3 = Integer.parseInt(strArrSplit[0]);
                                int i4 = Integer.parseInt(strArrSplit[1]);
                                if (i3 > 0 && i4 > 0) {
                                    return new Point(i3, i4);
                                }
                            }
                        } catch (NumberFormatException unused) {
                        }
                        sv3.b("Util", "Invalid display size: " + strB);
                    }
                    if ("Sony".equals(c) && d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                        return new Point(3840, 2160);
                    }
                }
                Point point = new Point();
                int i5 = a;
                if (i5 >= 23) {
                    Display.Mode mode = display.getMode();
                    point.x = mode.getPhysicalWidth();
                    point.y = mode.getPhysicalHeight();
                    return point;
                }
                if (i5 >= 17) {
                    display.getRealSize(point);
                    return point;
                }
                display.getSize(point);
                return point;
            }

            public static String c(int i2) {
                switch (i2) {
                    case -2:
                        return "none";
                    case -1:
                        return "unknown";
                    case 0:
                        return "default";
                    case 1:
                        return MimeTypes.BASE_TYPE_AUDIO;
                    case 2:
                        return MimeTypes.BASE_TYPE_VIDEO;
                    case 3:
                        return "text";
                    case 4:
                        return "image";
                    case 5:
                        return TtmlNode.TAG_METADATA;
                    case 6:
                        return "camera motion";
                    default:
                        return i2 >= 10000 ? kv2.b(i2, "custom (", ")") : "?";
                }
            }

            public static boolean d(int i2) {
                return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 536870912 || i2 == 805306368 || i2 == 4;
            }

            public static String e(String str) {
                if (str == null) {
                    return null;
                }
                String strReplace = str.replace('_', '-');
                if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
                    str = strReplace;
                }
                String strA = oj.a(str);
                int i2 = 0;
                String str2 = strA.split("-", 2)[0];
                HashMap map = k;
                if (map == null) {
                    String[] iSOLanguages = Locale.getISOLanguages();
                    HashMap map2 = new HashMap(iSOLanguages.length + l.length);
                    for (String str3 : iSOLanguages) {
                        try {
                            String iSO3Language = new Locale(str3).getISO3Language();
                            if (!TextUtils.isEmpty(iSO3Language)) {
                                map2.put(iSO3Language, str3);
                            }
                        } catch (MissingResourceException unused) {
                        }
                    }
                    int i3 = 0;
                    while (true) {
                        String[] strArr = l;
                        if (i3 >= strArr.length) {
                            break;
                        }
                        map2.put(strArr[i3], strArr[i3 + 1]);
                        i3 += 2;
                    }
                    k = map2;
                    map = map2;
                }
                String str4 = (String) map.get(str2);
                if (str4 != null) {
                    strA = str4.concat(strA.substring(str2.length()));
                    str2 = str4;
                }
                if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
                    return strA;
                }
                while (true) {
                    String[] strArr2 = m;
                    if (i2 >= strArr2.length) {
                        return strA;
                    }
                    if (strA.startsWith(strArr2[i2])) {
                        return strArr2[i2 + 1] + strA.substring(strArr2[i2].length());
                    }
                    i2 += 2;
                }
            }

            public static long f(String str) throws xs4 {
                int i2;
                Matcher matcher = g.matcher(str);
                if (!matcher.matches()) {
                    defpackage.e2.h(defpackage.bj.c("Invalid date/time format: ", str), null);
                    return 0L;
                }
                if (matcher.group(9) == null || matcher.group(9).equalsIgnoreCase("Z")) {
                    i2 = 0;
                } else {
                    i2 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
                    if ("-".equals(matcher.group(11))) {
                        i2 *= -1;
                    }
                }
                GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
                gregorianCalendar.clear();
                gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
                if (!TextUtils.isEmpty(matcher.group(8))) {
                    gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
                }
                long timeInMillis = gregorianCalendar.getTimeInMillis();
                return i2 != 0 ? timeInMillis - (((long) i2) * 60000) : timeInMillis;
            }

            public static ExecutorService d(final String str) {
                return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: uda
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        return u56.a(str, runnable);
                    }
                });
            }

            public static boolean c(Context context) {
                UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
                return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
            }

            public static byte[] c(String str) {
                return str.getBytes(az.c);
            }

            public static Object[] b(int i2, Object[] objArr) {
                if (i2 <= objArr.length) {
                    return Arrays.copyOfRange(objArr, 1, i2);
                }
                defpackage.mi2.b();
                return null;
            }

            public static Handler b(Handler.Callback callback) {
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper == null) {
                    looperMyLooper = Looper.getMainLooper();
                }
                return new Handler(looperMyLooper, callback);
            }

            public static int b(long[] jArr, long j2, boolean z) {
                int i2;
                int iBinarySearch = Arrays.binarySearch(jArr, j2);
                if (iBinarySearch < 0) {
                    i2 = -(iBinarySearch + 2);
                } else {
                    while (true) {
                        int i3 = iBinarySearch - 1;
                        if (i3 < 0 || jArr[i3] != j2) {
                            break;
                        }
                        iBinarySearch = i3;
                    }
                    i2 = iBinarySearch;
                }
                return z ? Math.max(0, i2) : i2;
            }

            public static boolean a(os4 os4Var, os4 os4Var2, Inflater inflater) {
                int i2 = os4Var.c - os4Var.b;
                if (i2 <= 0) {
                    return false;
                }
                if (os4Var2.a.length < i2) {
                    os4Var2.a(i2 * 2);
                }
                if (inflater == null) {
                    inflater = new Inflater();
                }
                byte[] bArr = os4Var.a;
                int i3 = os4Var.b;
                inflater.setInput(bArr, i3, os4Var.c - i3);
                int iInflate = 0;
                while (true) {
                    try {
                        byte[] bArr2 = os4Var2.a;
                        iInflate += inflater.inflate(bArr2, iInflate, bArr2.length - iInflate);
                        if (inflater.finished()) {
                            os4Var2.d(iInflate);
                            inflater.reset();
                            return true;
                        }
                        if (!inflater.needsDictionary() && !inflater.needsInput()) {
                            byte[] bArr3 = os4Var2.a;
                            if (iInflate == bArr3.length) {
                                os4Var2.a(bArr3.length * 2);
                            }
                        }
                        inflater.reset();
                        return false;
                    } catch (DataFormatException unused) {
                        inflater.reset();
                        return false;
                    } catch (Throwable th) {
                        inflater.reset();
                        throw th;
                    }
                }
            }

            public static long b(long j2) {
                return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 / 1000;
            }

            public static int b(int i2) {
                if (i2 == 8) {
                    return 3;
                }
                if (i2 == 16) {
                    return 2;
                }
                if (i2 != 24) {
                    return i2 != 32 ? 0 : 805306368;
                }
                return 536870912;
            }

            public static String b(String str) {
                try {
                    Class<?> cls = Class.forName("android.os.SystemProperties");
                    return (String) cls.getMethod("get", String.class).invoke(cls, str);
                } catch (Exception e2) {
                    sv3.b("Util", sv3.a("Failed to read system property ".concat(str), e2));
                    return null;
                }
            }

            public static boolean a(Object obj, Object obj2) {
                if (obj == null) {
                    return obj2 == null;
                }
                return obj.equals(obj2);
            }

            public static Object[] a(int i2, Object[] objArr) {
                if (i2 <= objArr.length) {
                    return Arrays.copyOf(objArr, i2);
                }
                defpackage.mi2.b();
                return null;
            }

            public static Object[] a(Object[] objArr, Object[] objArr2) {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + objArr2.length);
                System.arraycopy(objArr2, 0, objArrCopyOf, objArr.length, objArr2.length);
                return objArrCopyOf;
            }

            public static Handler a(Handler.Callback callback) {
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper != null) {
                    return new Handler(looperMyLooper, callback);
                }
                defpackage.ud.g();
                return null;
            }

            public static Handler a(Looper looper, Handler.Callback callback) {
                return new Handler(looper, callback);
            }

            public static void a(Handler handler, Runnable runnable) {
                if (handler.getLooper().getThread().isAlive()) {
                    if (handler.getLooper() == Looper.myLooper()) {
                        runnable.run();
                    } else {
                        handler.post(runnable);
                    }
                }
            }

            public static /* synthetic */ Thread a(String str, Runnable runnable) {
                return new Thread(runnable, str);
            }

            public static void a(Closeable closeable) {
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException unused) {
                    }
                }
            }

            public static String a(Locale locale) {
                if (a >= 21) {
                    return locale.toLanguageTag();
                }
                return locale.toString();
            }

            public static String a(byte[] bArr) {
                return new String(bArr, az.c);
            }

            public static String a(byte[] bArr, int i2, int i3) {
                return new String(bArr, i2, i3, az.c);
            }

            public static int a(int[] iArr, int i2, boolean z, boolean z2) {
                int i3;
                int i4;
                int iBinarySearch = Arrays.binarySearch(iArr, i2);
                if (iBinarySearch < 0) {
                    i4 = -(iBinarySearch + 2);
                } else {
                    while (true) {
                        i3 = iBinarySearch - 1;
                        if (i3 < 0 || iArr[i3] != i2) {
                            break;
                        }
                        iBinarySearch = i3;
                    }
                    i4 = z ? iBinarySearch : i3;
                }
                return z2 ? Math.max(0, i4) : i4;
            }

            public static int a(ArrayList arrayList, Long l2, boolean z) {
                int i2;
                int iBinarySearch = Collections.binarySearch(arrayList, l2);
                if (iBinarySearch < 0) {
                    i2 = -(iBinarySearch + 2);
                } else {
                    while (true) {
                        int i3 = iBinarySearch - 1;
                        if (i3 < 0 || ((Comparable) arrayList.get(i3)).compareTo(l2) != 0) {
                            break;
                        }
                        iBinarySearch = i3;
                    }
                    i2 = iBinarySearch;
                }
                return z ? Math.max(0, i2) : i2;
            }

            public static int a(long[] jArr, long j2, boolean z) {
                int i2;
                int iBinarySearch = Arrays.binarySearch(jArr, j2);
                if (iBinarySearch < 0) {
                    return ~iBinarySearch;
                }
                while (true) {
                    i2 = iBinarySearch + 1;
                    if (i2 >= jArr.length || jArr[i2] != j2) {
                        break;
                    }
                    iBinarySearch = i2;
                }
                return z ? iBinarySearch : i2;
            }

            public static long a(long j2, long j3, long j4) {
                if (j4 >= j3 && j4 % j3 == 0) {
                    return j2 / (j4 / j3);
                }
                if (j4 < j3 && j3 % j4 == 0) {
                    return (j3 / j4) * j2;
                }
                return (long) (j2 * (j3 / j4));
            }

            public static void a(long[] jArr, long j2) {
                int i2 = 0;
                if (j2 >= 1000000 && j2 % 1000000 == 0) {
                    long j3 = j2 / 1000000;
                    while (i2 < jArr.length) {
                        jArr[i2] = jArr[i2] / j3;
                        i2++;
                    }
                    return;
                }
                if (j2 < 1000000 && 1000000 % j2 == 0) {
                    long j4 = 1000000 / j2;
                    while (i2 < jArr.length) {
                        jArr[i2] = jArr[i2] * j4;
                        i2++;
                    }
                    return;
                }
                double d2 = 1000000.0d / j2;
                while (i2 < jArr.length) {
                    jArr[i2] = (long) (jArr[i2] * d2);
                    i2++;
                }
            }

            public static int a(int i2) {
                if (i2 == 12) {
                    return a >= 32 ? 743676 : 0;
                }
                switch (i2) {
                    case 1:
                        return 4;
                    case 2:
                        return 12;
                    case 3:
                        return 28;
                    case 4:
                        return 204;
                    case 5:
                        return 220;
                    case 6:
                        return 252;
                    case 7:
                        return 1276;
                    case 8:
                        int i3 = a;
                        return (i3 < 23 && i3 < 21) ? 0 : 6396;
                    default:
                        return 0;
                }
            }

            public static int a(int i2, int i3) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        return i3;
                    }
                    if (i2 != 4) {
                        if (i2 != 268435456) {
                            if (i2 == 536870912) {
                                return i3 * 3;
                            }
                            if (i2 != 805306368) {
                                defpackage.mi2.b();
                                return 0;
                            }
                        }
                    }
                    return i3 * 4;
                }
                return i3 * 2;
            }

            public static int a(Context context) {
                AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
                if (audioManager == null) {
                    return -1;
                }
                return audioManager.generateAudioSessionId();
            }

            public static long a(long j2) {
                return (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? j2 : j2 * 1000;
            }

            public static boolean a(SQLiteDatabase sQLiteDatabase, String str) {
                return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
            }

            public static int a(String str) {
                String[] strArrSplit;
                int length;
                int i2 = 0;
                if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
                    return 0;
                }
                String str2 = strArrSplit[length - 1];
                boolean z = length >= 3 && "neg".equals(strArrSplit[length - 2]);
                try {
                    str2.getClass();
                    i2 = Integer.parseInt(str2);
                    if (z) {
                        return -i2;
                    }
                } catch (NumberFormatException unused) {
                }
                return i2;
            }

            public static String[] a() {
                String[] strArrSplit;
                Configuration configuration = Resources.getSystem().getConfiguration();
                if (a >= 24) {
                    strArrSplit = configuration.getLocales().toLanguageTags().split(StringUtils.COMMA, -1);
                } else {
                    strArrSplit = new String[]{a(configuration.locale)};
                }
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    strArrSplit[i2] = e(strArrSplit[i2]);
                }
                return strArrSplit;
            }
        }
