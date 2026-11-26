package androidx.compose.ui.modifier;

import defpackage.b36;
import defpackage.l68;
import defpackage.ul2;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifierLocalModifierNodeKt {
    @ul2
    public static final ModifierLocalMap modifierLocalMapOf(ModifierLocal... modifierLocalArr) {
        int length = modifierLocalArr.length;
        if (length == 0) {
            return EmptyMap.INSTANCE;
        }
        if (length == 1) {
            return new SingleLocalMap((ModifierLocal) yr.I(modifierLocalArr));
        }
        b36 b36Var = new b36(yr.I(modifierLocalArr), null);
        List listF = yr.F(1, modifierLocalArr);
        ArrayList arrayList = new ArrayList(listF.size());
        int size = listF.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new b36((ModifierLocal) listF.get(i), null));
        }
        b36[] b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
        return new MultiLocalMap(b36Var, (b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
    }

    public static final ModifierLocalMap modifierLocalMapOf() {
        return EmptyMap.INSTANCE;
    }

    public static final <T> ModifierLocalMap modifierLocalMapOf(ModifierLocal<T> modifierLocal) {
        return new SingleLocalMap(modifierLocal);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ModifierLocalMap modifierLocalMapOf(b36<? extends ModifierLocal<T>, ? extends T> b36Var) {
        SingleLocalMap singleLocalMap = new SingleLocalMap((ModifierLocal) b36Var.b);
        singleLocalMap.mo7855set$ui((ModifierLocal) b36Var.b, b36Var.c);
        return singleLocalMap;
    }

    public static final ModifierLocalMap modifierLocalMapOf(b36<? extends ModifierLocal<?>, ? extends Object> b36Var, b36<? extends ModifierLocal<?>, ? extends Object> b36Var2, b36<? extends ModifierLocal<?>, ? extends Object>... b36VarArr) {
        l68 l68Var = new l68(2);
        l68Var.a(b36Var2);
        l68Var.b(b36VarArr);
        ArrayList<Object> arrayList = l68Var.a;
        return new MultiLocalMap(b36Var, (b36[]) arrayList.toArray(new b36[arrayList.size()]));
    }

    public static final ModifierLocalMap modifierLocalMapOf(ModifierLocal<?> modifierLocal, ModifierLocal<?> modifierLocal2, ModifierLocal<?>... modifierLocalArr) {
        b36 b36Var = new b36(modifierLocal, null);
        l68 l68Var = new l68(2);
        l68Var.a(new b36(modifierLocal2, null));
        ArrayList arrayList = new ArrayList(modifierLocalArr.length);
        for (ModifierLocal<?> modifierLocal3 : modifierLocalArr) {
            arrayList.add(new b36(modifierLocal3, null));
        }
        l68Var.b(arrayList.toArray(new b36[0]));
        ArrayList<Object> arrayList2 = l68Var.a;
        return new MultiLocalMap(b36Var, (b36[]) arrayList2.toArray(new b36[arrayList2.size()]));
    }

    @ul2
    public static final /* synthetic */ ModifierLocalMap modifierLocalMapOf(b36... b36VarArr) {
        int length = b36VarArr.length;
        if (length == 0) {
            return EmptyMap.INSTANCE;
        }
        if (length != 1) {
            b36 b36Var = (b36) yr.I(b36VarArr);
            b36[] b36VarArr2 = (b36[]) yr.F(1, b36VarArr).toArray(new b36[0]);
            return new MultiLocalMap(b36Var, (b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
        }
        return new MultiLocalMap((b36) yr.I(b36VarArr), new b36[0]);
    }
}
