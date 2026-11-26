package yads;

import android.text.Layout;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class z26 extends xk5 {
    public static final Pattern n = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern o = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern p = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern q = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final Pattern s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    public static final Pattern t = Pattern.compile("^(\\d+) (\\d+)$");
    public static final x26 u = new x26(1, 30.0f, 1);
    public static final w26 v = new w26(15);
    public final XmlPullParserFactory m;

    public z26() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.m = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            defpackage.mg.e("Couldn't create XmlPullParserFactory instance", e);
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:135:0x0233  */
    /* JADX WARN: Code duplicated, block: B:172:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:197:0x0331  */
    /* JADX WARN: Code duplicated, block: B:6:0x0021  */
    /* JADX WARN: Code duplicated, block: B:72:0x0100  */
    public static d36 a(XmlPullParser xmlPullParser, d36 d36Var) {
        byte b;
        int attributeCount = xmlPullParser.getAttributeCount();
        d36 d36VarA = d36Var;
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.getClass();
            switch (attributeName) {
                case "fontStyle":
                    b = 0;
                    break;
                case "fontFamily":
                    b = 1;
                    break;
                case "textAlign":
                    b = 2;
                    break;
                case "textDecoration":
                    b = 3;
                    break;
                case "fontWeight":
                    b = 4;
                    break;
                case "id":
                    b = 5;
                    break;
                case "ruby":
                    b = 6;
                    break;
                case "color":
                    b = 7;
                    break;
                case "shear":
                    b = 8;
                    break;
                case "textCombine":
                    b = 9;
                    break;
                case "fontSize":
                    b = 10;
                    break;
                case "textEmphasis":
                    b = 11;
                    break;
                case "rubyPosition":
                    b = 12;
                    break;
                case "backgroundColor":
                    b = 13;
                    break;
                case "multiRowAlign":
                    b = 14;
                    break;
                default:
                    b = -1;
                    break;
            }
            Layout.Alignment alignment = null;
            switch (b) {
                case 0:
                    d36VarA = a(d36VarA);
                    d36VarA.i = TtmlNode.ITALIC.equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 1:
                    d36VarA = a(d36VarA);
                    d36VarA.a = attributeValue;
                    break;
                case 2:
                    d36VarA = a(d36VarA);
                    String strA = oj.a(attributeValue);
                    strA.getClass();
                    switch (strA) {
                        case "center":
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    d36VarA.o = alignment;
                    break;
                case 3:
                    String strA2 = oj.a(attributeValue);
                    strA2.getClass();
                    switch (strA2) {
                        case "nounderline":
                            d36VarA = a(d36VarA);
                            d36VarA.g = 0;
                            break;
                        case "underline":
                            d36VarA = a(d36VarA);
                            d36VarA.g = 1;
                            break;
                        case "nolinethrough":
                            d36VarA = a(d36VarA);
                            d36VarA.f = 0;
                            break;
                        case "linethrough":
                            d36VarA = a(d36VarA);
                            d36VarA.f = 1;
                            break;
                    }
                    break;
                case 4:
                    d36VarA = a(d36VarA);
                    d36VarA.h = TtmlNode.BOLD.equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 5:
                    if ("style".equals(xmlPullParser.getName())) {
                        d36VarA = a(d36VarA);
                        d36VarA.l = attributeValue;
                    }
                    break;
                case 6:
                    String strA3 = oj.a(attributeValue);
                    strA3.getClass();
                    switch (strA3) {
                        case "baseContainer":
                        case "base":
                            d36VarA = a(d36VarA);
                            d36VarA.m = 2;
                            break;
                        case "container":
                            d36VarA = a(d36VarA);
                            d36VarA.m = 1;
                            break;
                        case "delimiter":
                            d36VarA = a(d36VarA);
                            d36VarA.m = 4;
                            break;
                        case "textContainer":
                        case "text":
                            d36VarA = a(d36VarA);
                            d36VarA.m = 3;
                            break;
                    }
                    break;
                case 7:
                    d36VarA = a(d36VarA);
                    try {
                        d36VarA.b = z20.a(attributeValue, false);
                        d36VarA.c = true;
                    } catch (IllegalArgumentException unused) {
                        cz3.a("Failed parsing color value: ", attributeValue, "TtmlDecoder");
                    }
                    break;
                case 8:
                    d36 d36VarA2 = a(d36VarA);
                    Matcher matcher = q.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher.matches()) {
                        try {
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                        } catch (NumberFormatException e) {
                            sv3.d("TtmlDecoder", sv3.a("Failed to parse shear: " + attributeValue, e));
                        }
                    } else {
                        cz3.a("Invalid value for shear: ", attributeValue, "TtmlDecoder");
                    }
                    d36VarA2.s = fMin;
                    d36VarA = d36VarA2;
                    break;
                case 9:
                    String strA4 = oj.a(attributeValue);
                    strA4.getClass();
                    if (strA4.equals(TtmlNode.COMBINE_ALL)) {
                        d36VarA = a(d36VarA);
                        d36VarA.q = 1;
                    } else if (strA4.equals("none")) {
                        d36VarA = a(d36VarA);
                        d36VarA.q = 0;
                    }
                    break;
                case 10:
                    try {
                        d36VarA = a(d36VarA);
                        a(attributeValue, d36VarA);
                    } catch (ot5 unused2) {
                        cz3.a("Failed parsing fontSize value: ", attributeValue, "TtmlDecoder");
                    }
                    break;
                case 11:
                    d36VarA = a(d36VarA);
                    d36VarA.r = dw5.a(attributeValue);
                    break;
                case 12:
                    String strA5 = oj.a(attributeValue);
                    strA5.getClass();
                    if (strA5.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        d36VarA = a(d36VarA);
                        d36VarA.n = 1;
                    } else if (strA5.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                        d36VarA = a(d36VarA);
                        d36VarA.n = 2;
                    }
                    break;
                case 13:
                    d36VarA = a(d36VarA);
                    try {
                        d36VarA.d = z20.a(attributeValue, false);
                        d36VarA.e = true;
                    } catch (IllegalArgumentException unused3) {
                        cz3.a("Failed parsing background value: ", attributeValue, "TtmlDecoder");
                    }
                    break;
                case 14:
                    d36VarA = a(d36VarA);
                    String strA6 = oj.a(attributeValue);
                    strA6.getClass();
                    switch (strA6) {
                        case "center":
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    d36VarA.p = alignment;
                    break;
            }
        }
        return d36VarA;
    }

    public static y26 b(XmlPullParser xmlPullParser) {
        String strA = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA == null) {
            return null;
        }
        Matcher matcher = s.matcher(strA);
        if (!matcher.matches()) {
            sv3.d("TtmlDecoder", "Ignoring non-pixel tts extent: ".concat(strA));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new y26(i, Integer.parseInt(strGroup2));
        } catch (NumberFormatException unused) {
            sv3.d("TtmlDecoder", "Ignoring malformed tts extent: ".concat(strA));
            return null;
        }
    }

    public static x26 a(XmlPullParser xmlPullParser) throws ot5 {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            int i2 = u56.a;
            String[] strArrSplit = attributeValue2.split(" ", -1);
            if (strArrSplit.length == 2) {
                f = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
            } else {
                throw new ot5("frameRateMultiplier doesn't have 2 parts");
            }
        } else {
            f = 1.0f;
        }
        x26 x26Var = u;
        int i3 = x26Var.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i3 = Integer.parseInt(attributeValue3);
        }
        int i4 = x26Var.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i4 = Integer.parseInt(attributeValue4);
        }
        return new x26(i3, i * f, i4);
    }

    public static w26 a(XmlPullParser xmlPullParser, w26 w26Var) throws ot5 {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return w26Var;
        }
        Matcher matcher = t.matcher(attributeValue);
        if (!matcher.matches()) {
            sv3.d("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return w26Var;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i2 = Integer.parseInt(strGroup2);
            if (i == 0 || i2 == 0) {
                throw new ot5("Invalid cell resolution " + i + " " + i2);
            }
            return new w26(i2);
        } catch (NumberFormatException unused) {
            sv3.d("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return w26Var;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:107:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:45:0x0122  */
    /* JADX WARN: Code duplicated, block: B:47:0x0128 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x012a  */
    /* JADX WARN: Code duplicated, block: B:53:0x015e  */
    /* JADX WARN: Code duplicated, block: B:55:0x016d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0176  */
    /* JADX WARN: Code duplicated, block: B:59:0x017c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0186  */
    /* JADX WARN: Code duplicated, block: B:63:0x0199  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:66:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4 A[PHI: r3
      0x01d4: PHI (r3v10 int) = (r3v9 int), (r3v5 int) binds: [B:82:0x01d7, B:78:0x01cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f7  */
    public static void a(XmlPullParser xmlPullParser, HashMap map, w26 w26Var, y26 y26Var, HashMap map2, HashMap map3) throws XmlPullParserException, IOException {
        String strA;
        float f;
        float f2;
        String strA2;
        Matcher matcher;
        Matcher matcher2;
        float f3;
        float f4;
        float f5;
        String strA3;
        int i;
        String strA4;
        int i2;
        b36 b36Var;
        String strA5;
        String strA6;
        String[] strArrSplit;
        do {
            xmlPullParser.next();
            if (am6.c(xmlPullParser, "style")) {
                String strA7 = am6.a(xmlPullParser, "style");
                d36 d36VarA = a(xmlPullParser, new d36());
                if (strA7 != null) {
                    String strTrim = strA7.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        int i3 = u56.a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    for (String str : strArrSplit) {
                        d36VarA.a((d36) map.get(str));
                    }
                }
                String str2 = d36VarA.l;
                if (str2 != null) {
                    map.put(str2, d36VarA);
                }
            } else if (am6.c(xmlPullParser, TtmlNode.TAG_REGION)) {
                String strA8 = am6.a(xmlPullParser, TtmlNode.ATTR_ID);
                if (strA8 != null) {
                    String strA9 = am6.a(xmlPullParser, "origin");
                    if (strA9 != null) {
                        Pattern pattern = r;
                        Matcher matcher3 = pattern.matcher(strA9);
                        Pattern pattern2 = s;
                        Matcher matcher4 = pattern2.matcher(strA9);
                        int i4 = 2;
                        if (matcher3.matches()) {
                            try {
                                String strGroup = matcher3.group(1);
                                strGroup.getClass();
                                f = Float.parseFloat(strGroup) / 100.0f;
                                String strGroup2 = matcher3.group(2);
                                strGroup2.getClass();
                                f2 = Float.parseFloat(strGroup2) / 100.0f;
                                strA2 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
                                if (strA2 != null) {
                                    matcher = pattern.matcher(strA2);
                                    matcher2 = pattern2.matcher(strA2);
                                    if (matcher.matches()) {
                                        try {
                                            String strGroup3 = matcher.group(1);
                                            strGroup3.getClass();
                                            float f6 = Float.parseFloat(strGroup3) / 100.0f;
                                            String strGroup4 = matcher.group(2);
                                            strGroup4.getClass();
                                            f3 = Float.parseFloat(strGroup4) / 100.0f;
                                            f4 = f6;
                                        } catch (NumberFormatException unused) {
                                            sv3.d("TtmlDecoder", "Ignoring region with malformed extent: ".concat(strA9));
                                            b36Var = null;
                                        }
                                    } else if (matcher2.matches()) {
                                        sv3.d("TtmlDecoder", "Ignoring region with unsupported extent: ".concat(strA9));
                                    } else if (y26Var == null) {
                                        sv3.d("TtmlDecoder", "Ignoring region with missing tts:extent: ".concat(strA9));
                                    } else {
                                        try {
                                            String strGroup5 = matcher2.group(1);
                                            strGroup5.getClass();
                                            int i5 = Integer.parseInt(strGroup5);
                                            String strGroup6 = matcher2.group(2);
                                            strGroup6.getClass();
                                            int i6 = Integer.parseInt(strGroup6);
                                            float f7 = i5 / y26Var.a;
                                            f3 = i6 / y26Var.b;
                                            f4 = f7;
                                        } catch (NumberFormatException unused2) {
                                            sv3.d("TtmlDecoder", "Ignoring region with malformed extent: ".concat(strA9));
                                            b36Var = null;
                                        }
                                    }
                                    f5 = f3;
                                    strA3 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
                                    if (strA3 != null) {
                                        strA6 = oj.a(strA3);
                                        strA6.getClass();
                                        if (!strA6.equals(TtmlNode.CENTER)) {
                                            f2 += f5 / 2.0f;
                                            i = 1;
                                        } else if (strA6.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                            f2 += f5;
                                            i = 2;
                                        } else {
                                            i = 0;
                                        }
                                    } else {
                                        i = 0;
                                    }
                                    float f8 = 1.0f / w26Var.a;
                                    strA4 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
                                    if (strA4 != null) {
                                        strA5 = oj.a(strA4);
                                        strA5.getClass();
                                        switch (strA5) {
                                            case "tb":
                                            case "tblr":
                                                i2 = i4;
                                                break;
                                            case "tbrl":
                                                i2 = 1;
                                                break;
                                            default:
                                                i4 = Integer.MIN_VALUE;
                                                i2 = i4;
                                                break;
                                        }
                                    } else {
                                        i4 = Integer.MIN_VALUE;
                                        i2 = i4;
                                    }
                                    b36Var = new b36(strA8, f, f2, 0, i, f4, f5, 1, f8, i2);
                                } else {
                                    sv3.d("TtmlDecoder", "Ignoring region without an extent");
                                }
                            } catch (NumberFormatException unused3) {
                                sv3.d("TtmlDecoder", "Ignoring region with malformed origin: ".concat(strA9));
                            }
                        } else if (!matcher4.matches()) {
                            sv3.d("TtmlDecoder", "Ignoring region with unsupported origin: ".concat(strA9));
                        } else if (y26Var == null) {
                            sv3.d("TtmlDecoder", "Ignoring region with missing tts:extent: ".concat(strA9));
                        } else {
                            try {
                                String strGroup7 = matcher4.group(1);
                                strGroup7.getClass();
                                int i7 = Integer.parseInt(strGroup7);
                                String strGroup8 = matcher4.group(2);
                                strGroup8.getClass();
                                int i8 = Integer.parseInt(strGroup8);
                                float f9 = i7 / y26Var.a;
                                float f10 = i8 / y26Var.b;
                                f = f9;
                                f2 = f10;
                                strA2 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
                                if (strA2 != null) {
                                    matcher = pattern.matcher(strA2);
                                    matcher2 = pattern2.matcher(strA2);
                                    if (matcher.matches()) {
                                        String strGroup9 = matcher.group(1);
                                        strGroup9.getClass();
                                        float f11 = Float.parseFloat(strGroup9) / 100.0f;
                                        String strGroup10 = matcher.group(2);
                                        strGroup10.getClass();
                                        f3 = Float.parseFloat(strGroup10) / 100.0f;
                                        f4 = f11;
                                    } else if (matcher2.matches()) {
                                        sv3.d("TtmlDecoder", "Ignoring region with unsupported extent: ".concat(strA9));
                                    } else if (y26Var == null) {
                                        sv3.d("TtmlDecoder", "Ignoring region with missing tts:extent: ".concat(strA9));
                                    } else {
                                        String strGroup11 = matcher2.group(1);
                                        strGroup11.getClass();
                                        int i9 = Integer.parseInt(strGroup11);
                                        String strGroup12 = matcher2.group(2);
                                        strGroup12.getClass();
                                        int i10 = Integer.parseInt(strGroup12);
                                        float f12 = i9 / y26Var.a;
                                        f3 = i10 / y26Var.b;
                                        f4 = f12;
                                    }
                                    f5 = f3;
                                    strA3 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
                                    if (strA3 != null) {
                                        strA6 = oj.a(strA3);
                                        strA6.getClass();
                                        if (!strA6.equals(TtmlNode.CENTER)) {
                                            f2 += f5 / 2.0f;
                                            i = 1;
                                        } else if (strA6.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                            i = 0;
                                        } else {
                                            f2 += f5;
                                            i = 2;
                                        }
                                    } else {
                                        i = 0;
                                    }
                                    float f13 = 1.0f / w26Var.a;
                                    strA4 = am6.a(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
                                    if (strA4 != null) {
                                        strA5 = oj.a(strA4);
                                        strA5.getClass();
                                        switch (strA5) {
                                            case 3694:
                                                if (!strA5.equals("tb")) {
                                                }
                                                break;
                                            case 3553396:
                                                if (!strA5.equals(TtmlNode.VERTICAL_LR)) {
                                                }
                                                break;
                                            case 3553576:
                                                if (!strA5.equals(TtmlNode.VERTICAL_RL)) {
                                                }
                                                break;
                                            default:
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
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
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
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:216)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
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
                                            Method dump skipped, instruction units count: 626
                                            To view this dump add '--comments-level debug' option
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: yads.z26.a(org.xmlpull.v1.XmlPullParser, java.util.HashMap, yads.w26, yads.y26, java.util.HashMap, java.util.HashMap):void");
                                    }

                                    @Override // yads.xk5
                                    public final mt5 a(byte[] bArr, int i, boolean z) throws ot5 {
                                        mt5 mt5Var;
                                        mt5 mt5Var2 = null;
                                        try {
                                            try {
                                                XmlPullParser xmlPullParserNewPullParser = this.m.newPullParser();
                                                HashMap map = new HashMap();
                                                HashMap map2 = new HashMap();
                                                HashMap map3 = new HashMap();
                                                map2.put("", new b36("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
                                                xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
                                                ArrayDeque arrayDeque = new ArrayDeque();
                                                int eventType = xmlPullParserNewPullParser.getEventType();
                                                x26 x26VarA = u;
                                                int i2 = 0;
                                                w26 w26VarA = v;
                                                e36 e36Var = null;
                                                y26 y26VarB = null;
                                                while (eventType != 1) {
                                                    a36 a36Var = (a36) arrayDeque.peek();
                                                    if (i2 == 0) {
                                                        String name = xmlPullParserNewPullParser.getName();
                                                        mt5Var = mt5Var2;
                                                        if (eventType == 2) {
                                                            try {
                                                                if (TtmlNode.TAG_TT.equals(name)) {
                                                                    x26VarA = a(xmlPullParserNewPullParser);
                                                                    w26VarA = a(xmlPullParserNewPullParser, v);
                                                                    y26VarB = b(xmlPullParserNewPullParser);
                                                                }
                                                                x26 x26Var = x26VarA;
                                                                y26 y26Var = y26VarB;
                                                                if (!a(name)) {
                                                                    sv3.c("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                                                                } else {
                                                                    if (TtmlNode.TAG_HEAD.equals(name)) {
                                                                        a(xmlPullParserNewPullParser, map, w26VarA, y26Var, map2, map3);
                                                                    } else {
                                                                        try {
                                                                            a36 a36VarA = a(xmlPullParserNewPullParser, a36Var, map2, x26Var);
                                                                            arrayDeque.push(a36VarA);
                                                                            if (a36Var != null) {
                                                                                ArrayList arrayList = a36Var.m;
                                                                                if (arrayList == null) {
                                                                                    arrayList = new ArrayList();
                                                                                    a36Var.m = arrayList;
                                                                                }
                                                                                arrayList.add(a36VarA);
                                                                            }
                                                                        } catch (ot5 e) {
                                                                            sv3.d("TtmlDecoder", sv3.a("Suppressing parser error", e));
                                                                            y26VarB = y26Var;
                                                                            x26VarA = x26Var;
                                                                            i2++;
                                                                        }
                                                                    }
                                                                    y26VarB = y26Var;
                                                                    x26VarA = x26Var;
                                                                }
                                                                y26VarB = y26Var;
                                                                x26VarA = x26Var;
                                                                i2++;
                                                            } catch (IOException e2) {
                                                                e = e2;
                                                                defpackage.h2.e("Unexpected error when reading input.", e);
                                                                return mt5Var;
                                                            }
                                                        } else if (eventType == 4) {
                                                            a36Var.getClass();
                                                            a36 a36VarA2 = a36.a(xmlPullParserNewPullParser.getText());
                                                            ArrayList arrayList2 = a36Var.m;
                                                            if (arrayList2 == null) {
                                                                arrayList2 = new ArrayList();
                                                                a36Var.m = arrayList2;
                                                            }
                                                            arrayList2.add(a36VarA2);
                                                        } else if (eventType == 3) {
                                                            if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                                                                a36 a36Var2 = (a36) arrayDeque.peek();
                                                                a36Var2.getClass();
                                                                e36Var = new e36(a36Var2, map, map2, map3);
                                                            }
                                                            arrayDeque.pop();
                                                        }
                                                    } else {
                                                        mt5Var = mt5Var2;
                                                        if (eventType == 2) {
                                                            i2++;
                                                        } else if (eventType == 3) {
                                                            i2--;
                                                        }
                                                    }
                                                    xmlPullParserNewPullParser.next();
                                                    eventType = xmlPullParserNewPullParser.getEventType();
                                                    mt5Var2 = mt5Var;
                                                }
                                                mt5Var = mt5Var2;
                                                if (e36Var != null) {
                                                    return e36Var;
                                                }
                                                throw new ot5("No TTML subtitles found");
                                            } catch (XmlPullParserException e3) {
                                                throw new ot5("Unable to decode source", e3);
                                            }
                                        } catch (IOException e4) {
                                            e = e4;
                                            mt5Var = mt5Var2;
                                        }
                                    }

                                    public static d36 a(d36 d36Var) {
                                        return d36Var == null ? new d36() : d36Var;
                                    }

                                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                    /* JADX WARN: Code duplicated, block: B:6:0x003c  */
                                    public static a36 a(XmlPullParser xmlPullParser, a36 a36Var, HashMap map, x26 x26Var) throws ot5 {
                                        long j;
                                        String[] strArrSplit;
                                        int attributeCount = xmlPullParser.getAttributeCount();
                                        String[] strArr = null;
                                        d36 d36VarA = a(xmlPullParser, (d36) null);
                                        String strSubstring = null;
                                        String str = "";
                                        long jA = C.TIME_UNSET;
                                        long jA2 = C.TIME_UNSET;
                                        long jA3 = C.TIME_UNSET;
                                        for (int i = 0; i < attributeCount; i++) {
                                            String attributeName = xmlPullParser.getAttributeName(i);
                                            String attributeValue = xmlPullParser.getAttributeValue(i);
                                            attributeName.getClass();
                                            switch (attributeName) {
                                                case "region":
                                                    if (map.containsKey(attributeValue)) {
                                                        str = attributeValue;
                                                        continue;
                                                    }
                                                    break;
                                                case "dur":
                                                    jA3 = a(attributeValue, x26Var);
                                                    break;
                                                case "end":
                                                    jA2 = a(attributeValue, x26Var);
                                                    break;
                                                case "begin":
                                                    jA = a(attributeValue, x26Var);
                                                    break;
                                                case "style":
                                                    String strTrim = attributeValue.trim();
                                                    if (strTrim.isEmpty()) {
                                                        strArrSplit = new String[0];
                                                    } else {
                                                        int i2 = u56.a;
                                                        strArrSplit = strTrim.split("\\s+", -1);
                                                    }
                                                    if (strArrSplit.length > 0) {
                                                        strArr = strArrSplit;
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
                                        }
                                        if (a36Var != null) {
                                            long j2 = a36Var.d;
                                            if (j2 != C.TIME_UNSET) {
                                                if (jA != C.TIME_UNSET) {
                                                    jA += j2;
                                                }
                                                if (jA2 != C.TIME_UNSET) {
                                                    jA2 += j2;
                                                }
                                            }
                                        }
                                        if (jA2 != C.TIME_UNSET) {
                                            j = jA2;
                                        } else {
                                            if (jA3 != C.TIME_UNSET) {
                                                jA2 = jA + jA3;
                                            } else if (a36Var != null) {
                                                long j3 = a36Var.e;
                                                if (j3 != C.TIME_UNSET) {
                                                    j = j3;
                                                }
                                            }
                                            j = jA2;
                                        }
                                        return new a36(xmlPullParser.getName(), null, jA, j, d36VarA, strArr, str, strSubstring, a36Var);
                                    }

                                    public static boolean a(String str) {
                                        return str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals("br") || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals("layout") || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
                                    }

                                    public static void a(String str, d36 d36Var) throws ot5 {
                                        Matcher matcher;
                                        int i = u56.a;
                                        String[] strArrSplit = str.split("\\s+", -1);
                                        if (strArrSplit.length == 1) {
                                            matcher = p.matcher(str);
                                        } else if (strArrSplit.length == 2) {
                                            matcher = p.matcher(strArrSplit[1]);
                                            sv3.d("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                                        } else {
                                            throw new ot5(defpackage.l2.e(new StringBuilder("Invalid number of entries for fontSize: "), ".", strArrSplit.length));
                                        }
                                        if (matcher.matches()) {
                                            String strGroup = matcher.group(3);
                                            strGroup.getClass();
                                            switch (strGroup) {
                                                case "%":
                                                    d36Var.j = 3;
                                                    break;
                                                case "em":
                                                    d36Var.j = 2;
                                                    break;
                                                case "px":
                                                    d36Var.j = 1;
                                                    break;
                                                default:
                                                    throw new ot5(defpackage.me0.c("Invalid unit for fontSize: '", strGroup, "'."));
                                            }
                                            String strGroup2 = matcher.group(1);
                                            strGroup2.getClass();
                                            d36Var.k = Float.parseFloat(strGroup2);
                                            return;
                                        }
                                        throw new ot5(defpackage.me0.c("Invalid expression for fontSize: '", str, "'."));
                                    }

                                    public static long a(String str, x26 x26Var) throws ot5 {
                                        double d;
                                        double d2;
                                        Matcher matcher = n.matcher(str);
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
                                            double d7 = d6 + (strGroup5 != null ? Long.parseLong(strGroup5) / x26Var.a : 0.0d);
                                            String strGroup6 = matcher.group(6);
                                            return (long) ((d7 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) x26Var.b)) / ((double) x26Var.a) : 0.0d)) * 1000000.0d);
                                        }
                                        Matcher matcher2 = o.matcher(str);
                                        if (matcher2.matches()) {
                                            String strGroup7 = matcher2.group(1);
                                            strGroup7.getClass();
                                            double d8 = Double.parseDouble(strGroup7);
                                            String strGroup8 = matcher2.group(2);
                                            strGroup8.getClass();
                                            switch (strGroup8) {
                                                case "f":
                                                    d = x26Var.a;
                                                    d8 /= d;
                                                    return (long) (d8 * 1000000.0d);
                                                case "h":
                                                    d2 = 3600.0d;
                                                    break;
                                                case "m":
                                                    d2 = 60.0d;
                                                    break;
                                                case "t":
                                                    d = x26Var.c;
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
                                        throw new ot5(defpackage.bj.c("Malformed time expression: ", str));
                                    }
                                }
