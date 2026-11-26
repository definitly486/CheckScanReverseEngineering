.class public final Lcom/posthog/internal/replay/RRMousePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final timeOffset:Ljava/lang/Long;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/posthog/internal/replay/RRMousePosition;->x:I

    iput p2, p0, Lcom/posthog/internal/replay/RRMousePosition;->y:I

    iput p3, p0, Lcom/posthog/internal/replay/RRMousePosition;->id:I

    iput-object p4, p0, Lcom/posthog/internal/replay/RRMousePosition;->timeOffset:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Long;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/replay/RRMousePosition;-><init>(IIILjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRMousePosition;->id:I

    return p0
.end method

.method public final getTimeOffset()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRMousePosition;->timeOffset:Ljava/lang/Long;

    return-object p0
.end method

.method public final getX()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRMousePosition;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRMousePosition;->y:I

    return p0
.end method
