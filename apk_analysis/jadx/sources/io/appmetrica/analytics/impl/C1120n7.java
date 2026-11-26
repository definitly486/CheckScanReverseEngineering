package io.appmetrica.analytics.impl;

import java.io.File;
import java.util.ArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1120n7 {
    public final W6 a;
    public final ArrayList b;

    public C1120n7(File file) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        if (file != null) {
            this.a = new Ae(file, new C0784a7());
            arrayList.add(new Ae(file, new C1308ue()));
        } else {
            this.a = new X6(new C0784a7());
        }
        arrayList.add(new X6(new C1308ue()));
    }
}
