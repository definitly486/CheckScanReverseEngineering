package defpackage;

import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import com.my.target.c1;
import com.my.target.ef;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ym2 implements OnApplyWindowInsetsListener, ReorderingBufferQueue.OutputConsumer, ActivityResultCallback, ListenerSet.Event, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ ym2(Object obj) {
        this.b = obj;
    }

    @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
    public void consume(long j, ParsableByteArray parsableByteArray) {
        ((FragmentedMp4Extractor) this.b).lambda$new$2(j, parsableByteArray);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        ef efVar = (ef) this.b;
        int i = ef.r;
        efVar.p = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$53((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ScannerFragment scannerFragment = (ScannerFragment) this.b;
        if (!((Boolean) obj).booleanValue()) {
            ze4<Object>[] ze4VarArr = ScannerFragment.o;
            return;
        }
        u11 u11Var = scannerFragment.k;
        if (u11Var != null) {
            u11Var.b();
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        ProfilePromocodeEnterBottomSheet.b bVar = (ProfilePromocodeEnterBottomSheet.b) this.b;
        boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime());
        Boolean boolValueOf = Boolean.valueOf(zIsVisible);
        insets.getClass();
        bVar.invoke(boolValueOf, insets);
        return windowInsetsCompat;
    }
}
