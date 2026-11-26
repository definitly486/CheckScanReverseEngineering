package com.google.android.gms.internal.measurement;

import androidx.collection.SimpleArrayMap;
import com.google.common.collect.n;
import defpackage.ah;
import defpackage.o8;

/* JADX INFO: loaded from: classes4.dex */
public class zzwl {
    public static final zzwj d = zzwj.zza(Boolean.class);
    public final zzwl a;
    public final SimpleArrayMap b;
    public boolean c = false;

    public /* synthetic */ zzwl(zzwl zzwlVar, SimpleArrayMap simpleArrayMap) {
        if (zzwlVar != null) {
            o8.e(zzwlVar.c);
        }
        this.a = zzwlVar;
        this.b = simpleArrayMap;
    }

    public static zzwl a(zzwl zzwlVar, zzwl zzwlVar2) {
        if (zzwlVar.zzc()) {
            return zzwlVar2;
        }
        if (zzwlVar2.zzc()) {
            return zzwlVar;
        }
        n<zzwl> nVarM = n.m(2, zzwlVar, zzwlVar2);
        if (nVarM.isEmpty()) {
            return i.e;
        }
        if (nVarM.size() == 1) {
            return (zzwl) nVarM.iterator().next();
        }
        int size = 0;
        for (zzwl zzwlVar3 : nVarM) {
            do {
                size += zzwlVar3.b.size();
                zzwlVar3 = zzwlVar3.a;
            } while (zzwlVar3 != null);
        }
        if (size == 0) {
            return i.e;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap(size);
        for (zzwl zzwlVar4 : nVarM) {
            do {
                int i = 0;
                while (true) {
                    SimpleArrayMap simpleArrayMap2 = zzwlVar4.b;
                    if (i >= simpleArrayMap2.size()) {
                        break;
                    }
                    o8.h(simpleArrayMap.put((zzwj) simpleArrayMap2.keyAt(i), simpleArrayMap2.valueAt(i)) == null, "Duplicate bindings: %s", simpleArrayMap2.keyAt(i));
                    i++;
                }
                zzwlVar4 = zzwlVar4.a;
            } while (zzwlVar4 != null);
        }
        return new i(null, simpleArrayMap).b();
    }

    public final zzwl b() {
        if (this.c) {
            ah.f("Already frozen");
            return null;
        }
        this.c = true;
        zzwl zzwlVar = this.a;
        return (zzwlVar == null || !this.b.isEmpty()) ? this : zzwlVar;
    }

    public final boolean c(zzwj zzwjVar) {
        if (this.b.containsKey(zzwjVar)) {
            return true;
        }
        zzwl zzwlVar = this.a;
        return zzwlVar != null && zzwlVar.c(zzwjVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (zzwl zzwlVar = this; zzwlVar != null; zzwlVar = zzwlVar.a) {
            for (int i = 0; i < zzwlVar.b.size(); i++) {
                sb.append("[");
                sb.append(this.b.valueAt(i));
                sb.append("], ");
            }
        }
        sb.append(">");
        return sb.toString();
    }

    public final boolean zzc() {
        return this == i.e;
    }
}
