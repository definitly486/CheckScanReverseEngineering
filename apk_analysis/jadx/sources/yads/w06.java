package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import defpackage.u96;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class w06 implements yl6 {
    public final zl6 a;
    public final yw5 b;

    public w06() {
        zl6 zl6Var = new zl6();
        ww5[] ww5VarArrValues = ww5.values();
        yw5 yw5Var = new yw5(new HashSet(u96.i(Arrays.copyOf(ww5VarArrValues, ww5VarArrValues.length))));
        this.a = zl6Var;
        this.b = yw5Var;
    }

    public final v06 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.a.getClass();
        xmlPullParser.require(2, null, "Tracking");
        String attributeValue = xmlPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_EVENT);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, TypedValues.CycleType.S_WAVE_OFFSET);
        this.a.getClass();
        String strA = zl6.a(xmlPullParser);
        if (attributeValue == null || attributeValue.length() == 0 || strA.length() <= 0) {
            return null;
        }
        return new v06(attributeValue, strA, attributeValue2 != null ? this.b.a(attributeValue2) : null);
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}
