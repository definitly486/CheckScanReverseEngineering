.class public final synthetic Lbz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/work/Tracer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/Tracer;Ljava/lang/String;Lll3;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz5;->b:Landroidx/work/Tracer;

    iput-object p2, p0, Lbz5;->c:Ljava/lang/String;

    iput-object p3, p0, Lbz5;->d:Lll3;

    iput-object p4, p0, Lbz5;->e:Landroidx/lifecycle/MutableLiveData;

    iput-object p5, p0, Lbz5;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbz5;->e:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lbz5;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Lbz5;->b:Landroidx/work/Tracer;

    iget-object v3, p0, Lbz5;->c:Ljava/lang/String;

    iget-object p0, p0, Lbz5;->d:Lll3;

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/work/OperationKt;->b(Landroidx/work/Tracer;Ljava/lang/String;Lll3;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
