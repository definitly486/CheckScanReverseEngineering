.class public final Lyads/bj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h80;


# instance fields
.field public final a:Lyads/x2;

.field public final b:Lyads/z03;


# direct methods
.method public constructor <init>(Lyads/x2;Lyads/z03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bj4;->a:Lyads/x2;

    iput-object p2, p0, Lyads/bj4;->b:Lyads/z03;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyads/bj4;->b:Lyads/z03;

    iget-object v0, v0, Lyads/z03;->a:Lyads/fe5;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/fe5;->t:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/bj4;->a:Lyads/x2;

    iget-object p0, p0, Lyads/x2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    return-void
.end method

.method public final onImpression(Lyads/j5;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "impression_data_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lyads/bj4;->a:Lyads/x2;

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onLeftApplication()V
    .locals 2

    iget-object p0, p0, Lyads/bj4;->a:Lyads/x2;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 2

    iget-object p0, p0, Lyads/bj4;->a:Lyads/x2;

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method
