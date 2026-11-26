package defpackage;

import androidx.media3.exoplayer.video.VideoSink;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.profile.databinding.DialogProfilePromocodeEnterBinding;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q96 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q96(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((VideoSink.Listener) obj).onFirstFrameRendered();
                break;
            case 1:
                ProfilePromocodeEnterBottomSheet.a aVar = ProfilePromocodeEnterBottomSheet.e;
                TextInputEditText textInputEditText = ((DialogProfilePromocodeEnterBinding) obj).etField;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                break;
            default:
                TextInputEditText textInputEditText2 = (TextInputEditText) obj;
                SupportFormFragment.a aVar2 = SupportFormFragment.j;
                textInputEditText2.getClass();
                le9.e(textInputEditText2);
                break;
        }
    }
}
