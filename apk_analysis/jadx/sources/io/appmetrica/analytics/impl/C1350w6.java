package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1350w6 implements InterfaceC0917fb {
    public final C1375x6 a;
    public final Mh b;

    public C1350w6(C1375x6 c1375x6) {
        this.a = c1375x6;
        this.b = c1375x6.a();
        C1169p4.l().getClass();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(AppMetricaConfig appMetricaConfig) {
        Map<String, String> map = appMetricaConfig.errorEnvironment;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                Mh mh = this.b;
                String key = entry.getKey();
                String value = entry.getValue();
                synchronized (mh) {
                    try {
                        O8 o8 = mh.c;
                        Kl kl = o8.b;
                        Sc sc = o8.a;
                        if (sc != null) {
                            String strTrim = kl.a.getKeyTrimmer().trim(key);
                            String strTrim2 = kl.a.getValueTrimmer().trim(value);
                            if (sc.containsKey(strTrim)) {
                                String str = (String) sc.get(strTrim);
                                if (strTrim2 == null || !strTrim2.equals(str)) {
                                    kl.a(sc, strTrim, strTrim2);
                                }
                            } else if (strTrim2 != null) {
                                kl.a(sc, strTrim, strTrim2);
                            }
                        } else {
                            kl.getClass();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0917fb
    public final void a(C0853co c0853co) {
        Ei ei = this.a.a;
        Ch chA = ei.a(c0853co, this.b);
        Mh mh = chA.e;
        InterfaceC0928fm interfaceC0928fm = ei.e;
        if (interfaceC0928fm != null) {
            mh.b.setUuid(((C0902em) interfaceC0928fm).g());
        } else {
            mh.getClass();
        }
        ei.c.b(chA);
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Unhandled exception received: " + c0853co, new Object[0]);
    }
}
