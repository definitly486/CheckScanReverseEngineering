.class public final Landroidx/paging/ConflatedEventBus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final flow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final state:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lb36<",
            "Ljava/lang/Integer;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/paging/ConflatedEventBus;-><init>(Ljava/lang/Object;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb36;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/ConflatedEventBus;->state:Lxg5;

    new-instance v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    invoke-direct {v0, p1}, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;-><init>(Lhd3;)V

    iput-object v0, p0, Landroidx/paging/ConflatedEventBus;->flow:Lhd3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Landroidx/paging/ConflatedEventBus;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/ConflatedEventBus;->flow:Lhd3;

    return-object p0
.end method

.method public final send(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/ConflatedEventBus;->state:Lxg5;

    new-instance v0, Lb36;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb36;

    iget-object v1, v1, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lxg5;->setValue(Ljava/lang/Object;)V

    return-void
.end method
