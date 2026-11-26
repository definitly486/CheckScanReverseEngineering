.class public final synthetic Lpr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Lo22;

.field public final synthetic c:Lc32;

.field public final synthetic d:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lo22;Lc32;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpr4;->b:Lo22;

    iput-object p2, p0, Lpr4;->c:Lc32;

    iput-object p3, p0, Lpr4;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpr4;->c:Lc32;

    iget-object v1, p0, Lpr4;->d:Lbm3;

    iget-object p0, p0, Lpr4;->b:Lo22;

    invoke-static {p0, v0, v1, p1}, Landroidx/work/ListenableFutureKt;->b(Lo22;Lc32;Lbm3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
