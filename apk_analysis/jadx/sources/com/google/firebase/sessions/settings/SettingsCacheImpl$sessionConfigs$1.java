package com.google.firebase.sessions.settings;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ue3;
import defpackage.y22;

/* JADX INFO: loaded from: classes4.dex */
@bd2(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$sessionConfigs$1", f = "SettingsCache.kt", l = {64}, m = "invokeSuspend")
public final class SettingsCacheImpl$sessionConfigs$1 extends pg8 implements bm3<y22, e02<? super SessionConfigs>, Object> {
    int label;
    final /* synthetic */ SettingsCacheImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCacheImpl$sessionConfigs$1(SettingsCacheImpl settingsCacheImpl, e02<? super SettingsCacheImpl$sessionConfigs$1> e02Var) {
        super(2, e02Var);
        this.this$0 = settingsCacheImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SettingsCacheImpl$sessionConfigs$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super SessionConfigs> e02Var) {
        return ((SettingsCacheImpl$sessionConfigs$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        hd3 data = this.this$0.sessionConfigsDataStore.getData();
        this.label = 1;
        Object objA = ue3.a(data, this);
        return objA == a32Var ? a32Var : objA;
    }
}
