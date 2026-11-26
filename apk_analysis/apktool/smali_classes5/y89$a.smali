.class public final Ly89$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly89;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly89$a;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    iput-object p2, p0, Ly89$a;->c:Ljava/lang/String;

    iput-object p3, p0, Ly89$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj59;"
        }
    .end annotation

    iget-object v0, p0, Ly89$a;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->presenter:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ly89$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink(Ljava/lang/String;)V

    iget-object p0, p0, Ly89$a;->d:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
