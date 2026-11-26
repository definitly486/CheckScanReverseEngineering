.class public final Landroidx/paging/ChannelFlowCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final channel:Lno7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lno7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno7<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/ChannelFlowCollector;->channel:Lno7;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Lno7;

    invoke-interface {p0, p1, p2}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final getChannel()Lno7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lno7<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Lno7;

    return-object p0
.end method
