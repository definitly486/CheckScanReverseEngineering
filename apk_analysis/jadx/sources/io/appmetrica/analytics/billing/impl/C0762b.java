package io.appmetrica.analytics.billing.impl;

import defpackage.jh2;
import defpackage.kn1;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.billing.impl.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0762b implements ProtobufConverter {
    public final i a;

    public /* synthetic */ C0762b(i iVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new i() : iVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final d fromModel(C0761a c0761a) {
        d dVar = new d();
        List list = c0761a.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.fromModel((BillingInfo) it.next()));
        }
        dVar.a = (c[]) arrayList.toArray(new c[0]);
        dVar.b = c0761a.b;
        return dVar;
    }

    public C0762b(i iVar) {
        this.a = iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0762b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0761a toModel(d dVar) {
        c[] cVarArr = dVar.a;
        ArrayList arrayList = new ArrayList(cVarArr.length);
        for (c cVar : cVarArr) {
            arrayList.add(this.a.toModel(cVar));
        }
        return new C0761a(arrayList, dVar.b);
    }
}
