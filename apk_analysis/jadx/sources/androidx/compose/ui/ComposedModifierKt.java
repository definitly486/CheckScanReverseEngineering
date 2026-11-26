package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposedModifierKt {

    /* JADX INFO: renamed from: androidx.compose.ui.ComposedModifierKt$materializeImpl$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Modifier.Element, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(Modifier.Element element) {
            return Boolean.valueOf(!(element instanceof ComposedModifier));
        }
    }

    public static final Modifier composed(Modifier modifier, String str, Object obj, Object obj2, Object obj3, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        return modifier.then(new KeyedComposedModifier3(str, obj, obj2, obj3, nl3Var, dm3Var));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, Object obj2, Object obj3, nl3 nl3Var, dm3 dm3Var, int i, Object obj4) {
        if ((i & 16) != 0) {
            nl3Var = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, obj2, obj3, nl3Var, dm3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier materializeImpl(Composer composer, Modifier modifier) {
        if (modifier.all(AnonymousClass1.INSTANCE)) {
            return modifier;
        }
        composer.startReplaceableGroup(1219399079);
        Modifier modifier2 = (Modifier) modifier.foldIn(Modifier.Companion, new ComposedModifierKt$materializeImpl$result$1(composer));
        composer.endReplaceableGroup();
        return modifier2;
    }

    public static final Modifier materializeModifier(Composer composer, Modifier modifier) {
        composer.startReplaceGroup(439770924);
        Modifier modifierMaterializeImpl = materializeImpl(composer, modifier);
        composer.endReplaceGroup();
        return modifierMaterializeImpl;
    }

    public static final Modifier materializeWithCompositionLocalInjectionInternal(Composer composer, Modifier modifier) {
        return modifier == Modifier.Companion ? modifier : materializeModifier(composer, new CompositionLocalMapInjectionElement(composer.getCurrentCompositionLocalMap()).then(modifier));
    }

    public static final Modifier composed(Modifier modifier, String str, Object obj, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        return modifier.then(new KeyedComposedModifier1(str, obj, nl3Var, dm3Var));
    }

    public static final Modifier composed(Modifier modifier, String str, Object obj, Object obj2, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        return modifier.then(new KeyedComposedModifier2(str, obj, obj2, nl3Var, dm3Var));
    }

    public static final Modifier composed(Modifier modifier, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        return modifier.then(new ComposedModifier(nl3Var, dm3Var));
    }

    public static final Modifier composed(Modifier modifier, String str, Object[] objArr, nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        return modifier.then(new KeyedComposedModifierN(str, objArr, nl3Var, dm3Var));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, nl3 nl3Var, dm3 dm3Var, int i, Object obj2) {
        if ((i & 4) != 0) {
            nl3Var = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, (nl3<? super InspectorInfo, j59>) nl3Var, (dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier>) dm3Var);
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, Object obj2, nl3 nl3Var, dm3 dm3Var, int i, Object obj3) {
        if ((i & 8) != 0) {
            nl3Var = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, obj2, nl3Var, dm3Var);
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, nl3 nl3Var, dm3 dm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, nl3Var, dm3Var);
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object[] objArr, nl3 nl3Var, dm3 dm3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            nl3Var = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, objArr, (nl3<? super InspectorInfo, j59>) nl3Var, (dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier>) dm3Var);
    }
}
