package yads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class zl6 {
    public static String a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String text;
        if (xmlPullParser.next() == 4) {
            text = xmlPullParser.getText();
            xmlPullParser.nextTag();
        } else {
            text = "";
        }
        int length = text.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = defpackage.aa4.f(text.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return text.subSequence(i, length + 1).toString();
    }

    public static void b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            defpackage.ah.f("Check failed.");
            return;
        }
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
