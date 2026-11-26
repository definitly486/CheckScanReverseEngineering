package yads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class x06 {
    public final zl6 a;
    public final w06 b;

    public x06() {
        zl6 zl6Var = new zl6();
        w06 w06Var = new w06();
        this.a = zl6Var;
        this.b = w06Var;
    }

    public final HashMap a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.a.getClass();
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap map = new HashMap();
        while (true) {
            this.a.getClass();
            if (xmlPullParser.next() == 3) {
                return map;
            }
            this.a.getClass();
            if (xmlPullParser.getEventType() == 2) {
                if ("Tracking".equals(xmlPullParser.getName())) {
                    v06 v06VarA = this.b.a(xmlPullParser);
                    if (v06VarA != null) {
                        String str = v06VarA.a;
                        String str2 = v06VarA.b;
                        if (!map.containsKey(str)) {
                            map.put(str, new ArrayList());
                        }
                        List list = (List) map.get(str);
                        if (list != null) {
                            list.add(str2);
                        }
                    }
                } else {
                    this.a.getClass();
                    zl6.b(xmlPullParser);
                }
            }
        }
    }
}
