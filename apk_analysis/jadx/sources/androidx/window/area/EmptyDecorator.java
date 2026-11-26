package androidx.window.area;

/* JADX INFO: loaded from: classes3.dex */
final class EmptyDecorator implements WindowAreaControllerDecorator {
    public static final EmptyDecorator INSTANCE = new EmptyDecorator();

    private EmptyDecorator() {
    }

    @Override // androidx.window.area.WindowAreaControllerDecorator
    public WindowAreaController decorate(WindowAreaController windowAreaController) {
        windowAreaController.getClass();
        return windowAreaController;
    }
}
