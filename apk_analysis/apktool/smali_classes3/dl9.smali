.class public final synthetic Ldl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl9;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ldl9;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldl9;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Ldl9;->c:Lll3;

    invoke-static {v0, p0, p1}, Landroidx/work/WorkerKt;->c(Ljava/util/concurrent/Executor;Lll3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lj59;

    move-result-object p0

    return-object p0
.end method
