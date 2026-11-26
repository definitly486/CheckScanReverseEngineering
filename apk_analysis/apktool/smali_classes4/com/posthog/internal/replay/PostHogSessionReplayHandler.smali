.class public interface abstract Lcom/posthog/internal/replay/PostHogSessionReplayHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/replay/PostHogSessionReplayHandler$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract isActive()Z
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSessionIdChanged()V
.end method

.method public abstract start(Z)V
.end method

.method public abstract stop()V
.end method
