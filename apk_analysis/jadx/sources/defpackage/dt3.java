package defpackage;

import android.content.res.Resources;
import androidx.activity.SystemBarStyle;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import yads.h22;
import yads.u62;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class dt3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dt3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return SurveyAppearanceWidgetType.Companion.fromValue(str);
            case 1:
                return Boolean.valueOf(PruningCamera2DeviceManager.prewarm_EfqyGwQ$lambda$0((j59) obj));
            case 2:
                return Boolean.valueOf(SystemBarStyle.Companion.dark$lambda$0((Resources) obj));
            case 3:
                return Boolean.valueOf(h22.a(obj));
            default:
                return Boolean.valueOf(u62.c(obj));
        }
    }
}
