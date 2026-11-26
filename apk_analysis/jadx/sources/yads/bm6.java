package yads;

import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bm6 {
    public static final String[] a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    public static final String[] c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static ra4 a(String str) throws XmlPullParserException, IOException {
        long j;
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!am6.c(xmlPullParserNewPullParser, "x:xmpmeta")) {
            defpackage.e2.h("Couldn't find xmp metadata", null);
            return null;
        }
        le3 le3Var = oe3.c;
        k55 k55VarA = k55.f;
        long j2 = -9223372036854775807L;
        loop0: do {
            xmlPullParserNewPullParser.next();
            if (am6.c(xmlPullParserNewPullParser, "rdf:Description")) {
                String[] strArr = a;
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    String strA = am6.a(xmlPullParserNewPullParser, strArr[i2]);
                    if (strA != null) {
                        if (Integer.parseInt(strA) != 1) {
                            break loop0;
                        }
                        String[] strArr2 = b;
                        int i3 = 0;
                        while (true) {
                            if (i3 < 4) {
                                String strA2 = am6.a(xmlPullParserNewPullParser, strArr2[i3]);
                                if (strA2 != null) {
                                    j = Long.parseLong(strA2);
                                    if (j != -1) {
                                        break;
                                    }
                                    break;
                                }
                                i3++;
                            }
                            j = -9223372036854775807L;
                            break;
                        }
                        String[] strArr3 = c;
                        while (true) {
                            if (i >= 2) {
                                le3 le3Var2 = oe3.c;
                                k55VarA = k55.f;
                                break;
                            }
                            String strA3 = am6.a(xmlPullParserNewPullParser, strArr3[i]);
                            if (strA3 != null) {
                                k55VarA = oe3.a(new qa4(MimeTypes.IMAGE_JPEG, 0L, 0L), new qa4(MimeTypes.VIDEO_MP4, Long.parseLong(strA3), 0L));
                                break;
                            }
                            i++;
                        }
                        j2 = j;
                    }
                }
                return null;
            }
            if (am6.c(xmlPullParserNewPullParser, "Container:Directory")) {
                k55VarA = a(xmlPullParserNewPullParser, TextFieldImplKt.ContainerId, "Item");
            } else if (am6.c(xmlPullParserNewPullParser, "GContainer:Directory")) {
                k55VarA = a(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!am6.b(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (k55VarA.isEmpty()) {
            return null;
        }
        return new ra4(j2, k55VarA);
    }

    public static k55 a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        le3 le3Var = oe3.c;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        String strConcat = str.concat(":Item");
        String strConcat2 = str.concat(":Directory");
        int i = 0;
        do {
            xmlPullParser.next();
            if (am6.c(xmlPullParser, strConcat)) {
                String strConcat3 = str2.concat(":Mime");
                String strConcat4 = str2.concat(":Semantic");
                String strConcat5 = str2.concat(":Length");
                String strConcat6 = str2.concat(":Padding");
                String strA = am6.a(xmlPullParser, strConcat3);
                String strA2 = am6.a(xmlPullParser, strConcat4);
                String strA3 = am6.a(xmlPullParser, strConcat5);
                String strA4 = am6.a(xmlPullParser, strConcat6);
                if (strA != null && strA2 != null) {
                    qa4 qa4Var = new qa4(strA, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L);
                    int i2 = i + 1;
                    if (objArrCopyOf.length < i2) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i2));
                    }
                    objArrCopyOf[i] = qa4Var;
                    i = i2;
                } else {
                    return k55.f;
                }
            }
        } while (!am6.b(xmlPullParser, strConcat2));
        return oe3.b(i, objArrCopyOf);
    }
}
