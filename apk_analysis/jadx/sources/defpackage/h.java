package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements rxa {
    public static final /* synthetic */ h b = new h();

    public static final boolean a(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        bArr.getClass();
        bArr2.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            StringBuilder sbF = xp.f(j, "size=", " offset=");
            sbF.append(j2);
            sbF.append(" byteCount=");
            sbF.append(j3);
            throw new ArrayIndexOutOfBoundsException(sbF.toString());
        }
    }

    public static tc5 c(nl3 nl3Var) {
        nl3Var.getClass();
        tc5 tc5Var = new tc5(0);
        nl3Var.invoke(tc5Var);
        return tc5Var;
    }

    public static final int d(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final String e(byte b2) {
        char[] cArr = c.b;
        return new String(new char[]{cArr[(b2 >> 4) & 15], cArr[b2 & 15]});
    }

    public static final String f(int i) {
        if (i == 0) {
            return CommonUrlParts.Values.FALSE_INTEGER;
        }
        char[] cArr = c.b;
        int i2 = 0;
        char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
        while (i2 < 8 && cArr2[i2] == '0') {
            i2++;
        }
        return ra8.r(cArr2, i2, 8);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0090 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x0091 A[RETURN] */
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
    public static final Object g(f02 f02Var) {
        Object obj;
        Object obj2;
        Object obj3;
        o22 context = f02Var.getContext();
        qb4.e(context);
        e02 e02VarB = zya.b(f02Var);
        fo2 fo2Var = e02VarB instanceof fo2 ? (fo2) e02VarB : null;
        if (fo2Var != null) {
            r22 r22Var = fo2Var.e;
            if (!go2.h(r22Var, context)) {
                cm9 cm9Var = new cm9();
                o22 o22VarPlus = context.plus(cm9Var);
                obj = j59.a;
                fo2Var.g = obj;
                fo2Var.d = 1;
                r22Var.dispatchYield(o22VarPlus, fo2Var);
                if (cm9Var.c) {
                    b13 b13VarA = pt8.a();
                    fr<io2<?>> frVar = b13VarA.e;
                    if (!(frVar != null ? frVar.isEmpty() : true)) {
                        if (b13VarA.c >= 4294967296L) {
                            fo2Var.g = obj;
                            fo2Var.d = 1;
                            b13VarA.n0(fo2Var);
                            obj3 = a32.COROUTINE_SUSPENDED;
                        } else {
                            b13VarA.q0(true);
                            try {
                                fo2Var.run();
                                do {
                                } while (b13VarA.u0());
                            } catch (Throwable th) {
                                try {
                                    fo2Var.g(th);
                                } catch (Throwable th2) {
                                    b13VarA.k0(true);
                                    throw th2;
                                }
                            }
                            b13VarA.k0(true);
                        }
                    }
                    obj3 = j59.a;
                } else {
                    obj2 = obj;
                }
                if (obj3 == a32.COROUTINE_SUSPENDED) {
                    return obj3;
                }
                return obj;
            }
            j59 j59Var = j59.a;
            fo2Var.g = j59Var;
            fo2Var.d = 1;
            r22Var.dispatchYield(context, fo2Var);
            obj2 = j59Var;
            obj = obj2;
            obj3 = a32.COROUTINE_SUSPENDED;
            if (obj3 == a32.COROUTINE_SUSPENDED) {
                return obj3;
            }
            return obj;
        }
        obj3 = j59.a;
        obj = obj3;
        if (obj3 == a32.COROUTINE_SUSPENDED) {
            return obj3;
        }
        return obj;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzai());
    }
}
