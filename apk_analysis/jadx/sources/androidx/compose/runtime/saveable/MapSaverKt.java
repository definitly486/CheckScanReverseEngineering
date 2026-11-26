package androidx.compose.runtime.saveable;

import defpackage.ah;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.ul4;
import defpackage.vl4;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MapSaverKt {
    public static final <T> Saver<T, Object> mapSaver(bm3<? super SaverScope, ? super T, ? extends Map<String, ? extends Object>> bm3Var, nl3<? super Map<String, ? extends Object>, ? extends T> nl3Var) {
        return ListSaverKt.listSaver(new ul4(bm3Var, 1), new vl4(nl3Var, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List mapSaver$lambda$0(bm3 bm3Var, SaverScope saverScope, Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) bm3Var.invoke(saverScope, obj)).entrySet()) {
            arrayList.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object mapSaver$lambda$1(nl3 nl3Var, List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list.size() % 2 != 0) {
            ah.f("non-zero remainder");
            return null;
        }
        for (int i = 0; i < list.size(); i += 2) {
            Object obj = list.get(i);
            obj.getClass();
            linkedHashMap.put((String) obj, list.get(i + 1));
        }
        return nl3Var.invoke(linkedHashMap);
    }
}
