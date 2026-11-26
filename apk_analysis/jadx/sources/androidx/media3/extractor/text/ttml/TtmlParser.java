package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.media3.common.C;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.LegacySubtitleUtil;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleParser;
import defpackage.bj;
import defpackage.go2;
import defpackage.h2;
import defpackage.l2;
import defpackage.me0;
import defpackage.mg;
import defpackage.o8;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class TtmlParser implements SubtitleParser {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_IMAGE = "backgroundImage";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    public static final int CUE_REPLACEMENT_BEHAVIOR = 1;
    private static final int DEFAULT_CELL_ROWS = 15;
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final String TAG = "TtmlParser";
    private static final String TTP = "http://www.w3.org/ns/ttml#parameter";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern SIGNED_PERCENTAGE = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern PIXEL_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern CELL_RESOLUTION = Pattern.compile("^(\\d+) (\\d+)$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);

    public static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        public FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }

    public static final class TtsExtent {
        final int height;
        final int width;

        public TtsExtent(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }

    public TtmlParser() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            mg.e("Couldn't create XmlPullParserFactory instance", e);
            throw null;
        }
    }

    private static TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals("br") || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals("layout") || str.equals("region") || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
    }

    private static Layout.Alignment parseAlignment(String str) {
        String strI = go2.i(str);
        strI.getClass();
        switch (strI) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static int parseCellRows(XmlPullParser xmlPullParser, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return i;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring malformed cell resolution: ".concat(attributeValue));
            return i;
        }
        boolean z = true;
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i2 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i3 = Integer.parseInt(strGroup2);
            if (i2 == 0 || i3 == 0) {
                z = false;
            }
            o8.d("Invalid cell resolution %s %s", i2, i3, z);
            return i3;
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed cell resolution: ".concat(attributeValue));
            return i;
        }
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrSplit = Util.split(str, "\\s+");
        if (strArrSplit.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new SubtitleDecoderException(l2.e(new StringBuilder("Invalid number of entries for fontSize: "), ".", strArrSplit.length));
            }
            matcher = FONT_SIZE.matcher(strArrSplit[1]);
            Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException(me0.c("Invalid expression for fontSize: '", str, "'."));
        }
        String strGroup = matcher.group(3);
        strGroup.getClass();
        switch (strGroup) {
            case "%":
                ttmlStyle.setFontSizeUnit(3);
                break;
            case "em":
                ttmlStyle.setFontSizeUnit(2);
                break;
            case "px":
                ttmlStyle.setFontSizeUnit(1);
                break;
            default:
                throw new SubtitleDecoderException(me0.c("Invalid unit for fontSize: '", strGroup, "'."));
        }
        String strGroup2 = matcher.group(1);
        strGroup2.getClass();
        ttmlStyle.setFontSize(Float.parseFloat(strGroup2));
    }

    private static FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrSplit = Util.split(attributeValue2, " ");
            o8.f(strArrSplit.length == 2, "frameRateMultiplier doesn't have 2 parts");
            f = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        } else {
            f = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = DEFAULT_FRAME_AND_TICK_RATE;
        int i2 = frameAndTickRate.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = frameAndTickRate.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i * f, i2, i3);
    }

    private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, int i, TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : parseStyleIds(attributeValue)) {
                        styleAttributes.chain(map.get(str));
                    }
                }
                String id = styleAttributes.getId();
                if (id != null) {
                    map.put(id, styleAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                TtmlRegion regionAttributes = parseRegionAttributes(xmlPullParser, i, ttsExtent, map);
                if (regionAttributes != null) {
                    map2.put(regionAttributes.id, regionAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, TtmlNode.TAG_METADATA)) {
                parseMetadata(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void parseMetadata(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String attributeValue;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_ID)) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    private static TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int attributeCount = xmlPullParser2.getAttributeCount();
        String strSubstring = null;
        TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser2, null);
        long timeExpression = -9223372036854775807L;
        long timeExpression2 = -9223372036854775807L;
        long timeExpression3 = -9223372036854775807L;
        String[] strArr = null;
        String str = "";
        int i = 0;
        while (i < attributeCount) {
            String attributeName = xmlPullParser2.getAttributeName(i);
            int i2 = attributeCount;
            String attributeValue = xmlPullParser2.getAttributeValue(i);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    i++;
                    xmlPullParser2 = xmlPullParser;
                    attributeCount = i2;
                    break;
                case "dur":
                    timeExpression3 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    timeExpression2 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "begin":
                    timeExpression = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "style":
                    String[] styleIds = parseStyleIds(attributeValue);
                    if (styleIds.length > 0) {
                        strArr = styleIds;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
            i++;
            xmlPullParser2 = xmlPullParser;
            attributeCount = i2;
        }
        if (ttmlNode != null) {
            long j = ttmlNode.startTimeUs;
            if (j != C.TIME_UNSET) {
                if (timeExpression != C.TIME_UNSET) {
                    timeExpression += j;
                }
                if (timeExpression2 != C.TIME_UNSET) {
                    timeExpression2 += j;
                }
            }
        }
        long j2 = timeExpression;
        if (timeExpression2 == C.TIME_UNSET) {
            if (timeExpression3 != C.TIME_UNSET) {
                timeExpression2 = j2 + timeExpression3;
            } else if (ttmlNode != null) {
                long j3 = ttmlNode.endTimeUs;
                if (j3 != C.TIME_UNSET) {
                    timeExpression2 = j3;
                }
            }
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), j2, timeExpression2, styleAttributes, strArr, str, strSubstring, ttmlNode);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0174  */
    /* JADX WARN: Code duplicated, block: B:90:0x01bc  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static TtmlRegion parseRegionAttributes(XmlPullParser xmlPullParser, int i, TtsExtent ttsExtent, Map<String, TtmlStyle> map) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i2;
        float f7;
        float f8;
        String attributeValue;
        TtmlStyle ttmlStyle;
        String attributeValue2;
        TtmlStyle ttmlStyle2;
        String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_ID);
        if (attributeValue3 == null) {
            return null;
        }
        String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "origin");
        if (attributeValue4 == null && (attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle2 = map.get(attributeValue2)) != null) {
            attributeValue4 = ttmlStyle2.getOrigin();
        }
        int i3 = 2;
        if (attributeValue4 != null) {
            Matcher matcher = PERCENTAGE_COORDINATES.matcher(attributeValue4);
            Matcher matcher2 = PIXEL_COORDINATES.matcher(attributeValue4);
            if (matcher.matches()) {
                try {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    f2 = Float.parseFloat(strGroup) / 100.0f;
                    String strGroup2 = matcher.group(2);
                    strGroup2.getClass();
                    f = Float.parseFloat(strGroup2) / 100.0f;
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Ignoring region with malformed origin: ".concat(attributeValue4));
                    return null;
                }
            } else {
                if (!matcher2.matches()) {
                    Log.w(TAG, "Ignoring region with unsupported origin: ".concat(attributeValue4));
                    return null;
                }
                if (ttsExtent == null) {
                    Log.w(TAG, "Ignoring region with missing tts:extent: ".concat(attributeValue4));
                    return null;
                }
                try {
                    String strGroup3 = matcher2.group(1);
                    strGroup3.getClass();
                    int i4 = Integer.parseInt(strGroup3);
                    String strGroup4 = matcher2.group(2);
                    strGroup4.getClass();
                    int i5 = Integer.parseInt(strGroup4);
                    float f9 = i4 / ttsExtent.width;
                    float f10 = i5 / ttsExtent.height;
                    f2 = f9;
                    f = f10;
                } catch (NumberFormatException unused2) {
                    Log.w(TAG, "Ignoring region with malformed origin: ".concat(attributeValue4));
                    return null;
                }
            }
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        String attributeValue5 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue5 == null && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle = map.get(attributeValue)) != null) {
            attributeValue5 = ttmlStyle.getExtent();
        }
        if (attributeValue5 != null) {
            Matcher matcher3 = PERCENTAGE_COORDINATES.matcher(attributeValue5);
            Matcher matcher4 = PIXEL_COORDINATES.matcher(attributeValue5);
            f3 = 1.0f;
            if (matcher3.matches()) {
                try {
                    String strGroup5 = matcher3.group(1);
                    strGroup5.getClass();
                    f4 = Float.parseFloat(strGroup5) / 100.0f;
                    String strGroup6 = matcher3.group(2);
                    strGroup6.getClass();
                    f8 = Float.parseFloat(strGroup6) / 100.0f;
                } catch (NumberFormatException unused3) {
                    l2.f("Ignoring region with malformed extent: ", attributeValue4, TAG);
                    return null;
                }
            } else {
                if (!matcher4.matches()) {
                    l2.f("Ignoring region with unsupported extent: ", attributeValue4, TAG);
                    return null;
                }
                if (ttsExtent == null) {
                    l2.f("Ignoring region with missing tts:extent: ", attributeValue4, TAG);
                    return null;
                }
                try {
                    String strGroup7 = matcher4.group(1);
                    strGroup7.getClass();
                    int i6 = Integer.parseInt(strGroup7);
                    String strGroup8 = matcher4.group(2);
                    strGroup8.getClass();
                    int i7 = Integer.parseInt(strGroup8);
                    float f11 = i6 / ttsExtent.width;
                    f8 = i7 / ttsExtent.height;
                    f4 = f11;
                } catch (NumberFormatException unused4) {
                    l2.f("Ignoring region with malformed extent: ", attributeValue4, TAG);
                    return null;
                }
            }
            f5 = f8;
        } else {
            f3 = 1.0f;
            f4 = 1.0f;
            f5 = 1.0f;
        }
        String attributeValue6 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
        int i8 = 0;
        if (attributeValue6 != null) {
            String strI = go2.i(attributeValue6);
            strI.getClass();
            if (strI.equals(TtmlNode.CENTER)) {
                f7 = f + (f5 / 2.0f);
                i3 = 1;
            } else if (strI.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                f7 = f + f5;
            } else {
                i = i;
                i3 = 2;
                f6 = f;
                i3 = 0;
            }
            f6 = f7;
        } else {
            i = i;
            i3 = 2;
            f6 = f;
            i3 = 0;
        }
        float f12 = f3 / i;
        String attributeValue7 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
        if (attributeValue7 != null) {
            String strI2 = go2.i(attributeValue7);
            strI2.getClass();
            switch (strI2.hashCode()) {
                case 3694:
                    if (!strI2.equals("tb")) {
                        i8 = -1;
                    }
                    break;
                case 3553396:
                    i8 = !strI2.equals(TtmlNode.VERTICAL_LR) ? -1 : 1;
                    break;
                case 3553576:
                    i8 = !strI2.equals(TtmlNode.VERTICAL_RL) ? -1 : i3;
                    break;
                default:
                    i8 = -1;
                    break;
            }
            switch (i8) {
                case 0:
                case 1:
                    i2 = i3;
                    break;
                case 2:
                    i2 = 1;
                    break;
                default:
                    i2 = Integer.MIN_VALUE;
                    break;
            }
        } else {
            i2 = Integer.MIN_VALUE;
        }
        return new TtmlRegion(attributeValue3, f2, f6, 0, i3, f4, f5, 1, f12, i2);
    }

    private static float parseShear(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            l2.f("Invalid value for shear: ", str, TAG);
            return Float.MAX_VALUE;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    private static TtmlStyle parseStyleAttributes(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.getClass();
            switch (attributeName) {
                case "fontStyle":
                    ttmlStyle = createIfNull(ttmlStyle).setItalic(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case "extent":
                    ttmlStyle = createIfNull(ttmlStyle).setExtent(attributeValue);
                    break;
                case "fontFamily":
                    ttmlStyle = createIfNull(ttmlStyle).setFontFamily(attributeValue);
                    break;
                case "textAlign":
                    ttmlStyle = createIfNull(ttmlStyle).setTextAlign(parseAlignment(attributeValue));
                    break;
                case "origin":
                    ttmlStyle = createIfNull(ttmlStyle).setOrigin(attributeValue);
                    break;
                case "textDecoration":
                    String strI = go2.i(attributeValue);
                    strI.getClass();
                    switch (strI) {
                        case "nounderline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(false);
                            break;
                        case "underline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(true);
                            break;
                        case "nolinethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(false);
                            break;
                        case "linethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(true);
                            break;
                    }
                    break;
                case "fontWeight":
                    ttmlStyle = createIfNull(ttmlStyle).setBold(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case "id":
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setId(attributeValue);
                        break;
                    }
                    break;
                case "ruby":
                    String strI2 = go2.i(attributeValue);
                    strI2.getClass();
                    switch (strI2) {
                        case "baseContainer":
                        case "base":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(2);
                            break;
                        case "container":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(1);
                            break;
                        case "delimiter":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(4);
                            break;
                        case "textContainer":
                        case "text":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(3);
                            break;
                    }
                    break;
                case "color":
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setFontColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        l2.f("Failed parsing color value: ", attributeValue, TAG);
                        break;
                    }
                    break;
                case "shear":
                    ttmlStyle = createIfNull(ttmlStyle).setShearPercentage(parseShear(attributeValue));
                    break;
                case "textCombine":
                    String strI3 = go2.i(attributeValue);
                    strI3.getClass();
                    if (!strI3.equals(TtmlNode.COMBINE_ALL)) {
                        if (strI3.equals("none")) {
                            ttmlStyle = createIfNull(ttmlStyle).setTextCombine(false);
                        }
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setTextCombine(true);
                        break;
                    }
                    break;
                case "fontSize":
                    try {
                        ttmlStyle = createIfNull(ttmlStyle);
                        parseFontSize(attributeValue, ttmlStyle);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        l2.f("Failed parsing fontSize value: ", attributeValue, TAG);
                        break;
                    }
                    break;
                case "textEmphasis":
                    ttmlStyle = createIfNull(ttmlStyle).setTextEmphasis(TextEmphasis.parse(attributeValue));
                    break;
                case "rubyPosition":
                    String strI4 = go2.i(attributeValue);
                    strI4.getClass();
                    if (!strI4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        if (strI4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                            ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(2);
                        }
                        break;
                    } else {
                        ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(1);
                        break;
                    }
                    break;
                case "backgroundColor":
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setBackgroundColor(ColorParser.parseTtmlColor(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        l2.f("Failed parsing background value: ", attributeValue, TAG);
                        break;
                    }
                    break;
                case "multiRowAlign":
                    ttmlStyle = createIfNull(ttmlStyle).setMultiRowAlign(parseAlignment(attributeValue));
                    break;
            }
        }
        return ttmlStyle;
    }

    private static String[] parseStyleIds(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : Util.split(strTrim, "\\s+");
    }

    private static long parseTimeExpression(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        double d;
        double d2;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            double d3 = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            double d4 = d3 + (Long.parseLong(strGroup2) * 60);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d5 = d4 + Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d6 = d5 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d);
            String strGroup5 = matcher.group(5);
            double d7 = d6 + (strGroup5 != null ? Long.parseLong(strGroup5) / frameAndTickRate.effectiveFrameRate : 0.0d);
            String strGroup6 = matcher.group(6);
            return (long) ((d7 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) frameAndTickRate.subFrameRate)) / ((double) frameAndTickRate.effectiveFrameRate) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException(bj.c("Malformed time expression: ", str));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d8 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        switch (strGroup8) {
            case "f":
                d = frameAndTickRate.effectiveFrameRate;
                d8 /= d;
                return (long) (d8 * 1000000.0d);
            case "h":
                d2 = 3600.0d;
                break;
            case "m":
                d2 = 60.0d;
                break;
            case "t":
                d = frameAndTickRate.tickRate;
                d8 /= d;
                return (long) (d8 * 1000000.0d);
            case "ms":
                d = 1000.0d;
                d8 /= d;
                return (long) (d8 * 1000000.0d);
            default:
                return (long) (d8 * 1000000.0d);
        }
        d8 *= d2;
        return (long) (d8 * 1000000.0d);
    }

    private static TtsExtent parseTtsExtent(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring non-pixel tts extent: ".concat(attributeValue));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new TtsExtent(i, Integer.parseInt(strGroup2));
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed tts extent: ".concat(attributeValue));
            return null;
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public int getCueReplacementBehavior() {
        return 1;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public void parse(byte[] bArr, int i, int i2, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> consumer) {
        LegacySubtitleUtil.toCuesWithTiming(parseToLegacySubtitle(bArr, i, i2), outputOptions, consumer);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public Subtitle parseToLegacySubtitle(byte[] bArr, int i, int i2) {
        Subtitle subtitle;
        Subtitle subtitle2 = null;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new TtmlRegion(""));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            FrameAndTickRate frameAndTickRates = DEFAULT_FRAME_AND_TICK_RATE;
            TtmlSubtitle ttmlSubtitle = null;
            TtsExtent ttsExtent = null;
            int i3 = 0;
            int cellRows = 15;
            while (eventType != 1) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i3 == 0) {
                    subtitle = subtitle2;
                    try {
                        String name = xmlPullParserNewPullParser.getName();
                        if (eventType == 2) {
                            if (TtmlNode.TAG_TT.equals(name)) {
                                frameAndTickRates = parseFrameAndTickRates(xmlPullParserNewPullParser);
                                cellRows = parseCellRows(xmlPullParserNewPullParser, 15);
                                ttsExtent = parseTtsExtent(xmlPullParserNewPullParser);
                            }
                            TtsExtent ttsExtent2 = ttsExtent;
                            FrameAndTickRate frameAndTickRate = frameAndTickRates;
                            int i4 = cellRows;
                            if (isSupportedTag(name)) {
                                if (TtmlNode.TAG_HEAD.equals(name)) {
                                    parseHeader(xmlPullParserNewPullParser, map, i4, ttsExtent2, map2, map3);
                                } else {
                                    try {
                                        TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                        arrayDeque.push(node);
                                        if (ttmlNode != null) {
                                            ttmlNode.addChild(node);
                                        }
                                    } catch (SubtitleDecoderException e) {
                                        Log.w(TAG, "Suppressing parser error", e);
                                        i3++;
                                    }
                                }
                                cellRows = i4;
                                frameAndTickRates = frameAndTickRate;
                                ttsExtent = ttsExtent2;
                            } else {
                                Log.i(TAG, "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            }
                            i3++;
                            cellRows = i4;
                            frameAndTickRates = frameAndTickRate;
                            ttsExtent = ttsExtent2;
                        } else if (eventType == 4) {
                            ttmlNode.getClass();
                            ttmlNode.addChild(TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                        } else if (eventType == 3) {
                            if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                                TtmlNode ttmlNode2 = (TtmlNode) arrayDeque.peek();
                                ttmlNode2.getClass();
                                ttmlSubtitle = new TtmlSubtitle(ttmlNode2, map, map2, map3);
                            }
                            arrayDeque.pop();
                        }
                    } catch (IOException e2) {
                        e = e2;
                        h2.e("Unexpected error when reading input.", e);
                        return subtitle;
                    } catch (XmlPullParserException e3) {
                        e = e3;
                        h2.e("Unable to decode source", e);
                        return subtitle;
                    }
                } else {
                    subtitle = subtitle2;
                    if (eventType == 2) {
                        i3++;
                    } else if (eventType == 3) {
                        i3--;
                    }
                }
                xmlPullParserNewPullParser.next();
                eventType = xmlPullParserNewPullParser.getEventType();
                subtitle2 = subtitle;
            }
            subtitle = subtitle2;
            ttmlSubtitle.getClass();
            return ttmlSubtitle;
        } catch (IOException e4) {
            e = e4;
            subtitle = subtitle2;
        } catch (XmlPullParserException e5) {
            e = e5;
            subtitle = subtitle2;
        }
    }
}
