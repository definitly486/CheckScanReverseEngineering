package defpackage;

import androidx.compose.ui.graphics.drawscope.DrawScope;

/* JADX INFO: loaded from: classes3.dex */
public interface ss {

    public static final class a implements ss {
        public static final a a = new a();

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.ss
        public final Object a(r14 r14Var, b24 b24Var, f02 f02Var) {
            rs rsVar;
            if (f02Var instanceof rs) {
                rsVar = (rs) f02Var;
                int i = rsVar.o;
                if ((i & Integer.MIN_VALUE) != 0) {
                    rsVar.o = i - Integer.MIN_VALUE;
                } else {
                    rsVar = new rs(this, f02Var);
                }
            } else {
                rsVar = new rs(this, f02Var);
            }
            Object objA = rsVar.m;
            Object obj = a32.COROUTINE_SUSPENDED;
            int i2 = rsVar.o;
            if (i2 == 0) {
                r57.b(objA);
                rsVar.l = b24Var;
                rsVar.o = 1;
                objA = r14Var.a(b24Var, rsVar);
                if (objA == obj) {
                    return obj;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                b24Var = rsVar.l;
                r57.b(objA);
            }
            g24 g24Var = (g24) objA;
            if (g24Var instanceof zc8) {
                zc8 zc8Var = (zc8) g24Var;
                return new ps.b.d(v14.a(zc8Var.a, b24Var.a, DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I()), zc8Var);
            }
            if (!(g24Var instanceof u03)) {
                me0.e();
                return null;
            }
            u03 u03Var = (u03) g24Var;
            x04 x04Var = u03Var.a;
            return new ps.b.C0316b(x04Var != null ? v14.a(x04Var, b24Var.a, DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I()) : null, u03Var);
        }
    }

    Object a(r14 r14Var, b24 b24Var, f02 f02Var);
}
