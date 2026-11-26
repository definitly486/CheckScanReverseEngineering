.class public final Lcom/posthog/internal/replay/RRFullSnapshotEvent;
.super Lcom/posthog/internal/replay/RREvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRWireframe;",
            ">;IIJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/posthog/internal/replay/RREventType;->FullSnapshot:Lcom/posthog/internal/replay/RREventType;

    new-instance v1, Lb36;

    const-string v2, "wireframes"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v2, "top"

    invoke-direct {p2, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p3, Lb36;

    const-string v2, "left"

    invoke-direct {p3, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p2, p3}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lb36;

    const-string p3, "initialOffset"

    invoke-direct {p2, p3, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p4, p5, p1}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    return-void
.end method
