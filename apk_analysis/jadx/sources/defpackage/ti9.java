package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class ti9 {
    public static final cl4 a = nm4.a(po4.NONE, a.f);

    public static final class a extends gh4 implements ll3<String> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final String invoke() {
            try {
                return Resources.getSystem().getString(Resources.getSystem().getIdentifier("tooltip_popup_title", TypedValues.Custom.S_STRING, "android"));
            } catch (Resources.NotFoundException unused) {
                return "Tooltip";
            }
        }
    }

    public static final Window a(View view) throws IllegalAccessException {
        Field field;
        view.getClass();
        cl4 cl4Var = ri9.a;
        View rootView = view.getRootView();
        rootView.getClass();
        Class cls = (Class) ri9.a.getValue();
        if (cls != null && cls.isInstance(rootView) && (field = (Field) ri9.b.getValue()) != null) {
            Object obj = field.get(rootView);
            if (obj != null) {
                return (Window) obj;
            }
            o2.d("null cannot be cast to non-null type android.view.Window");
        }
        return null;
    }
}
