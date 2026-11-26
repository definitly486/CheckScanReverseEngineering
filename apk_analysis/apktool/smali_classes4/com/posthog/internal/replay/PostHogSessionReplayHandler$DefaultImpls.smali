.class public final Lcom/posthog/internal/replay/PostHogSessionReplayHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/replay/PostHogSessionReplayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic onEvent$default(Lcom/posthog/internal/replay/PostHogSessionReplayHandler;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: onEvent"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method
