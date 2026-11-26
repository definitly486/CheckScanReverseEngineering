.class public final Lyads/k04;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Lyads/oe3;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k04;->a:Landroid/net/Uri;

    iput-object p3, p0, Lyads/k04;->b:Ljava/util/List;

    iput-object p4, p0, Lyads/k04;->c:Ljava/lang/String;

    iput-object p5, p0, Lyads/k04;->d:Lyads/oe3;

    invoke-static {}, Lyads/oe3;->f()Lyads/ke3;

    move-result-object p0

    invoke-virtual {p5}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lyads/ke3;->a()Lyads/k55;

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n04;

    invoke-virtual {p0}, Lyads/n04;->a()Lyads/o04;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/k04;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/k04;

    iget-object v1, p0, Lyads/k04;->a:Landroid/net/Uri;

    iget-object v3, p1, Lyads/k04;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lyads/k04;->b:Ljava/util/List;

    iget-object v4, p1, Lyads/k04;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lyads/k04;->c:Ljava/lang/String;

    iget-object v4, p1, Lyads/k04;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lyads/k04;->d:Lyads/oe3;

    iget-object p1, p1, Lyads/k04;->d:Lyads/oe3;

    invoke-virtual {p0, p1}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1, v1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/k04;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const v1, 0xe1781

    mul-int/2addr v0, v1

    iget-object v1, p0, Lyads/k04;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/k04;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/k04;->d:Lyads/oe3;

    invoke-virtual {p0}, Lyads/oe3;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
