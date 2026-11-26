package defpackage;

import android.text.Spanned;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$fetchMain$2", f = "BonusBlockInteractor.kt", l = {88}, m = "invokeSuspend")
public final class lm0 extends pg8 implements bm3<w81, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ wl0 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lm0(wl0 wl0Var, e02<? super lm0> e02Var) {
        super(2, e02Var);
        this.n = wl0Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        lm0 lm0Var = new lm0(this.n, e02Var);
        lm0Var.m = obj;
        return lm0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(w81 w81Var, e02<? super j59> e02Var) {
        return ((lm0) create(w81Var, e02Var)).invokeSuspend(j59.a);
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
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        sv7.c cVar;
        sv7 sv7Var;
        sv7 sv7VarD;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            w81 w81Var = (w81) this.m;
            wl0 wl0Var = this.n;
            wl0Var.getClass();
            int i2 = (int) w81Var.a;
            boolean z = w81Var.b;
            ArrayList arrayListV0 = qn1.v0((Collection) wl0Var.h.b.getValue());
            ArrayList<sv7> arrayList = new ArrayList();
            for (Object obj2 : arrayListV0) {
                if (obj2 instanceof sv7) {
                    arrayList.add(obj2);
                }
            }
            ArrayList<fs3> arrayList2 = new ArrayList();
            for (Object obj3 : arrayListV0) {
                if (obj3 instanceof fs3) {
                    arrayList2.add(obj3);
                }
            }
            for (sv7 sv7Var2 : arrayList) {
                if (sv7Var2.a == i2) {
                    if (sv7Var2 instanceof sv7.a) {
                        sv7.a aVar = (sv7.a) sv7Var2;
                        int i3 = aVar.c;
                        Spanned spanned = aVar.d;
                        String str = aVar.e;
                        ImageView.ScaleType scaleType = aVar.g;
                        scaleType.getClass();
                        sv7VarD = new sv7.a(i3, spanned, str, z, scaleType);
                        sv7Var = sv7Var2;
                    } else if (sv7Var2 instanceof sv7.b) {
                        sv7.b bVar = (sv7.b) sv7Var2;
                        int i4 = bVar.c;
                        Spanned spanned2 = bVar.d;
                        String str2 = bVar.e;
                        boolean z2 = bVar.g;
                        ImageView.ScaleType scaleType2 = bVar.h;
                        scaleType2.getClass();
                        sv7Var = sv7Var2;
                        sv7VarD = new sv7.b(i4, spanned2, str2, z, z2, scaleType2);
                    } else {
                        sv7Var = sv7Var2;
                        if (!(sv7Var instanceof sv7.c)) {
                            me0.e();
                            return null;
                        }
                        sv7VarD = sv7.c.d((sv7.c) sv7Var, z);
                    }
                    arrayListV0.set(arrayListV0.indexOf(sv7Var), sv7VarD);
                }
            }
            for (fs3 fs3Var : arrayList2) {
                List<sv7.c> list = fs3Var.e;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (((sv7.c) it.next()).a == i2) {
                            ArrayList arrayList3 = new ArrayList(fs3Var.e);
                            Iterator it2 = arrayList3.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    ag.g("Collection contains no element matching the predicate.");
                                    return null;
                                }
                                cVar = (sv7.c) it2.next();
                            } while (cVar.a != i2);
                            arrayList3.set(arrayList3.indexOf(cVar), sv7.c.d(cVar, z));
                            int iIndexOf = arrayListV0.indexOf(fs3Var);
                            int i5 = fs3Var.a;
                            String str3 = fs3Var.b;
                            String str4 = fs3Var.c;
                            String str5 = fs3Var.d;
                            str3.getClass();
                            str5.getClass();
                            arrayListV0.set(iIndexOf, new fs3(i5, str3, str4, str5, arrayList3));
                            break;
                        }
                    }
                }
            }
            z68 z68Var = wl0Var.g;
            z68Var.getClass();
            z68Var.k(null, arrayListV0);
            this.l = 1;
            if (wl0Var.n(this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
