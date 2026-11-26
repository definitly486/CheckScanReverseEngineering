package androidx.compose.animation;

import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.n05;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExitTransition {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final ExitTransition KeepUntilTransitionsFinished;
    private static final ExitTransition None;

    static {
        jh2 jh2Var = null;
        Fade fade = null;
        Slide slide = null;
        ChangeSize changeSize = null;
        Scale scale = null;
        Veil veil = null;
        Map map = null;
        None = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, false, map, Trace.MAX_TRACE_LABEL_LENGTH, jh2Var));
        KeepUntilTransitionsFinished = new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, true, map, 95, jh2Var));
    }

    public /* synthetic */ ExitTransition(jh2 jh2Var) {
        this();
    }

    public boolean equals(Object obj) {
        return (obj instanceof ExitTransition) && aa4.e(((ExitTransition) obj).getData$animation(), getData$animation());
    }

    public abstract TransitionData getData$animation();

    public int hashCode() {
        return getData$animation().hashCode();
    }

    public final ExitTransition plus(ExitTransition exitTransition) {
        Fade fade = exitTransition.getData$animation().getFade();
        if (fade == null) {
            fade = getData$animation().getFade();
        }
        Slide slide = exitTransition.getData$animation().getSlide();
        if (slide == null) {
            slide = getData$animation().getSlide();
        }
        ChangeSize changeSize = exitTransition.getData$animation().getChangeSize();
        if (changeSize == null) {
            changeSize = getData$animation().getChangeSize();
        }
        Scale scale = exitTransition.getData$animation().getScale();
        if (scale == null) {
            scale = getData$animation().getScale();
        }
        Veil veil = exitTransition.getData$animation().getVeil();
        if (veil == null) {
            veil = getData$animation().getVeil();
        }
        return new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, veil, exitTransition.getData$animation().getHold() || getData$animation().getHold(), n05.g(getData$animation().getEffectsMap(), exitTransition.getData$animation().getEffectsMap())));
    }

    public String toString() {
        if (equals(None)) {
            return "ExitTransition.None";
        }
        if (equals(KeepUntilTransitionsFinished)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        TransitionData data$animation = getData$animation();
        StringBuilder sb = new StringBuilder("ExitTransition: \nFade - ");
        Fade fade = data$animation.getFade();
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - ");
        Slide slide = data$animation.getSlide();
        sb.append(slide != null ? slide.toString() : null);
        sb.append(",\nShrink - ");
        ChangeSize changeSize = data$animation.getChangeSize();
        sb.append(changeSize != null ? changeSize.toString() : null);
        sb.append(",\nScale - ");
        Scale scale = data$animation.getScale();
        sb.append(scale != null ? scale.toString() : null);
        sb.append(",\nKeepUntilTransitionsFinished - ");
        sb.append(data$animation.getHold());
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ExitTransition getKeepUntilTransitionsFinished$animation() {
            return ExitTransition.KeepUntilTransitionsFinished;
        }

        public final ExitTransition getNone() {
            return ExitTransition.None;
        }

        private Companion() {
        }
    }

    private ExitTransition() {
    }
}
