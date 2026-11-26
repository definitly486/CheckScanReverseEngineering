package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yq3 {
    public static final l66 a = new defpackage.dq(7);

    public static void a(String str, LinkedHashMap linkedHashMap, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, LinkedHashMap linkedHashMap2) throws ic0 {
        ArrayList arrayList;
        if (linkedHashSet.contains(str)) {
            List listT0 = defpackage.qn1.t0(linkedHashSet);
            StringBuilder sb = new StringBuilder();
            int size = listT0.size();
            for (int iIndexOf = listT0.indexOf(str); iIndexOf < size; iIndexOf++) {
                sb.append((String) listT0.get(iIndexOf));
                sb.append(" -> ");
            }
            sb.append(str);
            throw new ic0(sb.toString());
        }
        if (linkedHashSet2.contains(str)) {
            return;
        }
        List list = (List) linkedHashMap.get(str);
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (linkedHashMap.containsKey((String) obj)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            linkedHashSet.add(str);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((String) it.next(), linkedHashMap, linkedHashSet, linkedHashSet2, linkedHashMap2);
            }
            linkedHashSet.remove(str);
        }
        linkedHashSet2.add(str);
        Iterable iterable = arrayList;
        if (arrayList == null) {
            iterable = defpackage.kx2.b;
        }
        linkedHashMap2.put(str, defpackage.qn1.y0(iterable));
    }

    public static LinkedHashMap a(ht1 ht1Var, JSONObject jSONObject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(jSONObject.length());
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                ArrayList arrayList = new ArrayList();
                a(ht1Var, (JSONObject) obj, true, arrayList);
                linkedHashMap.put(next, arrayList);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            a((String) it.next(), linkedHashMap, linkedHashSet, linkedHashSet2, linkedHashMap2);
        }
        return linkedHashMap2;
    }

    public static void a(ht1 ht1Var, JSONObject jSONObject, boolean z, ArrayList arrayList) throws JSONException {
        String str;
        if (z) {
            str = (String) wq3.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, uq3.b, a);
        } else {
            str = (String) wq3.a(ht1Var, jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, uq3.b, a);
        }
        if (str != null) {
            arrayList.add(str);
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            Object obj = jSONObject.get(itKeys.next());
            if (obj instanceof JSONObject) {
                a(ht1Var, (JSONObject) obj, false, arrayList);
            }
        }
        Iterator<String> itKeys2 = jSONObject.keys();
        while (itKeys2.hasNext()) {
            Object obj2 = jSONObject.get(itKeys2.next());
            if (obj2 instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj2;
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    Object obj3 = jSONArray.get(i);
                    if (obj3 instanceof JSONObject) {
                        a(ht1Var, (JSONObject) obj3, false, arrayList);
                    }
                }
            }
        }
    }

    public static final boolean a(String str) {
        return str.length() > 0;
    }
}
