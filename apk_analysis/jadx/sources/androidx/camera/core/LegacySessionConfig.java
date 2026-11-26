package androidx.camera.core;

import defpackage.jh2;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LegacySessionConfig extends SessionConfig {
    private final boolean isLegacy;
    private final boolean requireNonEmptyUseCases;

    /* JADX WARN: Illegal instructions before constructor call */
    public LegacySessionConfig(UseCaseGroup useCaseGroup) {
        useCaseGroup.getClass();
        List<UseCase> useCases = useCaseGroup.getUseCases();
        useCases.getClass();
        ViewPort viewPort = useCaseGroup.getViewPort();
        List<CameraEffect> effects = useCaseGroup.getEffects();
        effects.getClass();
        this(useCases, viewPort, effects);
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean getRequireNonEmptyUseCases() {
        return this.requireNonEmptyUseCases;
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean isLegacy() {
        return this.isLegacy;
    }

    public /* synthetic */ LegacySessionConfig(List list, ViewPort viewPort, List list2, int i, jh2 jh2Var) {
        this(list, (i & 2) != 0 ? null : viewPort, (i & 4) != 0 ? kx2.b : list2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacySessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2) {
        super(list, viewPort, list2, null, null, null, 56, null);
        list.getClass();
        list2.getClass();
        this.isLegacy = true;
    }
}
