.class public final Lyads/n10;
.super Lyads/lu0;
.source "SourceFile"


# instance fields
.field public final a:Lyads/m10;


# direct methods
.method public constructor <init>(Lyads/m10;)V
    .locals 0

    invoke-direct {p0}, Lyads/lu0;-><init>()V

    iput-object p1, p0, Lyads/n10;->a:Lyads/m10;

    return-void
.end method


# virtual methods
.method public final a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z
    .locals 3

    iget-object v0, p1, Lyads/xr0;->k:Lyads/as2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "close_ad"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lyads/n10;->a:Lyads/m10;

    iget-object v1, v0, Lyads/m10;->a:Landroid/app/Dialog;

    invoke-static {v1}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    iget-object v0, v0, Lyads/m10;->b:Lyads/m2;

    invoke-virtual {v0}, Lyads/m2;->e()V

    goto :goto_0

    :cond_0
    const-string v2, "close_dialog"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/n10;->a:Lyads/m10;

    iget-object v0, v0, Lyads/m10;->a:Landroid/app/Dialog;

    invoke-static {v0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    :goto_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    move-result p0

    return p0
.end method
