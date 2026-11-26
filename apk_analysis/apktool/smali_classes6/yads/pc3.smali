.class public final Lyads/pc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yc3;


# instance fields
.field public final synthetic a:Lyads/sc3;

.field public final synthetic b:Lc31;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/sc3;Lc31;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyads/pc3;->a:Lyads/sc3;

    iput-object p2, p0, Lyads/pc3;->b:Lc31;

    iput-object p3, p0, Lyads/pc3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lyads/pc3;->a:Lyads/sc3;

    iget-object p0, p0, Lyads/pc3;->b:Lc31;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    .line 55
    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/xc3;Z)V
    .locals 2

    iget-object p1, p1, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lyads/pc3;->a:Lyads/sc3;

    iget-object v0, p0, Lyads/pc3;->b:Lc31;

    new-instance v1, Lyads/ac3;

    iget-object p0, p0, Lyads/pc3;->c:Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Lyads/ac3;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lno5;

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lyads/pc3;->a:Lyads/sc3;

    iget-object p0, p0, Lyads/pc3;->b:Lc31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
