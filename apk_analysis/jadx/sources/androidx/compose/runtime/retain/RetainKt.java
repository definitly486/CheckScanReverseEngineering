package androidx.compose.runtime.retain;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.oa2;

/* JADX INFO: loaded from: classes2.dex */
public final class RetainKt {
    private static final Object RetainedValuesStoreMissingValue = new Object();

    public static final <T> T retain(int i, Object[] objArr, ll3<? extends T> ll3Var, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2119413254, i2, -1, "androidx.compose.runtime.retain.retain (Retain.kt:209)");
        }
        T t = (T) retainImpl(new RetainKeys(objArr, ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0), i), ll3Var, composer, (i2 >> 3) & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    private static final <T> T retainImpl(RetainKeys retainKeys, ll3<? extends T> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(583113279, i, -1, "androidx.compose.runtime.retain.retainImpl (Retain.kt:222)");
        }
        RetainedValuesStore retainedValuesStore = (RetainedValuesStore) composer.consume(LocalRetainedValuesStoreKt.getLocalRetainedValuesStore());
        int i2 = 1;
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(retainKeys)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            Object obj = RetainedValuesStoreMissingValue;
            Object objConsumeExitedValueOrDefault = retainedValuesStore.consumeExitedValueOrDefault(retainKeys, obj);
            objRememberedValue = objConsumeExitedValueOrDefault != obj ? new RetainedValueHolder(retainKeys, objConsumeExitedValueOrDefault, retainedValuesStore, false) : new RetainedValueHolder(retainKeys, ll3Var.invoke(), retainedValuesStore, true);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainedValueHolder retainedValueHolder = (RetainedValueHolder) objRememberedValue;
        if (retainedValueHolder.getOwner() != retainedValuesStore) {
            composer.startReplaceGroup(-1614000612);
            boolean zChangedInstance = composer.changedInstance(retainedValueHolder) | composer.changedInstance(retainedValuesStore);
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new oa2(i2, retainedValueHolder, retainedValuesStore);
                composer.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue2, composer, 0);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-1613932381);
            composer.endReplaceGroup();
        }
        T t = (T) retainedValueHolder.getValue();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 retainImpl$lambda$1$0(RetainedValueHolder retainedValueHolder, RetainedValuesStore retainedValuesStore) {
        retainedValueHolder.readoptUnder$runtime_retain(retainedValuesStore);
        return j59.a;
    }

    public static final <T> T retain(int i, ll3<? extends T> ll3Var, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(663053747, i2, -1, "androidx.compose.runtime.retain.retain (Retain.kt:195)");
        }
        T t = (T) retainImpl(new RetainKeys(null, ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0), i), ll3Var, composer, i2 & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    public static final <T> T retain(ll3<? extends T> ll3Var, Composer composer, int i) {
        aa4.i();
        throw null;
    }

    public static final <T> T retain(Object[] objArr, ll3<? extends T> ll3Var, Composer composer, int i) {
        aa4.i();
        throw null;
    }
}
