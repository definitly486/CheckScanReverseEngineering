package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface PausedComposition {
    void apply();

    void cancel();

    boolean isApplied();

    boolean isCancelled();

    boolean isComplete();

    boolean resume(ShouldPauseCallback shouldPauseCallback);
}
