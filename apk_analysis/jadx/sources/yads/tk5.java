package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class tk5 implements yl6 {
    public tk5(zl6 zl6Var) {
    }

    public final qs2 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extension");
        String attributeValue = xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        String strA = zl6.a(xmlPullParser);
        if (attributeValue == null || attributeValue.length() == 0 || strA.length() <= 0) {
            return null;
        }
        return new qs2(attributeValue, strA);
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}
