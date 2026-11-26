package yads;

import android.util.Base64;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.qa8;
import defpackage.ta8;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class on3 implements yl6 {
    public final nn3 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        Integer numO;
        Integer numO2;
        xmlPullParser.require(2, null, "InteractiveCreativeFile");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (attributeValue2 != null && (attributeValue = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT)) != null && (numO = qa8.o(10, attributeValue)) != null) {
            int iIntValue = numO.intValue();
            String attributeValue3 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
            if (attributeValue3 != null && (numO2 = qa8.o(10, attributeValue3)) != null) {
                int iIntValue2 = numO2.intValue();
                String strA = zl6.a(xmlPullParser);
                if (ta8.D(attributeValue2, TJAdUnitConstants.String.HTML, false) != (strA.length() > 0)) {
                    strA = null;
                }
                String str = strA != null ? new String(Base64.decode(strA, 0), StandardCharsets.UTF_8) : null;
                if (str != null) {
                    return new nn3(iIntValue, iIntValue2, str, attributeValue2);
                }
            }
        }
        return null;
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}
