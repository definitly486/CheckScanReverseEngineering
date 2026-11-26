.class public final synthetic Lhu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lyads/ci4;
.implements Lyads/tt3;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lhu2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/dh4;)Z
    .locals 0

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ae4;

    invoke-static {p0, p1}, Lyads/ae4;->a(Lyads/ae4;Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/LiveDataObservable;->c(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/wj;

    sget v0, Lcom/my/target/wj;->k:I

    iput-object p1, p0, Lcom/my/target/wj;->i:Le6a;

    return-void
.end method

.method public invoke(D)D
    .locals 0

    .line 10
    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->f(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ub0;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/bq2;->a(Lyads/ub0;Lyads/iw4;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Loz7$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Loz7$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhu2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->b(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
