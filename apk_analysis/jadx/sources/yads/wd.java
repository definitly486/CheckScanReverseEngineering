package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class wd extends pg8 implements defpackage.bm3 {
    public Object b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ yd e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd(yd ydVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = ydVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        wd wdVar = new wd(this.e, e02Var);
        wdVar.d = obj;
        return wdVar;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        wd wdVar = new wd(this.e, (defpackage.e02) obj2);
        wdVar.d = (defpackage.y22) obj;
        return wdVar.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0096  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.mk2 mk2Var;
        defpackage.mk2 mk2Var2;
        id idVar;
        defpackage.mk2 mk2Var3;
        id idVar2;
        Object objZ;
        id idVar3;
        gd gdVar;
        boolean z;
        String str;
        boolean z2;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.c;
        if (i == 0) {
            r57.b(obj);
            defpackage.y22 y22Var = (defpackage.y22) this.d;
            defpackage.nk2 nk2VarA = defpackage.av0.a(y22Var, null, null, new ud(this.e, null), 3);
            defpackage.nk2 nk2VarA2 = defpackage.av0.a(y22Var, null, null, new vd(this.e, null), 3);
            defpackage.nk2 nk2VarA3 = defpackage.av0.a(y22Var, null, null, new td(this.e, null), 3);
            this.d = nk2VarA2;
            this.b = nk2VarA3;
            this.c = 1;
            Object objU = nk2VarA.u(this);
            if (objU != a32Var) {
                mk2Var = nk2VarA3;
                obj = objU;
                mk2Var2 = nk2VarA2;
            }
            return a32Var;
        }
        if (i == 1) {
            mk2Var = (defpackage.mk2) this.b;
            mk2Var2 = (defpackage.mk2) this.d;
            r57.b(obj);
        } else {
            if (i == 2) {
                idVar = (id) this.b;
                mk2Var3 = (defpackage.mk2) this.d;
                r57.b(obj);
                idVar2 = (id) obj;
                this.d = idVar;
                this.b = idVar2;
                this.c = 3;
                objZ = mk2Var3.Z(this);
                if (objZ != a32Var) {
                    idVar3 = idVar2;
                    obj = objZ;
                }
                return a32Var;
            }
            if (i != 3) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            idVar3 = (id) this.b;
            idVar = (id) this.d;
            r57.b(obj);
        }
        String str2 = (String) obj;
        gdVar = this.e.d;
        gdVar.getClass();
        z = false;
        if (idVar != null && (str = idVar.a) != null) {
            synchronized (gd.b) {
                String strC = ((av3) gdVar.a).c("google_advertising_id_key");
                z2 = strC == null && !str.equals(strC);
            }
            z = z2;
        }
        this.e.d.a(idVar, idVar3, str2);
        return new kd(idVar, idVar3, z, str2);
        id idVar4 = (id) obj;
        this.d = mk2Var;
        this.b = idVar4;
        this.c = 2;
        Object objZ2 = mk2Var2.Z(this);
        if (objZ2 != a32Var) {
            defpackage.mk2 mk2Var4 = mk2Var;
            idVar = idVar4;
            obj = objZ2;
            mk2Var3 = mk2Var4;
            idVar2 = (id) obj;
            this.d = idVar;
            this.b = idVar2;
            this.c = 3;
            objZ = mk2Var3.Z(this);
            if (objZ != a32Var) {
                idVar3 = idVar2;
                obj = objZ;
                String str3 = (String) obj;
                gdVar = this.e.d;
                gdVar.getClass();
                z = false;
                if (idVar != null) {
                    synchronized (gd.b) {
                        String strC2 = ((av3) gdVar.a).c("google_advertising_id_key");
                        if (strC2 == null) {
                        }
                        z = z2;
                    }
                }
                this.e.d.a(idVar, idVar3, str3);
                return new kd(idVar, idVar3, z, str3);
            }
        }
        return a32Var;
    }
}
