package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import com.warefly.checkscan.R;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class t47 implements s47 {
    public final Context a;
    public final fh8 b = new fh8(new a());

    public static final class a extends gh4 implements ll3<Resources> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Resources invoke() {
            return t47.this.a.getResources();
        }
    }

    public t47(Context context) {
        this.a = context;
    }

    @Override // defpackage.s47
    public final Drawable a(int i) {
        return AppCompatResources.getDrawable(this.a, i);
    }

    @Override // defpackage.s47
    public final String b(Object... objArr) {
        String string = ((Resources) this.b.getValue()).getString(R.string.scanner_cheque_title, Arrays.copyOf(objArr, objArr.length));
        string.getClass();
        return string;
    }

    @Override // defpackage.s47
    public final InputStream getRaw(int i) {
        InputStream inputStreamOpenRawResource = ((Resources) this.b.getValue()).openRawResource(i);
        inputStreamOpenRawResource.getClass();
        return inputStreamOpenRawResource;
    }

    @Override // defpackage.s47
    public final String getString(int i) {
        String string = ((Resources) this.b.getValue()).getString(i);
        string.getClass();
        return string;
    }
}
