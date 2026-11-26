package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusProperties {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Rect UnsetFocusRect = new Rect(Float.NaN, Float.NaN, Float.NaN, Float.NaN);

        private Companion() {
        }

        public final Rect getUnsetFocusRect() {
            return UnsetFocusRect;
        }
    }

    static /* synthetic */ void getEnter$annotations() {
    }

    static /* synthetic */ void getExit$annotations() {
    }

    boolean getCanFocus();

    default FocusRequester getDown() {
        return FocusRequester.Companion.getDefault();
    }

    default FocusRequester getEnd() {
        return FocusRequester.Companion.getDefault();
    }

    default nl3<FocusDirection, FocusRequester> getEnter() {
        return FocusProperties$enter$1.INSTANCE;
    }

    default nl3<FocusDirection, FocusRequester> getExit() {
        return FocusProperties$exit$1.INSTANCE;
    }

    default Rect getFocusRect() {
        return Companion.getUnsetFocusRect();
    }

    default FocusRequester getLeft() {
        return FocusRequester.Companion.getDefault();
    }

    default FocusRequester getNext() {
        return FocusRequester.Companion.getDefault();
    }

    default nl3<FocusEnterExitScope, j59> getOnEnter() {
        return FocusProperties$onEnter$1.INSTANCE;
    }

    default nl3<FocusEnterExitScope, j59> getOnExit() {
        return FocusProperties$onExit$1.INSTANCE;
    }

    default FocusRequester getPrevious() {
        return FocusRequester.Companion.getDefault();
    }

    default FocusRequester getRight() {
        return FocusRequester.Companion.getDefault();
    }

    default FocusRequester getStart() {
        return FocusRequester.Companion.getDefault();
    }

    default FocusRequester getUp() {
        return FocusRequester.Companion.getDefault();
    }

    void setCanFocus(boolean z);

    default void setDown(FocusRequester focusRequester) {
    }

    default void setEnd(FocusRequester focusRequester) {
    }

    @ul2
    default void setEnter(nl3<? super FocusDirection, FocusRequester> nl3Var) {
        setOnEnter(FocusPropertiesKt.toUsingEnterExitScope(nl3Var));
    }

    @ul2
    default void setExit(nl3<? super FocusDirection, FocusRequester> nl3Var) {
        setOnExit(FocusPropertiesKt.toUsingEnterExitScope(nl3Var));
    }

    default void setFocusRect(Rect rect) {
    }

    default void setLeft(FocusRequester focusRequester) {
    }

    default void setNext(FocusRequester focusRequester) {
    }

    default void setOnEnter(nl3<? super FocusEnterExitScope, j59> nl3Var) {
    }

    default void setOnExit(nl3<? super FocusEnterExitScope, j59> nl3Var) {
    }

    default void setPrevious(FocusRequester focusRequester) {
    }

    default void setRight(FocusRequester focusRequester) {
    }

    default void setStart(FocusRequester focusRequester) {
    }

    default void setUp(FocusRequester focusRequester) {
    }
}
