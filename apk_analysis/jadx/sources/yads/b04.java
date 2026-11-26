package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.qa8;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class b04 implements yl6 {
    public final zz3 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        yz3 yz3Var;
        Integer numO;
        Integer numO2;
        Integer numO3;
        xmlPullParser.require(2, null, "MediaFile");
        String attributeValue = xmlPullParser.getAttributeValue(null, "delivery");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
        String attributeValue4 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "bitrate");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "apiFramework");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "codec");
        String attributeValue9 = xmlPullParser.getAttributeValue(null, "vmaf");
        String strA = zl6.a(xmlPullParser);
        yz3[] yz3VarArrValues = yz3.values();
        int length = yz3VarArrValues.length;
        int iIntValue = 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                yz3Var = null;
                break;
            }
            yz3Var = yz3VarArrValues[i];
            if (defpackage.aa4.e(yz3Var.b, attributeValue)) {
                break;
            }
            i++;
        }
        int iIntValue2 = (attributeValue3 == null || (numO3 = qa8.o(10, attributeValue3)) == null) ? 0 : numO3.intValue();
        int iIntValue3 = (attributeValue4 == null || (numO2 = qa8.o(10, attributeValue4)) == null) ? 0 : numO2.intValue();
        if (attributeValue5 != null && (numO = qa8.o(10, attributeValue5)) != null) {
            iIntValue = numO.intValue();
        }
        return new zz3(strA, attributeValue7, yz3Var, attributeValue2, attributeValue8, attributeValue9 != null ? qa8.n(attributeValue9) : null, iIntValue2, iIntValue3, iIntValue, attributeValue6);
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}
