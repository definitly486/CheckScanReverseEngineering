package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class vs7 {
    public final a a;

    public static final class a extends gh4 implements nl3<Intent, j59> {
        public final /* synthetic */ Context f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(1);
            this.f = context;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Intent intent) {
            Intent intent2 = intent;
            intent2.getClass();
            ContextCompat.startActivity(this.f, intent2, null);
            return j59.a;
        }
    }

    public vs7(Context context) {
        this.a = new a(context);
    }
}
