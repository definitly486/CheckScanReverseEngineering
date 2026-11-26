package yads;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class p96 extends Property {
    public final Rect a;
    public float b;

    public p96(View view) {
        super(Float.TYPE, "ClipBoundsTop");
        this.a = new Rect(0, 0, view.getWidth(), view.getHeight());
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(this.b);
    }

    public final void set(View view, float f) {
        this.b = f;
        if (f < 0.0f) {
            this.a.set(0, (int) ((-f) * (view.getHeight() - 1)), view.getWidth(), view.getHeight());
        } else {
            Rect rect = this.a;
            if (f > 0.0f) {
                rect.set(0, 0, view.getWidth(), (int) (((1.0f - this.b) * view.getHeight()) + 1.0f));
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
        }
        ViewCompat.setClipBounds(view, this.a);
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        set((View) obj, ((Number) obj2).floatValue());
    }
}
