package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tapjoy.TJAdUnitConstants;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class db3 implements yl6 {
    @Override // yads.yl6
    public final Object a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        int i;
        ya3 ya3Var;
        bb3 bb3Var = null;
        xmlPullParser.require(2, null, "Icon");
        String attributeValue = xmlPullParser.getAttributeValue(null, "program");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.HEIGHT);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, TJAdUnitConstants.String.WIDTH);
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "xPosition");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "yPosition");
        xmlPullParser.getAttributeValue(null, "apiFramework");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, TypedValues.CycleType.S_WAVE_OFFSET);
        String attributeValue7 = xmlPullParser.getAttributeValue(null, TypedValues.TransitionType.S_DURATION);
        while (true) {
            i = 0;
            if (xmlPullParser.next() == 3) {
                break;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                ab3.c.getClass();
                ab3[] ab3VarArrValues = ab3.values();
                int length = ab3VarArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        zl6.b(xmlPullParser);
                        break;
                    }
                    if (defpackage.aa4.e(ab3VarArrValues[i2].b, name)) {
                        zl6.a(xmlPullParser);
                        ab3[] ab3VarArrValues2 = ab3.values();
                        int length2 = ab3VarArrValues2.length;
                        while (i < length2 && !defpackage.aa4.e(ab3VarArrValues2[i].b, name)) {
                            i++;
                        }
                        break;
                    }
                    i2++;
                }
            }
        }
        tc6.b(attributeValue2);
        tc6.b(attributeValue3);
        ya3[] ya3VarArrValues = ya3.values();
        int length3 = ya3VarArrValues.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length3) {
                ya3Var = null;
                break;
            }
            ya3Var = ya3VarArrValues[i3];
            if (defpackage.aa4.e(ya3Var.b, attributeValue4)) {
                break;
            }
            i3++;
        }
        if (ya3Var == null) {
            ya3Var = ya3.ICON_HORIZONTAL_POSITION_LEFT_OFFSET;
        }
        if (ya3Var == ya3.ICON_HORIZONTAL_POSITION_LEFT_OFFSET) {
            tc6.b(attributeValue4);
        }
        bb3[] bb3VarArrValues = bb3.values();
        int length4 = bb3VarArrValues.length;
        while (i < length4) {
            bb3 bb3Var2 = bb3VarArrValues[i];
            if (defpackage.aa4.e(bb3Var2.b, attributeValue5)) {
                bb3Var = bb3Var2;
                break;
            }
            i++;
        }
        if (bb3Var == null) {
            bb3Var = bb3.ICON_VERTICAL_POSITION_TOP_OFFSET;
        }
        if (bb3Var == bb3.ICON_VERTICAL_POSITION_TOP_OFFSET) {
            tc6.b(attributeValue5);
        }
        tc6.a(attributeValue6);
        tc6.a(attributeValue7);
        return new cb3(attributeValue);
    }
}
