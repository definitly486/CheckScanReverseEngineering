package defpackage;

import android.content.Context;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes4.dex */
public abstract class aw9 extends ViewGroup {

    public class a extends ViewOutlineProvider {
        public final /* synthetic */ float a;

        public a(float f) {
            this.a = f;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    public aw9(Context context) {
        super(context);
    }

    public static void a(View view, float f) {
        view.setClipToOutline(true);
        view.setOutlineProvider(new a(f));
    }
}
