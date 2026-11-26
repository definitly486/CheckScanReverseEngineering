package yads;

import defpackage.ta8;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes6.dex */
public final class sl6 {
    public static boolean a(XmlPullParser xmlPullParser, String str, boolean z) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            String lowerCase = attributeValue.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Boolean boolE0 = ta8.e0(lowerCase);
            if (boolE0 != null) {
                return boolE0.booleanValue();
            }
        }
        return z;
    }
}
