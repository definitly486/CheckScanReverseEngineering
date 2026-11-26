package defpackage;

import androidx.camera.camera2.compat.workaround.EncoderProfilesProviderFallback;
import androidx.camera.core.impl.Quirks;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SaversKt;
import org.koin.core.error.DefinitionParameterException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ht1 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ht1(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) throws DefinitionParameterException {
        fo1 fo1Var;
        switch (this.b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(110253518, iIntValue, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$110253518.<anonymous> (CheckscanTopBar.kt:24)");
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            case 1:
                o22 o22Var = (o22) obj;
                o22.a aVar = (o22.a) obj2;
                o22Var.getClass();
                aVar.getClass();
                o22 o22VarMinusKey = o22Var.minusKey(aVar.getKey());
                gx2 gx2Var = gx2.b;
                if (o22VarMinusKey == gx2Var) {
                    return aVar;
                }
                g02.a aVar2 = g02.a.b;
                g02 g02Var = (g02) o22VarMinusKey.get(aVar2);
                if (g02Var == null) {
                    fo1Var = new fo1(aVar, o22VarMinusKey);
                } else {
                    o22 o22VarMinusKey2 = o22VarMinusKey.minusKey(aVar2);
                    if (o22VarMinusKey2 == gx2Var) {
                        return new fo1(g02Var, aVar);
                    }
                    fo1Var = new fo1(g02Var, new fo1(aVar, o22VarMinusKey2));
                }
                return fo1Var;
            case 2:
                return EncoderProfilesProviderFallback._init_$lambda$0((String) obj, (Quirks) obj2);
            case 3:
                ze7 ze7Var = (ze7) obj;
                i36 i36Var = (i36) obj2;
                ze7Var.getClass();
                i36Var.getClass();
                fs4 fs4Var = (fs4) ze7Var.e(x07.a(fs4.class), null, null);
                e17 e17Var = (e17) ze7Var.e(x07.a(e17.class), null, null);
                mo3 mo3Var = (mo3) ze7Var.e(x07.a(mo3.class), null, null);
                in3 in3Var = (in3) ze7Var.e(x07.a(in3.class), null, null);
                fo3 fo3Var = (fo3) ze7Var.e(x07.a(fo3.class), null, null);
                Object objB = i36Var.b(x07.a(Boolean.class));
                if (objB != null) {
                    return new no3(fs4Var, e17Var, mo3Var, in3Var, fo3Var, ((Boolean) objB).booleanValue());
                }
                throw new DefinitionParameterException("No value found for type '" + oe4.a(x07.a(Boolean.class)) + '\'');
            default:
                return SaversKt.ClickableSaver$lambda$0((SaverScope) obj, (LinkAnnotation.Clickable) obj2);
        }
    }
}
