.class final Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic $retryChannel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx81;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx81<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$3$1;->$retryChannel:Lx81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lj59;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj59;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$3$1;->$retryChannel:Lx81;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lj59;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$3$1;->emit(Lj59;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
