package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q22 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [T, java.lang.Object] */
    public static final o22 a(o22 o22Var, o22 o22Var2, final boolean z) {
        Boolean bool = Boolean.FALSE;
        int i = 1;
        boolean zBooleanValue = ((Boolean) o22Var.fold(bool, new it1(i))).booleanValue();
        boolean zBooleanValue2 = ((Boolean) o22Var2.fold(bool, new it1(i))).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return o22Var.plus(o22Var2);
        }
        final r07 r07Var = new r07();
        r07Var.b = o22Var2;
        bm3 bm3Var = new bm3() { // from class: p22
            /* JADX WARN: Type inference failed for: r3v3, types: [T, o22] */
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                o22 o22Var3 = (o22) obj;
                o22.a aVar = (o22.a) obj2;
                if (!(aVar instanceof n02)) {
                    return o22Var3.plus(aVar);
                }
                r07 r07Var2 = r07Var;
                if (((o22) r07Var2.b).get(aVar.getKey()) == null) {
                    return o22Var3.plus(z ? ((n02) aVar).o() : (n02) aVar);
                }
                r07Var2.b = ((o22) r07Var2.b).minusKey(aVar.getKey());
                return o22Var3.plus(((n02) aVar).Q());
            }
        };
        gx2 gx2Var = gx2.b;
        o22 o22Var3 = (o22) o22Var.fold(gx2Var, bm3Var);
        if (zBooleanValue2) {
            r07Var.b = ((o22) r07Var.b).fold(gx2Var, new eo1(2));
        }
        return o22Var3.plus((o22) r07Var.b);
    }

    public static final o22 b(y22 y22Var, o22 o22Var) {
        o22 o22VarA = a(y22Var.getCoroutineContext(), o22Var, true);
        oi2 oi2Var = qo2.a;
        return (o22VarA == oi2Var || o22VarA.get(g02.a.b) != null) ? o22VarA : o22VarA.plus(oi2Var);
    }

    public static final h59<?> c(e02<?> e02Var, o22 o22Var, Object obj) {
        h59<?> h59Var = null;
        if ((e02Var instanceof b32) && o22Var.get(i59.b) != null) {
            b32 callerFrame = (b32) e02Var;
            while (!(callerFrame instanceof ho2) && (callerFrame = callerFrame.getCallerFrame()) != null) {
                if (callerFrame instanceof h59) {
                    h59Var = (h59) callerFrame;
                    break;
                }
            }
            if (h59Var != null) {
                h59Var.q0(o22Var, obj);
            }
        }
        return h59Var;
    }
}
