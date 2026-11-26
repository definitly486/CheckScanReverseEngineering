package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import defpackage.b36;
import defpackage.j59;
import defpackage.mx2;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class SavedStateKt__SavedState_androidKt {
    public static final Bundle savedState(Map<String, ? extends Object> map, nl3<? super SavedStateWriter, j59> nl3Var) {
        b36[] b36VarArr;
        map.getClass();
        nl3Var.getClass();
        if (map.isEmpty()) {
            b36VarArr = new b36[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                arrayList.add(new b36(entry.getKey(), entry.getValue()));
            }
            b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        nl3Var.invoke(SavedStateWriter.m9454boximpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf)));
        return bundleBundleOf;
    }

    public static Bundle savedState$default(Map map, nl3 nl3Var, int i, Object obj) {
        b36[] b36VarArr;
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        if ((i & 2) != 0) {
            nl3Var = new nl3<SavedStateWriter, j59>() { // from class: androidx.savedstate.SavedStateKt__SavedState_androidKt.savedState.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(SavedStateWriter savedStateWriter) {
                    m9367invokexApjlu4(savedStateWriter.m9494unboximpl());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-xApjlu4, reason: not valid java name */
                public final void m9367invokexApjlu4(Bundle bundle) {
                    bundle.getClass();
                }
            };
        }
        map.getClass();
        nl3Var.getClass();
        if (map.isEmpty()) {
            b36VarArr = new b36[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new b36((String) entry.getKey(), entry.getValue()));
            }
            b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        nl3Var.invoke(SavedStateWriter.m9454boximpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf)));
        return bundleBundleOf;
    }

    public static final Bundle savedState(Bundle bundle, nl3<? super SavedStateWriter, j59> nl3Var) {
        bundle.getClass();
        nl3Var.getClass();
        Bundle bundle2 = new Bundle(bundle);
        nl3Var.invoke(SavedStateWriter.m9454boximpl(SavedStateWriter.m9456constructorimpl(bundle2)));
        return bundle2;
    }

    public static /* synthetic */ Bundle savedState$default(Bundle bundle, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = new nl3<SavedStateWriter, j59>() { // from class: androidx.savedstate.SavedStateKt__SavedState_androidKt.savedState.3
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(SavedStateWriter savedStateWriter) {
                    m9368invokexApjlu4(savedStateWriter.m9494unboximpl());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-xApjlu4, reason: not valid java name */
                public final void m9368invokexApjlu4(Bundle bundle2) {
                    bundle2.getClass();
                }
            };
        }
        bundle.getClass();
        nl3Var.getClass();
        Bundle bundle2 = new Bundle(bundle);
        nl3Var.invoke(SavedStateWriter.m9454boximpl(SavedStateWriter.m9456constructorimpl(bundle2)));
        return bundle2;
    }
}
