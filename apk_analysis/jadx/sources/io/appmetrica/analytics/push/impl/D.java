package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.coreutils.internal.commands.Commands;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class D {
    public final HashMap a;

    public D() {
        HashMap map = new HashMap();
        this.a = map;
        map.put(Commands.InitPushService.COMMAND_ACTION, new O0());
        map.put(Commands.SendPushToken.INIT_PUSH_TOKEN_COMMAND_ACTION, new C1474h2(new C1528z0(), new C1525y0(), new P0()));
        map.put(Commands.SendPushToken.UPDATE_PUSH_TOKEN_COMMAND_ACTION, new G(new C1474h2(new C1528z0(), new C1525y0(), new E2()), new C1478i2()));
        map.put(Commands.ProcessPush.COMMAND_ACTION, new G(new M1(), new N1()));
        map.put(Commands.SendPushToken.SEND_PUSH_TOKEN_ON_REFRESH_COMMAND_ACTION, new G(new C1474h2(new C1528z0(), new C1525y0(), new E2()), new C1478i2()));
        map.put(Commands.SendPushToken.SEND_PUSH_TOKEN_MANUALLY_COMMAND_ACTION, new C1474h2(new C1528z0(), new C1525y0(), new E2()));
        map.put(Commands.UpdateSystemInfo.COMMAND_ACTION, new D2(new C1522x0(), new C1519w0()));
    }
}
