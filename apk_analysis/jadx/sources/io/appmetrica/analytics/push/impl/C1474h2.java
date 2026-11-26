package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.commands.PushTokenCommandInfo;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.provider.api.PushServiceController;
import java.util.ArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1474h2 implements C {
    public final C1528z0 a;
    public final C1525y0 b;
    public final v2 c;

    public C1474h2(C1528z0 c1528z0, C1525y0 c1525y0, v2 v2Var) {
        this.a = c1528z0;
        this.b = c1525y0;
        this.c = v2Var;
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
    @Override // io.appmetrica.analytics.push.impl.C
    public final void a(Context context, Bundle bundle) {
        PushTokenCommandInfo pushTokenCommandInfoFromBundle;
        PushServiceController pushServiceController;
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.info("Trying to get tokens", new Object[0]);
        if (!r.a(context).g()) {
            publicLogger.warning("Failed to send push token. AppMetricaPush is not activated", new Object[0]);
            TrackersHub.getInstance().reportEvent("Failed to send push token. AppMetricaPush is not activated");
            return;
        }
        this.a.getClass();
        Bundle bundle2 = bundle.getBundle("io.appmetrica.analytics.push.extra.EXTRA_INFO");
        t2 t2Var = null;
        token = null;
        String token = null;
        if (bundle2 == null || (pushTokenCommandInfoFromBundle = PushTokenCommandInfo.Companion.fromBundle(bundle2)) == null) {
            publicLogger.warning("Failed to get token event from bundle " + bundle, new Object[0]);
            TrackersHub.getInstance().reportEvent("Failed to get token event from bundle " + bundle);
        } else {
            String token2 = pushTokenCommandInfoFromBundle.getToken();
            if (token2 == null) {
                C1450b2 c1450b2 = r.a(context).d;
                if (c1450b2 != null && (pushServiceController = (PushServiceController) c1450b2.b.get(pushTokenCommandInfoFromBundle.getProvider())) != null) {
                    token = pushServiceController.getToken();
                }
            } else {
                token = token2;
            }
            t2Var = new t2(pushTokenCommandInfoFromBundle.getProvider(), token, pushTokenCommandInfoFromBundle.getForce());
        }
        if (t2Var == null) {
            publicLogger.warning("Failed to send push token. Token event is null", new Object[0]);
            return;
        }
        this.b.getClass();
        u2[] u2VarArr = {new V0(), new C1463f(new C1477i1(r.a(context).e), new C1454c2(r.a(context).d))};
        ArrayList arrayList = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            arrayList.add(u2VarArr[i].a());
        }
        arrayList.toString();
        publicLogger.info("Found token " + t2Var.a + ": " + t2Var.b, new Object[0]);
        for (int i2 = 0; i2 < 2; i2++) {
            u2 u2Var = u2VarArr[i2];
            boolean zA = u2Var.a(t2Var);
            PublicLogger.INSTANCE.info(u2Var.a() + " provider: " + t2Var.a + ", shouldSend: " + zA, new Object[0]);
            if (zA) {
                publicLogger.info("Processing token " + t2Var.a + ": " + t2Var.b, new Object[0]);
                this.c.a(context, t2Var);
                return;
            }
        }
        publicLogger.info("Skipping token " + t2Var.a + ": " + t2Var.b, new Object[0]);
    }
}
