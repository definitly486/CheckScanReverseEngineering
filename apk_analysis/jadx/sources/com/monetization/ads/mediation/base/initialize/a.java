package com.monetization.ads.mediation.base.initialize;

import android.content.Context;
import defpackage.a32;
import defpackage.ah;
import defpackage.f02;
import defpackage.j59;
import defpackage.r57;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import yads.bf5;
import yads.bt;
import yads.h34;
import yads.i34;
import yads.r44;
import yads.u44;
import yads.vy4;
import yads.x54;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public static final AtomicBoolean g = new AtomicBoolean(true);
    public static final AtomicBoolean h = new AtomicBoolean(true);
    public final bf5 a;
    public final bt b;
    public final vy4 c;
    public final r44 d;
    public final i34 e;
    public final h34 f;

    public a(bf5 bf5Var) {
        bt btVar = new bt();
        vy4 vy4Var = new vy4();
        r44 r44Var = new r44();
        i34 i34Var = new i34(r44Var);
        h34 h34Var = new h34(r44Var);
        this.a = bf5Var;
        this.b = btVar;
        this.c = vy4Var;
        this.d = r44Var;
        this.e = i34Var;
        this.f = h34Var;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, x54 x54Var, f02 f02Var) {
        u44 u44Var;
        if (f02Var instanceof u44) {
            u44Var = (u44) f02Var;
            int i = u44Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                u44Var.e = i - Integer.MIN_VALUE;
            } else {
                u44Var = new u44(this, f02Var);
            }
        } else {
            u44Var = new u44(this, f02Var);
        }
        Object objInitialize = u44Var.c;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = u44Var.e;
        MediatedAdapterInitializationResult mediatedAdapterInitializationResult = null;
        if (i2 == 0) {
            r57.b(objInitialize);
            String strB = this.d.b(x54Var);
            MediatedAdapterInitializer mediatedAdapterInitializerA = this.f.a(context, x54Var, this.a);
            if (mediatedAdapterInitializerA != null) {
                Map<String, String> mapD = x54Var.d();
                u44Var.b = strB;
                u44Var.e = 1;
                objInitialize = mediatedAdapterInitializerA.initialize(context, mapD, u44Var);
                if (objInitialize == a32Var) {
                    return a32Var;
                }
            }
            if (mediatedAdapterInitializationResult instanceof MediatedAdapterInitializationResult.Failure) {
                MediatedAdapterInitializationResult.Failure failure = (MediatedAdapterInitializationResult.Failure) mediatedAdapterInitializationResult;
                failure.getErrorCode();
                failure.getErrorMessage();
            }
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(objInitialize);
        mediatedAdapterInitializationResult = (MediatedAdapterInitializationResult) objInitialize;
        if (mediatedAdapterInitializationResult instanceof MediatedAdapterInitializationResult.Failure) {
            MediatedAdapterInitializationResult.Failure failure2 = (MediatedAdapterInitializationResult.Failure) mediatedAdapterInitializationResult;
            failure2.getErrorCode();
            failure2.getErrorMessage();
        }
        return j59.a;
    }
}
