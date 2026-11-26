package defpackage;

import android.content.Context;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.contextmenu.ProcessTextApi23Impl;
import androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.unit.IntSize;
import yads.ni1;
import yads.pz1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ki3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ki3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return FontListFontFamilyTypefaceAdapter.preload$lambda$3$0((TypefaceRequest) obj);
            case 1:
                return ProcessTextApi23Impl.processTextActivitiesQuery$lambda$0((Context) obj);
            case 2:
                return VectorConvertersKt.IntSizeToVector$lambda$0((IntSize) obj);
            case 3:
                return ((WindowInsetsHolder) obj).getMandatorySystemGestures();
            case 4:
                return Boolean.valueOf(ni1.g(obj));
            default:
                return Boolean.valueOf(pz1.a(obj));
        }
    }
}
