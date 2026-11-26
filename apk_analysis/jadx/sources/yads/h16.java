package yads;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class h16 {
    public final ea a;
    public final e4 b;
    public final d9 c;
    public final b00 d;
    public final e40 e;

    public h16(ea eaVar, e4 e4Var, d9 d9Var) {
        b00 b00Var = new b00();
        e40 e40Var = new e40();
        this.a = eaVar;
        this.b = e4Var;
        this.c = d9Var;
        this.d = b00Var;
        this.e = e40Var;
    }

    public final void a(List list, zz zzVar, Map map) {
        h75 h75VarA = this.e.a(this.b, this.c);
        this.d.getClass();
        Map mapSingletonMap = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
        mapSingletonMap.getClass();
        LinkedHashMap linkedHashMapG = defpackage.n05.g(mapSingletonMap, map);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.a.a((String) it.next(), i16.CLICK, linkedHashMapG, h75VarA);
            }
        }
    }
}
