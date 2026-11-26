package androidx.window.area;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.window.area.utils.PresentationWindowCompatUtils;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.WindowAreaComponent;

/* JADX INFO: loaded from: classes3.dex */
public final class RearDisplayPresentationSessionPresenterImpl implements WindowAreaSessionPresenter {
    private final Context context;
    private final ExtensionWindowAreaPresentation presentation;
    private final Window window;
    private final WindowAreaComponent windowAreaComponent;

    public RearDisplayPresentationSessionPresenterImpl(WindowAreaComponent windowAreaComponent, ExtensionWindowAreaPresentation extensionWindowAreaPresentation, int i) {
        windowAreaComponent.getClass();
        extensionWindowAreaPresentation.getClass();
        this.windowAreaComponent = windowAreaComponent;
        this.presentation = extensionWindowAreaPresentation;
        Context presentationContext = extensionWindowAreaPresentation.getPresentationContext();
        presentationContext.getClass();
        this.context = presentationContext;
        this.window = i >= 4 ? extensionWindowAreaPresentation.getWindow() : PresentationWindowCompatUtils.INSTANCE.getWindowBeforeVendorApiLevel4(extensionWindowAreaPresentation);
    }

    @Override // androidx.window.area.WindowAreaSession
    public void close() {
        this.windowAreaComponent.endRearDisplayPresentationSession();
    }

    @Override // androidx.window.area.WindowAreaSessionPresenter
    public Context getContext() {
        return this.context;
    }

    @Override // androidx.window.area.WindowAreaSessionPresenter
    public Window getWindow() {
        return this.window;
    }

    @Override // androidx.window.area.WindowAreaSessionPresenter
    public void setContentView(View view) {
        view.getClass();
        this.presentation.setPresentationView(view);
    }
}
