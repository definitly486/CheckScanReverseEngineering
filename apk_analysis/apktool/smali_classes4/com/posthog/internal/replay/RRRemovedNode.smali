.class public final Lcom/posthog/internal/replay/RRRemovedNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final parentId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/posthog/internal/replay/RRRemovedNode;->id:I

    .line 11
    iput-object p2, p0, Lcom/posthog/internal/replay/RRRemovedNode;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/internal/replay/RRRemovedNode;-><init>(ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/replay/RRRemovedNode;->id:I

    return p0
.end method

.method public final getParentId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/replay/RRRemovedNode;->parentId:Ljava/lang/Integer;

    return-object p0
.end method
