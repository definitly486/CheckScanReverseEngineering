.class public final Lcom/warefly/checkscan/presentation/CiceroneActivity$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/CiceroneActivity;->v(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/net/Uri;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/CiceroneActivity;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/warefly/checkscan/presentation/CiceroneActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->f:Landroid/net/Uri;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->g:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->h:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->f:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1401f5

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->g:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$c;->h:Z

    invoke-virtual {v2, p1, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->x(Landroid/net/Uri;Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
