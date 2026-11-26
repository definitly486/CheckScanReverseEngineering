package com.google.firebase.sessions.settings;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$removeConfigs$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
public final class SettingsCacheImpl$removeConfigs$2 extends pg8 implements bm3<SessionConfigs, e02<? super SessionConfigs>, Object> {
    int label;

    public SettingsCacheImpl$removeConfigs$2(e02<? super SettingsCacheImpl$removeConfigs$2> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SettingsCacheImpl$removeConfigs$2(e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(SessionConfigs sessionConfigs, e02<? super SessionConfigs> e02Var) {
        return ((SettingsCacheImpl$removeConfigs$2) create(sessionConfigs, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return SessionConfigsSerializer.INSTANCE.getDefaultValue();
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
