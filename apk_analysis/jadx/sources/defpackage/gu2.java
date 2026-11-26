package defpackage;

import android.util.Size;
import androidx.arch.core.util.Function;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.resolutionselector.ResolutionFilter;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.List;
import yads.ae4;
import yads.ci4;
import yads.dh4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gu2 implements OnSuccessListener, ResolutionFilter, Function, DoubleFunction, ListenerSet.Event, ci4 {
    public final /* synthetic */ Object b;

    public /* synthetic */ gu2(Object obj) {
        this.b = obj;
    }

    @Override // yads.ci4
    public boolean a(dh4 dh4Var) {
        return ae4.e((ae4) this.b, dh4Var);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return ProcessCameraProvider.Companion.getInstance$lambda$1((mg6) this.b, obj);
    }

    @Override // androidx.camera.core.resolutionselector.ResolutionFilter
    public List filter(List list, int i) {
        return ImageAnalysis.lambda$onMergeConfig$0((Size) this.b, list, i);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$44((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((mu2) this.b).invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateEotf$lambda$3((TransferParameters) this.b, d);
    }
}
