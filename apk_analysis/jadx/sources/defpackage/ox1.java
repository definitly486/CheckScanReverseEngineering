package defpackage;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class ox1 implements w18, LayoutModifier {
    public long b;
    public ArrayList c;

    @bd2(c = "coil3.compose.ConstraintsSizeResolver", f = "ConstraintsSizeResolver.kt", l = {77}, m = TJAdUnitConstants.String.SIZE, v = 1)
    public static final class a extends f02 {
        public r07 l;
        public /* synthetic */ Object m;
        public int o;

        public a(f02 f02Var) {
            super(f02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.m = obj;
            this.o |= Integer.MIN_VALUE;
            return ox1.this.a(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, c31, java.lang.Object] */
    @Override // defpackage.w18
    public final Object a(e02<? super t18> e02Var) throws Throwable {
        a aVar;
        r07 r07Var;
        Throwable th;
        hn2 aVar2;
        hn2 aVar3;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.o = i - Integer.MIN_VALUE;
            } else {
                aVar = new a((f02) e02Var);
            }
        } else {
            aVar = new a((f02) e02Var);
        }
        Object obj = aVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.o;
        if (i2 == 0) {
            r57.b(obj);
            if (Constraints.m8999isZeroimpl(this.b)) {
                r07 r07Var2 = new r07();
                try {
                    aVar.l = r07Var2;
                    aVar.o = 1;
                    ?? c31Var = new c31(1, zya.b(aVar));
                    c31Var.u();
                    r07Var2.b = c31Var;
                    this.c.add(c31Var);
                    if (c31Var.s() == a32Var) {
                        return a32Var;
                    }
                    r07Var = r07Var2;
                    ArrayList arrayList = this.c;
                    v39.a(arrayList).remove(r07Var.b);
                } catch (Throwable th2) {
                    r07Var = r07Var2;
                    th = th2;
                    ArrayList arrayList2 = this.c;
                    v39.a(arrayList2).remove(r07Var.b);
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = aVar.l;
            try {
                r57.b(obj);
                ArrayList arrayList3 = this.c;
                v39.a(arrayList3).remove(r07Var.b);
            } catch (Throwable th3) {
                th = th3;
                ArrayList arrayList4 = this.c;
                v39.a(arrayList4).remove(r07Var.b);
                throw th;
            }
        }
        long j = this.b;
        int i3 = nb9.b;
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (iM8995getMaxWidthimpl != Integer.MAX_VALUE) {
            hn2.a.a(iM8995getMaxWidthimpl);
            aVar2 = new hn2.a(iM8995getMaxWidthimpl);
        } else {
            aVar2 = hn2.b.a;
        }
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        if (iM8994getMaxHeightimpl != Integer.MAX_VALUE) {
            hn2.a.a(iM8994getMaxHeightimpl);
            aVar3 = new hn2.a(iM8994getMaxHeightimpl);
        } else {
            aVar3 = hn2.b.a;
        }
        return new t18(aVar2, aVar3);
    }

    public final void f(long j) {
        this.b = j;
        if (Constraints.m8999isZeroimpl(j)) {
            return;
        }
        ArrayList arrayList = this.c;
        if (arrayList.isEmpty()) {
            return;
        }
        this.c = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((e02) it.next()).resumeWith(j59.a);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo2494measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        f(j);
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nx1(placeableMo7702measureBRTryo0, 0), 4, null);
    }
}
