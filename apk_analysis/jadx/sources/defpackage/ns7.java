package defpackage;

import android.content.Intent;
import android.net.Uri;
import androidx.webkit.internal.AssetHelper;

/* JADX INFO: loaded from: classes5.dex */
public final class ns7 extends gh4 implements nl3<Uri, j59> {
    public final /* synthetic */ os7 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ ll3<j59> h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ns7(os7 os7Var, String str, ll3<j59> ll3Var) {
        super(1);
        this.f = os7Var;
        this.g = str;
        this.h = ll3Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Uri uri) {
        vs7 vs7Var = this.f.d;
        String string = uri.toString();
        string.getClass();
        String str = this.g;
        vs7Var.getClass();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", string);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        try {
            vs7.a aVar = vs7Var.a;
            Intent intentCreateChooser = Intent.createChooser(intent, str);
            intentCreateChooser.getClass();
            aVar.invoke(intentCreateChooser);
        } catch (Exception unused) {
            this.h.invoke();
        }
        return j59.a;
    }
}
