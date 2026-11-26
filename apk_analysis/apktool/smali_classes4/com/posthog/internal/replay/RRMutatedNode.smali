.class public final Lcom/posthog/internal/replay/RRMutatedNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parentId:Ljava/lang/Integer;

.field private final wireframe:Lcom/posthog/internal/replay/RRWireframe;


# direct methods
.method public constructor <init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/replay/RRMutatedNode;->wireframe:Lcom/posthog/internal/replay/RRWireframe;

    iput-object p2, p0, Lcom/posthog/internal/replay/RRMutatedNode;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getParentId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRMutatedNode;->parentId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWireframe()Lcom/posthog/internal/replay/RRWireframe;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRMutatedNode;->wireframe:Lcom/posthog/internal/replay/RRWireframe;

    return-object p0
.end method
