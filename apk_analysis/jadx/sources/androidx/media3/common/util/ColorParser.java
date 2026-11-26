package androidx.media3.common.util;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import com.tapjoy.TJAdUnitConstants;
import defpackage.go2;
import defpackage.ig;
import defpackage.mi2;
import defpackage.o8;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class ColorParser {
    private static final Map<String, Integer> COLOR_MAP;
    private static final String RGB = "rgb";
    private static final String RGBA = "rgba";
    private static final Pattern RGB_PATTERN = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_INT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_FLOAT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    static {
        HashMap map = new HashMap();
        COLOR_MAP = map;
        ig.d(-984833, map, "aliceblue", -332841, "antiquewhite");
        map.put("aqua", -16711681);
        map.put("aquamarine", -8388652);
        ig.d(-983041, map, "azure", -657956, "beige");
        ig.d(-6972, map, "bisque", -16777216, "black");
        ig.d(-5171, map, "blanchedalmond", -16776961, "blue");
        ig.d(-7722014, map, "blueviolet", -5952982, "brown");
        ig.d(-2180985, map, "burlywood", -10510688, "cadetblue");
        ig.d(-8388864, map, "chartreuse", -2987746, "chocolate");
        ig.d(-32944, map, "coral", -10185235, "cornflowerblue");
        ig.d(-1828, map, "cornsilk", -2354116, "crimson");
        map.put("cyan", -16711681);
        map.put("darkblue", -16777077);
        ig.d(-16741493, map, "darkcyan", -4684277, "darkgoldenrod");
        map.put("darkgray", -5658199);
        map.put("darkgreen", -16751616);
        map.put("darkgrey", -5658199);
        map.put("darkkhaki", -4343957);
        ig.d(-7667573, map, "darkmagenta", -11179217, "darkolivegreen");
        ig.d(-29696, map, "darkorange", -6737204, "darkorchid");
        ig.d(-7667712, map, "darkred", -1468806, "darksalmon");
        ig.d(-7357297, map, "darkseagreen", -12042869, "darkslateblue");
        map.put("darkslategray", -13676721);
        map.put("darkslategrey", -13676721);
        map.put("darkturquoise", -16724271);
        map.put("darkviolet", -7077677);
        ig.d(-60269, map, "deeppink", -16728065, "deepskyblue");
        map.put("dimgray", -9868951);
        map.put("dimgrey", -9868951);
        map.put("dodgerblue", -14774017);
        map.put("firebrick", -5103070);
        ig.d(-1296, map, "floralwhite", -14513374, "forestgreen");
        map.put("fuchsia", -65281);
        map.put("gainsboro", -2302756);
        ig.d(-460545, map, "ghostwhite", -10496, "gold");
        map.put("goldenrod", -2448096);
        map.put("gray", -8355712);
        ig.d(-16744448, map, "green", -5374161, "greenyellow");
        map.put("grey", -8355712);
        map.put("honeydew", -983056);
        ig.d(-38476, map, "hotpink", -3318692, "indianred");
        ig.d(-11861886, map, "indigo", -16, "ivory");
        ig.d(-989556, map, "khaki", -1644806, "lavender");
        ig.d(-3851, map, "lavenderblush", -8586240, "lawngreen");
        ig.d(-1331, map, "lemonchiffon", -5383962, "lightblue");
        ig.d(-1015680, map, "lightcoral", -2031617, "lightcyan");
        map.put("lightgoldenrodyellow", -329006);
        map.put("lightgray", -2894893);
        map.put("lightgreen", -7278960);
        map.put("lightgrey", -2894893);
        ig.d(-18751, map, "lightpink", -24454, "lightsalmon");
        ig.d(-14634326, map, "lightseagreen", -7876870, "lightskyblue");
        map.put("lightslategray", -8943463);
        map.put("lightslategrey", -8943463);
        map.put("lightsteelblue", -5192482);
        map.put("lightyellow", -32);
        ig.d(-16711936, map, "lime", -13447886, "limegreen");
        map.put("linen", -331546);
        map.put("magenta", -65281);
        ig.d(-8388608, map, "maroon", -10039894, "mediumaquamarine");
        ig.d(-16777011, map, "mediumblue", -4565549, "mediumorchid");
        ig.d(-7114533, map, "mediumpurple", -12799119, "mediumseagreen");
        ig.d(-8689426, map, "mediumslateblue", -16713062, "mediumspringgreen");
        ig.d(-12004916, map, "mediumturquoise", -3730043, "mediumvioletred");
        ig.d(-15132304, map, "midnightblue", -655366, "mintcream");
        ig.d(-6943, map, "mistyrose", -6987, "moccasin");
        ig.d(-8531, map, "navajowhite", -16777088, "navy");
        ig.d(-133658, map, "oldlace", -8355840, "olive");
        ig.d(-9728477, map, "olivedrab", -23296, "orange");
        ig.d(-47872, map, "orangered", -2461482, "orchid");
        ig.d(-1120086, map, "palegoldenrod", -6751336, "palegreen");
        ig.d(-5247250, map, "paleturquoise", -2396013, "palevioletred");
        ig.d(-4139, map, "papayawhip", -9543, "peachpuff");
        ig.d(-3308225, map, "peru", -16181, "pink");
        ig.d(-2252579, map, "plum", -5185306, "powderblue");
        ig.d(-8388480, map, "purple", -10079335, "rebeccapurple");
        ig.d(SupportMenu.CATEGORY_MASK, map, "red", -4419697, "rosybrown");
        ig.d(-12490271, map, "royalblue", -7650029, "saddlebrown");
        ig.d(-360334, map, "salmon", -744352, "sandybrown");
        ig.d(-13726889, map, "seagreen", -2578, "seashell");
        ig.d(-6270419, map, "sienna", -4144960, "silver");
        ig.d(-7876885, map, "skyblue", -9807155, "slateblue");
        map.put("slategray", -9404272);
        map.put("slategrey", -9404272);
        map.put("snow", -1286);
        map.put("springgreen", -16711809);
        ig.d(-12156236, map, "steelblue", -2968436, "tan");
        ig.d(-16744320, map, "teal", -2572328, "thistle");
        ig.d(-40121, map, "tomato", 0, TJAdUnitConstants.String.TRANSPARENT);
        ig.d(-12525360, map, "turquoise", -1146130, "violet");
        ig.d(-663885, map, "wheat", -1, "white");
        ig.d(-657931, map, "whitesmoke", -256, "yellow");
        map.put("yellowgreen", -6632142);
    }

    private ColorParser() {
    }

    private static int parseColorInternal(String str, boolean z) {
        int i;
        o8.e(!TextUtils.isEmpty(str));
        String strReplace = str.replace(" ", "");
        if (strReplace.charAt(0) == '#') {
            int i2 = (int) Long.parseLong(strReplace.substring(1), 16);
            if (strReplace.length() == 7) {
                return (-16777216) | i2;
            }
            if (strReplace.length() == 9) {
                return ((i2 & 255) << 24) | (i2 >>> 8);
            }
            mi2.b();
            return 0;
        }
        if (strReplace.startsWith(RGBA)) {
            Matcher matcher = (z ? RGBA_PATTERN_FLOAT_ALPHA : RGBA_PATTERN_INT_ALPHA).matcher(strReplace);
            if (matcher.matches()) {
                if (z) {
                    String strGroup = matcher.group(4);
                    strGroup.getClass();
                    i = (int) (Float.parseFloat(strGroup) * 255.0f);
                } else {
                    String strGroup2 = matcher.group(4);
                    strGroup2.getClass();
                    i = Integer.parseInt(strGroup2, 10);
                }
                String strGroup3 = matcher.group(1);
                strGroup3.getClass();
                int i3 = Integer.parseInt(strGroup3, 10);
                String strGroup4 = matcher.group(2);
                strGroup4.getClass();
                int i4 = Integer.parseInt(strGroup4, 10);
                String strGroup5 = matcher.group(3);
                strGroup5.getClass();
                return Color.argb(i, i3, i4, Integer.parseInt(strGroup5, 10));
            }
        } else if (strReplace.startsWith(RGB)) {
            Matcher matcher2 = RGB_PATTERN.matcher(strReplace);
            if (matcher2.matches()) {
                String strGroup6 = matcher2.group(1);
                strGroup6.getClass();
                int i5 = Integer.parseInt(strGroup6, 10);
                String strGroup7 = matcher2.group(2);
                strGroup7.getClass();
                int i6 = Integer.parseInt(strGroup7, 10);
                String strGroup8 = matcher2.group(3);
                strGroup8.getClass();
                return Color.rgb(i5, i6, Integer.parseInt(strGroup8, 10));
            }
        } else {
            Integer num = COLOR_MAP.get(go2.i(strReplace));
            if (num != null) {
                return num.intValue();
            }
        }
        mi2.b();
        return 0;
    }

    public static int parseCssColor(String str) {
        return parseColorInternal(str, true);
    }

    public static int parseTtmlColor(String str) {
        return parseColorInternal(str, false);
    }
}
