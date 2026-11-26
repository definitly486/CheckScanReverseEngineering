package yads;

import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class x90 implements yl6 {
    public final zl6 a;
    public final jt3 b;
    public final t90 c;

    public x90(Context context, q84 q84Var) {
        zl6 zl6Var = new zl6();
        jt3 jt3Var = new jt3();
        t90 t90Var = new t90(context, q84Var);
        this.a = zl6Var;
        this.b = jt3Var;
        this.c = t90Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [yads.mt2] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [yads.dm5] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r25v1, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v15, types: [yads.ht3] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String, yads.q86] */
    /* JADX WARN: Type inference failed for: r5v16, types: [yads.r90] */
    /* JADX WARN: Type inference failed for: r5v18, types: [yads.xl6] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r7v15, types: [yads.zc6] */
    /* JADX WARN: Type inference failed for: r7v26, types: [yads.c04] */
    /* JADX WARN: Type inference failed for: r7v29, types: [yads.xl6] */
    /* JADX WARN: Type inference failed for: r7v32, types: [yads.xl6] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // yads.yl6
    public final Object a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, JSONException, IOException {
        ArrayList arrayList;
        List list;
        boolean z;
        ArrayList arrayList2;
        ue6 ue6Var;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        this.a.getClass();
        int i = 2;
        ?? r5 = 0;
        xmlPullParser2.require(2, null, "Creative");
        this.a.getClass();
        String attributeValue = xmlPullParser2.getAttributeValue(null, TtmlNode.ATTR_ID);
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        s90 s90Var = null;
        String str = null;
        ?? dm5Var = 0;
        String strA = null;
        boolean z2 = false;
        int iLongValue = 0;
        while (true) {
            this.a.getClass();
            if (xmlPullParser2.next() == 3) {
                ArrayList arrayList6 = arrayList3;
                ArrayList arrayList7 = arrayList4;
                if (!z2) {
                    return null;
                }
                ArrayList arrayList8 = new ArrayList();
                for (Object obj : arrayList6) {
                    if (obj instanceof zz3) {
                        arrayList8.add(obj);
                    }
                }
                ArrayList arrayList9 = new ArrayList();
                for (Object obj2 : arrayList6) {
                    if (obj2 instanceof nn3) {
                        arrayList9.add(obj2);
                    }
                }
                return new p90(arrayList8, arrayList9, arrayList7, arrayList5, s90Var, str, dm5Var, attributeValue, iLongValue, strA);
            }
            this.a.getClass();
            if (xmlPullParser2.getEventType() == i) {
                String name = xmlPullParser2.getName();
                if ("Linear".equals(name)) {
                    jt3 jt3Var = this.b;
                    jt3Var.a.getClass();
                    xmlPullParser2.require(i, r5, "Linear");
                    jt3Var.d.getClass();
                    String attributeValue2 = xmlPullParser2.getAttributeValue(r5, "skipoffset");
                    if (attributeValue2 == null) {
                        attributeValue2 = "";
                    }
                    dm5Var = attributeValue2.length() > 0 ? new dm5(attributeValue2) : r5;
                    while (true) {
                        jt3Var.a.getClass();
                        if (xmlPullParser2.next() != 3) {
                            jt3Var.a.getClass();
                            if (xmlPullParser2.getEventType() == i) {
                                String name2 = xmlPullParser2.getName();
                                if (name2 != null) {
                                    switch (name2.hashCode()) {
                                        case -2049897434:
                                            if (name2.equals("VideoClicks")) {
                                                yc6 yc6VarA = jt3Var.b.a(xmlPullParser2);
                                                str = yc6VarA.b;
                                                Iterator it = yc6VarA.a.iterator();
                                                while (it.hasNext()) {
                                                    arrayList5.add(new v06("clickTracking", (String) it.next(), r5));
                                                    arrayList3 = arrayList3;
                                                    i = 2;
                                                }
                                            }
                                            break;
                                        case -1927368268:
                                            if (name2.equals("Duration")) {
                                                zl6 zl6Var = jt3Var.c.a;
                                                xmlPullParser2.require(i, r5, "Duration");
                                                Long lA = tc6.a(zl6.a(xmlPullParser2));
                                                iLongValue = lA != null ? (int) lA.longValue() : 0;
                                            }
                                            break;
                                        case -1348833651:
                                            if (name2.equals("AdParameters")) {
                                                jt3Var.a.getClass();
                                                strA = zl6.a(xmlPullParser2);
                                            }
                                            break;
                                        case -385055469:
                                            if (name2.equals("MediaFiles")) {
                                                arrayList3.addAll(jt3Var.e.a(xmlPullParser2, yoVar));
                                                break;
                                            }
                                            arrayList3 = arrayList3;
                                            i = 2;
                                            break;
                                        case 70476538:
                                            if (name2.equals("Icons")) {
                                                arrayList4.addAll(jt3Var.f.a(xmlPullParser2, yoVar));
                                                break;
                                            }
                                            arrayList3 = arrayList3;
                                            i = 2;
                                            break;
                                        case 611554000:
                                            if (name2.equals("TrackingEvents")) {
                                                Iterator it2 = jt3Var.g.a(xmlPullParser2, yoVar).iterator();
                                                while (it2.hasNext()) {
                                                    arrayList5.add((v06) it2.next());
                                                }
                                                break;
                                            }
                                            arrayList3 = arrayList3;
                                            i = 2;
                                            break;
                                        default:
                                            break;
                                    }
                                }
                                jt3Var.a.getClass();
                                zl6.b(xmlPullParser2);
                                arrayList3 = arrayList3;
                                i = 2;
                            }
                            arrayList3 = arrayList3;
                            i = 2;
                        } else {
                            z2 = true;
                            i = 2;
                        }
                    }
                } else {
                    arrayList = arrayList3;
                    if ("CreativeExtensions".equals(name)) {
                        t90 t90Var = this.c;
                        t90Var.a.getClass();
                        xmlPullParser2.require(2, r5, "CreativeExtensions");
                        List listA = defpackage.kx2.b;
                        List listA2 = listA;
                        ?? r11 = r5;
                        ?? r19 = r11;
                        ?? ht3Var = r19;
                        while (true) {
                            t90Var.a.getClass();
                            if (xmlPullParser2.next() != 3) {
                                t90Var.a.getClass();
                                if (xmlPullParser2.getEventType() != 2) {
                                    list = listA;
                                    z = z2;
                                    arrayList2 = arrayList4;
                                } else if ("CreativeExtension".equals(xmlPullParser2.getName())) {
                                    String attributeValue3 = xmlPullParser2.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                                    if ("false_click".equals(attributeValue3)) {
                                        mt2 mt2Var = (mt2) t90Var.d.a(xmlPullParser2, yoVar);
                                        xmlPullParser2 = xmlPullParser2;
                                        r11 = mt2Var;
                                        r19 = r19;
                                    } else if (defpackage.aa4.e(t90.f, attributeValue3)) {
                                        ArrayList arrayListA = t90Var.e.a(xmlPullParser2, yoVar);
                                        xmlPullParser2 = xmlPullParser2;
                                        r11 = r11;
                                        r19 = arrayListA;
                                    } else if (defpackage.aa4.e(t90.g, attributeValue3)) {
                                        it3 it3Var = t90Var.b;
                                        it3Var.getClass();
                                        try {
                                            it3Var.c.getClass();
                                            JSONObject jSONObject = new JSONObject(zl6.a(xmlPullParser2));
                                            Iterator<String> itKeys = jSONObject.keys();
                                            List list2 = listA;
                                            t9 t9Var = null;
                                            while (itKeys.hasNext()) {
                                                boolean z3 = z2;
                                                String next = itKeys.next();
                                                ArrayList arrayList10 = arrayList4;
                                                if ("assets".equals(next)) {
                                                    listA = it3Var.a.a(jSONObject, yoVar);
                                                } else if (DynamicLink.Builder.KEY_LINK.equals(next)) {
                                                    it3Var.d.a(jSONObject.getJSONObject(next), yoVar);
                                                } else if ("settings".equals(next)) {
                                                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                                                    it3Var.b.getClass();
                                                    JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("videoSelection");
                                                    if (jSONObjectOptJSONObject != null) {
                                                        String strOptString = jSONObjectOptJSONObject.optString("preferableMimeType");
                                                        if (strOptString.length() <= 0) {
                                                            strOptString = null;
                                                        }
                                                        ue6Var = new ue6(strOptString, jSONObjectOptJSONObject.optBoolean("inOrderOfList"));
                                                    } else {
                                                        ue6Var = null;
                                                    }
                                                    t9Var = new t9(ue6Var);
                                                }
                                                arrayList4 = arrayList10;
                                                z2 = z3;
                                            }
                                            boolean z4 = z2;
                                            ArrayList arrayList11 = arrayList4;
                                            ht3Var = new ht3(listA, t9Var);
                                            listA = list2;
                                            arrayList4 = arrayList11;
                                            z2 = z4;
                                            xmlPullParser2 = xmlPullParser;
                                        } catch (Exception e) {
                                            throw new JSONException(e.getMessage());
                                        }
                                    } else {
                                        list = listA;
                                        z = z2;
                                        arrayList2 = arrayList4;
                                        if (defpackage.aa4.e(t90.h, attributeValue3)) {
                                            a86 a86Var = t90Var.c;
                                            a86Var.getClass();
                                            try {
                                                a86Var.b.getClass();
                                                listA2 = a86Var.a(zl6.a(xmlPullParser), yoVar.b);
                                            } catch (Exception e2) {
                                                a86Var.a.reportError("Failed to parse DivKit designs from VAST CreativeExtension", e2);
                                                listA2 = list;
                                                listA = listA2;
                                            }
                                        } else {
                                            t90Var.a.getClass();
                                            zl6.b(xmlPullParser);
                                        }
                                    }
                                } else {
                                    list = listA;
                                    z = z2;
                                    arrayList2 = arrayList4;
                                    t90Var.a.getClass();
                                    zl6.b(xmlPullParser);
                                }
                                listA = list;
                                arrayList4 = arrayList2;
                                z2 = z;
                                xmlPullParser2 = xmlPullParser;
                                r11 = r11;
                                r19 = r19;
                            } else {
                                s90Var = new s90(r11, r19, ht3Var, listA2);
                                arrayList3 = arrayList;
                                i = 2;
                                r5 = 0;
                                xmlPullParser2 = xmlPullParser;
                            }
                        }
                    } else {
                        this.a.getClass();
                        zl6.b(xmlPullParser);
                    }
                }
            } else {
                arrayList = arrayList3;
            }
            xmlPullParser2 = xmlPullParser;
            arrayList3 = arrayList;
            arrayList4 = arrayList4;
            z2 = z2;
            i = 2;
            r5 = 0;
        }
    }
}
