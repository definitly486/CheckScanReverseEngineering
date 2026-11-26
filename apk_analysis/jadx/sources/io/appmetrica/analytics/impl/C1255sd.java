package io.appmetrica.analytics.impl;

import defpackage.b36;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleServiceEventHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1255sd extends Ug {
    public final ArrayList b;

    public C1255sd(C0989i5 c0989i5) {
        super(c0989i5);
        String strB = c0989i5.a().b();
        strB = strB == null ? "empty" : strB;
        String.format("[ModulesEventHandler-%s]", Arrays.copyOf(new Object[]{strB}, 1));
        LinkedHashMap linkedHashMapA = Fa.k().o().a(strB);
        ArrayList arrayList = new ArrayList(linkedHashMapA.size());
        for (Map.Entry entry : linkedHashMapA.entrySet()) {
            arrayList.add(new b36(entry.getValue(), new C0919fd(c0989i5, (String) entry.getKey())));
        }
        this.b = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        ArrayList<b36> arrayList;
        if (this.a.t.c() && ((arrayList = this.b) == null || !arrayList.isEmpty())) {
            for (b36 b36Var : arrayList) {
                ModuleServiceEventHandler moduleServiceEventHandler = (ModuleServiceEventHandler) b36Var.b;
                C0919fd c0919fd = (C0919fd) b36Var.c;
                if (moduleServiceEventHandler.handle(new C0997id(c0919fd.b, c0919fd.a, new C0971hd(c0919fd.e, c0919fd.d, c0919fd.c, c0783a6)), c0783a6)) {
                    return true;
                }
            }
        }
        return false;
    }
}
