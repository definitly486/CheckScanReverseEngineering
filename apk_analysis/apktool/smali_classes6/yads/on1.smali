.class public final Lyads/on1;
.super Lyads/lu0;
.source "SourceFile"


# instance fields
.field public final a:Lyads/do0;


# direct methods
.method public constructor <init>(Lyads/do0;)V
    .locals 0

    invoke-direct {p0}, Lyads/lu0;-><init>()V

    iput-object p1, p0, Lyads/on1;->a:Lyads/do0;

    return-void
.end method


# virtual methods
.method public final a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z
    .locals 3

    iget-object v0, p1, Lyads/xr0;->k:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileads"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeDialog"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/on1;->a:Lyads/do0;

    invoke-virtual {p0}, Lyads/do0;->e()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
