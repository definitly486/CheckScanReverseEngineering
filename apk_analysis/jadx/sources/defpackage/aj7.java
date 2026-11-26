package defpackage;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class aj7<T> extends k1<T> {
    public final zk1 a;
    public List<? extends Annotation> b;
    public final cl4 c;
    public final Map<ne4<? extends T>, df4<? extends T>> d;
    public final LinkedHashMap e;

    public aj7() {
        throw null;
    }

    public aj7(String str, zk1 zk1Var, ne4[] ne4VarArr, df4[] df4VarArr) {
        this.a = zk1Var;
        this.b = kx2.b;
        this.c = nm4.a(po4.PUBLICATION, new wh0(2, str, this));
        if (ne4VarArr.length != df4VarArr.length) {
            bg.h(zk1Var.f(), "All subclasses of sealed class ", " should be marked @Serializable");
            throw null;
        }
        int iMin = Math.min(ne4VarArr.length, df4VarArr.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(new b36(ne4VarArr[i], df4VarArr[i]));
        }
        Map<ne4<? extends T>, df4<? extends T>> mapK = n05.k(arrayList);
        this.d = mapK;
        Set<Map.Entry<ne4<? extends T>, df4<? extends T>>> setEntrySet = mapK.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strH = ((df4) entry.getValue()).getDescriptor().h();
            Object obj = linkedHashMap.get(strH);
            if (obj == null) {
                linkedHashMap.containsKey(strH);
            }
            Map.Entry entry2 = (Map.Entry) obj;
            if (entry2 != null) {
                StringBuilder sb = new StringBuilder("Multiple sealed subclasses of '");
                sb.append(this.a);
                sb.append("' have the same serial name '");
                sb.append(strH);
                sb.append("': '");
                sb.append(entry2.getKey());
                Object key = entry.getKey();
                sb.append("', '");
                sb.append(key);
                sb.append('\'');
                throw new IllegalStateException(sb.toString().toString());
            }
            linkedHashMap.put(strH, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(m05.b(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (df4) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.e = linkedHashMap2;
    }

    @Override // defpackage.k1
    public final xl2<T> a(du1 du1Var, String str) {
        df4 df4Var = (df4) this.e.get(str);
        return df4Var != null ? df4Var : du1Var.getSerializersModule().d(c(), str);
    }

    @Override // defpackage.k1
    public final xp7<T> b(ux2 ux2Var, T t) {
        t.getClass();
        df4<? extends T> df4Var = this.d.get(x07.a(t.getClass()));
        df4<? extends T> df4VarB = df4Var != null ? df4Var : super.b(ux2Var, t);
        if (df4VarB != null) {
            return df4VarB;
        }
        return null;
    }

    @Override // defpackage.k1
    public final ne4<T> c() {
        return this.a;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) this.c.getValue();
    }
}
