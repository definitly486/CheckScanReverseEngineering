package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.ArgumentsMerger;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.z5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1424z5 implements InterfaceC1235rj {
    public BaseRequestConfig a;
    public final BaseRequestConfig.RequestConfigLoader b;
    public W5 c;

    public AbstractC1424z5(BaseRequestConfig.RequestConfigLoader<Object, W5> requestConfigLoader, C1341vm c1341vm, ArgumentsMerger<Object, Object> argumentsMerger) {
        this.b = requestConfigLoader;
        Fa.k().v().a(this);
        a(new W5(c1341vm, Fa.k().v(), Fa.k().s(), argumentsMerger));
    }

    public synchronized void a(Object obj) {
        if (!((ArgumentsMerger) this.c.componentArguments).compareWithOtherArguments(obj)) {
            a(new W5(c(), Fa.I.v(), Fa.I.s(), (ArgumentsMerger) ((ArgumentsMerger) this.c.componentArguments).mergeFrom(obj)));
            e();
        }
    }

    public final synchronized ArgumentsMerger<Object, Object> b() {
        return (ArgumentsMerger) this.c.componentArguments;
    }

    public final synchronized C1341vm c() {
        return this.c.a;
    }

    public final void d() {
        synchronized (this) {
            this.a = null;
        }
    }

    public final synchronized void e() {
        this.a = null;
    }

    public final synchronized void a(W5 w5) {
        this.c = w5;
    }

    public final synchronized void a(C1341vm c1341vm) {
        a(new W5(c1341vm, Fa.I.v(), Fa.I.s(), b()));
        e();
    }

    public final synchronized BaseRequestConfig a() {
        BaseRequestConfig baseRequestConfigLoad;
        baseRequestConfigLoad = this.a;
        if (baseRequestConfigLoad == null) {
            baseRequestConfigLoad = this.b.load(this.c);
            this.a = baseRequestConfigLoad;
        }
        return baseRequestConfigLoad;
    }
}
