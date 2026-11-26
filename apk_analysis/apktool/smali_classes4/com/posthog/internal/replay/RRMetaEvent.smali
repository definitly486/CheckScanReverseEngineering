.class public final Lcom/posthog/internal/replay/RRMetaEvent;
.super Lcom/posthog/internal/replay/RREvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 3

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/posthog/internal/replay/RREventType;->Meta:Lcom/posthog/internal/replay/RREventType;

    new-instance v1, Lb36;

    const-string v2, "href"

    invoke-direct {v1, v2, p5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p5, Lb36;

    const-string v2, "width"

    invoke-direct {p5, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v2, "height"

    invoke-direct {p2, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p5, p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p3, p4, p1}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    return-void
.end method
