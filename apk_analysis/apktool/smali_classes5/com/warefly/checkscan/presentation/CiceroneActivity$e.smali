.class public final Lcom/warefly/checkscan/presentation/CiceroneActivity$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/CiceroneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/CiceroneActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;->f:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;->f:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget v0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s:I

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->j:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce2;

    invoke-virtual {v0, p1}, Lce2;->a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->x(Landroid/net/Uri;Z)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
