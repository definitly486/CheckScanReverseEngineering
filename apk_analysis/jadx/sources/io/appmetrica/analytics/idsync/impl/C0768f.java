package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0768f implements ProtobufConverter {
    public final I a = new I();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final p fromModel(C0765c c0765c) {
        p pVar = new p();
        pVar.a = c0765c.a;
        o oVar = new o();
        oVar.a = c0765c.b;
        int size = c0765c.c.size();
        n[] nVarArr = new n[size];
        for (int i = 0; i < size; i++) {
            nVarArr[i] = this.a.fromModel((G) c0765c.c.get(i));
        }
        oVar.b = nVarArr;
        pVar.b = oVar;
        return pVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0765c toModel(p pVar) {
        o oVar = pVar.b;
        if (oVar == null) {
            oVar = new o();
        }
        boolean z = pVar.a;
        long j = oVar.a;
        n[] nVarArr = oVar.b;
        ArrayList arrayList = new ArrayList(nVarArr.length);
        for (n nVar : nVarArr) {
            arrayList.add(this.a.toModel(nVar));
        }
        return new C0765c(z, j, arrayList);
    }
}
