.class public final Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final pointerType:I

.field private final positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/posthog/internal/replay/RRIncrementalSource;

.field private final type:Lcom/posthog/internal/replay/RRMouseInteraction;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/posthog/internal/replay/RRMouseInteraction;",
            "II",
            "Lcom/posthog/internal/replay/RRIncrementalSource;",
            "I",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->id:I

    .line 33
    iput-object p2, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->type:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 34
    iput p3, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->x:I

    .line 35
    iput p4, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->y:I

    .line 36
    iput-object p5, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 37
    iput p6, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->pointerType:I

    .line 38
    iput-object p7, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->positions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;ILjh2;)V
    .locals 8

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    sget-object p5, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p8, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x2

    :cond_1
    move v6, p6

    and-int/lit8 p5, p8, 0x40

    if-eqz p5, :cond_2

    const/4 p5, 0x0

    move-object v7, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    goto :goto_1

    :cond_2
    move-object v7, p7

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;-><init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->id:I

    return p0
.end method

.method public final getPointerType()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->pointerType:I

    return p0
.end method

.method public final getPositions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->positions:Ljava/util/List;

    return-object p0
.end method

.method public final getSource()Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0
.end method

.method public final getType()Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->type:Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0
.end method

.method public final getX()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->y:I

    return p0
.end method
