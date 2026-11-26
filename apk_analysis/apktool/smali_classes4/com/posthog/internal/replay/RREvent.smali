.class public Lcom/posthog/internal/replay/RREvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final timestamp:J

.field private final type:Lcom/posthog/internal/replay/RREventType;


# direct methods
.method public constructor <init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/replay/RREvent;->type:Lcom/posthog/internal/replay/RREventType;

    iput-wide p2, p0, Lcom/posthog/internal/replay/RREvent;->timestamp:J

    iput-object p4, p0, Lcom/posthog/internal/replay/RREvent;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/replay/RREvent;-><init>(Lcom/posthog/internal/replay/RREventType;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RREvent;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/posthog/internal/replay/RREvent;->timestamp:J

    return-wide v0
.end method

.method public final getType()Lcom/posthog/internal/replay/RREventType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RREvent;->type:Lcom/posthog/internal/replay/RREventType;

    return-object p0
.end method
