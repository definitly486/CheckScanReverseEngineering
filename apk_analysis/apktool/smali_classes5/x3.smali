.class public final synthetic Lx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lyads/tt3;
.implements Lcom/my/target/m1$b;
.implements Lyads/vu5;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/r;Lao9;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lx3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Lx3;->b:I

    iput-object p1, p0, Lx3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Lyads/nr;

    invoke-virtual {p0}, Lyads/nr;->b()I

    move-result p0

    return p0
.end method

.method public a()V
    .locals 0

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Lao9;

    .line 9
    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lx3;->b:I

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->i(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ln4;

    invoke-virtual {p0, p1}, Ln4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/DeferrableSurface;->b(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Lyads/h84;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/bq2;->a(Lyads/h84;Lyads/iw4;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Lb08;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;

    invoke-direct {p1}, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;-><init>()V

    invoke-interface {p0, p1}, Lb08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
