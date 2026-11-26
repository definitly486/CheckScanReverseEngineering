.class public final synthetic Ll97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/work/RxWorker;

.field public final synthetic c:Lmz7;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/RxWorker;Lmz7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll97;->b:Landroidx/work/RxWorker;

    iput-object p2, p0, Ll97;->c:Lmz7;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll97;->b:Landroidx/work/RxWorker;

    iget-object p0, p0, Ll97;->c:Lmz7;

    invoke-static {v0, p0, p1}, Landroidx/work/RxWorker;->b(Landroidx/work/RxWorker;Lmz7;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
