.class public final Lyads/pi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yc3;


# instance fields
.field public final synthetic a:Lyads/ji1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/ji1;)V
    .locals 0

    iput-object p2, p0, Lyads/pi1;->a:Lyads/ji1;

    iput-object p1, p0, Lyads/pi1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lyads/pi1;->a:Lyads/ji1;

    invoke-virtual {p0}, Lyads/ji1;->a()V

    return-void
.end method

.method public final a(Lyads/xc3;Z)V
    .locals 2

    iget-object p1, p1, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/pi1;->b:Ljava/lang/String;

    iget-object p0, p0, Lyads/pi1;->a:Lyads/ji1;

    if-eqz p2, :cond_0

    sget-object p2, Lyads/hu;->c:Lyads/hu;

    goto :goto_0

    :cond_0
    sget-object p2, Lyads/hu;->b:Lyads/hu;

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lyads/uw;

    invoke-direct {v1, p1, v0, p2}, Lyads/uw;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Lyads/hu;)V

    invoke-virtual {p0, v1}, Lyads/ji1;->a(Lyads/uw;)V

    :cond_1
    return-void
.end method
