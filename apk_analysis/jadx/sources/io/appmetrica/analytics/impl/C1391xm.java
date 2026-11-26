package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1391xm implements Am {
    public volatile C1341vm a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();

    public final void a(Context context) {
        String strOptStringOrNull;
        ProtobufStateStorage<Object> protobufStateStorageCreate = ((AbstractC0981hn) C0929fn.a(C1441zm.class)).create(context);
        Fo foA = Fa.k().D().a();
        synchronized (foA) {
            strOptStringOrNull = JsonUtils.optStringOrNull(foA.a.a(), "device_id");
        }
        a(new C1341vm(strOptStringOrNull, foA.a(), (C1441zm) protobufStateStorageCreate.read()));
    }

    public final void b(Am am) {
        this.b.remove(am);
    }

    public final C1341vm a() {
        C1341vm c1341vm = this.a;
        if (c1341vm != null) {
            return c1341vm;
        }
        aa4.j("startupState");
        throw null;
    }

    public final void a(Am am) {
        this.b.add(am);
        if (this.a != null) {
            C1341vm c1341vm = this.a;
            if (c1341vm != null) {
                am.a(c1341vm);
            } else {
                aa4.j("startupState");
                throw null;
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Am
    public final void a(C1341vm c1341vm) {
        this.a = c1341vm;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((Am) it.next()).a(c1341vm);
        }
    }
}
