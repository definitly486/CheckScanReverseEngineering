.class public final Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->future(Ly22;Lnl3;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Le02<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_future:Ly22;


# direct methods
.method public constructor <init>(Ly22;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Lnl3<",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;->$this_future:Ly22;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;->$block:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;->$this_future:Ly22;

    new-instance v1, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1$1;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1;->$block:Lnl3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt$future$resolver$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lnl3;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method
