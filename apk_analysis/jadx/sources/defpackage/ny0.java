package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ny0 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(um5 um5Var, f02 f02Var) {
        ly0 ly0Var;
        bu0 bu0Var;
        if (f02Var instanceof ly0) {
            ly0Var = (ly0) f02Var;
            int i = ly0Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ly0Var.n = i - Integer.MIN_VALUE;
            } else {
                ly0Var = new ly0(f02Var);
            }
        } else {
            ly0Var = new ly0(f02Var);
        }
        Object obj = ly0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ly0Var.n;
        if (i2 == 0) {
            r57.b(obj);
            bu0 bu0Var2 = new bu0();
            ly0Var.l = bu0Var2;
            ly0Var.n = 1;
            if (um5Var.a() == a32Var) {
                return a32Var;
            }
            bu0Var = bu0Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            bu0Var = ly0Var.l;
            r57.b(obj);
        }
        return bu0Var.i(bu0Var.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final vm5 b(z47 z47Var) {
        wu0 wu0VarL;
        int i = z47Var.e;
        long j = z47Var.l;
        long j2 = z47Var.m;
        jv3 jv3Var = z47Var.g;
        pm5.a aVar = new pm5.a();
        Iterator<b36<? extends String, ? extends String>> it = jv3Var.iterator();
        while (true) {
            jr jrVar = (jr) it;
            if (!jrVar.hasNext()) {
                break;
            }
            b36 b36Var = (b36) jrVar.next();
            aVar.a((String) b36Var.b, (String) b36Var.c);
        }
        pm5 pm5Var = new pm5(n05.l(aVar.a));
        b57 b57Var = z47Var.h;
        return new vm5(i, j, j2, pm5Var, (b57Var == null || (wu0VarL = b57Var.L()) == null) ? null : new b58(wu0VarL), z47Var);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008f  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ab A[LOOP:1: B:30:0x00a5->B:32:0x00ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(tm5 tm5Var, f02 f02Var) {
        my0 my0Var;
        b37.a aVar;
        String str;
        b37.a aVar2;
        b37.a aVar3;
        tm5 tm5Var2;
        String str2;
        jv3.a aVar4;
        String key;
        Iterator<String> it;
        if (f02Var instanceof my0) {
            my0Var = (my0) f02Var;
            int i = my0Var.q;
            if ((i & Integer.MIN_VALUE) != 0) {
                my0Var.q = i - Integer.MIN_VALUE;
            } else {
                my0Var = new my0(f02Var);
            }
        } else {
            my0Var = new my0(f02Var);
        }
        Object obj = my0Var.p;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = my0Var.q;
        e37 e37Var = null;
        if (i2 == 0) {
            r57.b(obj);
            aVar = new b37.a();
            aVar.e(tm5Var.a);
            String str3 = tm5Var.b;
            um5 um5Var = tm5Var.d;
            if (um5Var != null) {
                my0Var.l = tm5Var;
                my0Var.m = aVar;
                my0Var.n = aVar;
                my0Var.o = str3;
                my0Var.q = 1;
                Object objA = a(um5Var, my0Var);
                if (objA == a32Var) {
                    return a32Var;
                }
                aVar3 = aVar;
                obj = objA;
                tm5Var2 = tm5Var;
                str2 = str3;
                aVar2 = aVar3;
            } else {
                str = str3;
                aVar2 = aVar;
            }
            String str4 = str;
            tm5Var2 = tm5Var;
            str2 = str4;
            aVar3 = aVar;
            aVar3.c(str2, e37Var);
            pm5 pm5Var = tm5Var2.c;
            aVar4 = new jv3.a();
            for (Map.Entry<String, List<String>> entry : pm5Var.a.entrySet()) {
                key = entry.getKey();
                it = entry.getValue().iterator();
                while (it.hasNext()) {
                    aVar4.d(key, it.next());
                }
            }
            jv3 jv3VarE = aVar4.e();
            aVar2.getClass();
            aVar2.c = jv3VarE.d();
            return aVar2.a();
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str2 = my0Var.o;
        aVar3 = my0Var.n;
        aVar2 = my0Var.m;
        tm5Var2 = my0Var.l;
        r57.b(obj);
        gx0 gx0Var = (gx0) obj;
        if (gx0Var != null) {
            e37Var = new e37(null, gx0Var);
        } else {
            tm5 tm5Var3 = tm5Var2;
            str = str2;
            tm5Var = tm5Var3;
            aVar = aVar3;
            String str5 = str;
            tm5Var2 = tm5Var;
            str2 = str5;
            aVar3 = aVar;
        }
        aVar3.c(str2, e37Var);
        pm5 pm5Var2 = tm5Var2.c;
        aVar4 = new jv3.a();
        while (r6.hasNext()) {
            key = entry.getKey();
            it = entry.getValue().iterator();
            while (it.hasNext()) {
                aVar4.d(key, it.next());
            }
        }
        jv3 jv3VarE2 = aVar4.e();
        aVar2.getClass();
        aVar2.c = jv3VarE2.d();
        return aVar2.a();
    }
}
