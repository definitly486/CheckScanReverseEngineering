.class public final Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$b;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    return-void
.end method


# virtual methods
.method public final onClick()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lv89$g;->INSTANCE:Lv89$g;

    sget-object v1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$b;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->g(Lv89;)V

    const/4 p0, 0x1

    return p0
.end method
