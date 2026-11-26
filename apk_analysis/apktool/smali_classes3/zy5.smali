.class public final synthetic Lzy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/work/Tracer;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lll3;

.field public final synthetic f:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lll3;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy5;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lzy5;->c:Landroidx/work/Tracer;

    iput-object p3, p0, Lzy5;->d:Ljava/lang/String;

    iput-object p4, p0, Lzy5;->e:Lll3;

    iput-object p5, p0, Lzy5;->f:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lzy5;->e:Lll3;

    iget-object v4, p0, Lzy5;->f:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lzy5;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lzy5;->c:Landroidx/work/Tracer;

    iget-object v2, p0, Lzy5;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/work/OperationKt;->a(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lll3;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lj59;

    move-result-object p0

    return-object p0
.end method
