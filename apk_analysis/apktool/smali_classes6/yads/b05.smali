.class public final Lyads/b05;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/hw;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/hw;

    invoke-direct {v0, p1}, Lyads/hw;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/b05;->a:Lyads/hw;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static b(Lyads/rd3;)Lyads/a05;
    .locals 4

    iget-object v0, p0, Lyads/rd3;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lyads/a05;

    new-instance v2, Lyads/ql5;

    iget v3, p0, Lyads/rd3;->a:I

    iget p0, p0, Lyads/rd3;->b:I

    invoke-direct {v2, v3, p0}, Lyads/ql5;-><init>(II)V

    invoke-direct {v1, v0, v2}, Lyads/a05;-><init>(Ljava/lang/String;Lyads/ql5;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/rd3;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p1, Lyads/rd3;->c:Ljava/lang/String;

    iget-object v1, p0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lyads/b05;->a:Lyads/hw;

    sget-object v2, Lyads/un4;->d:Lyads/rn4;

    iget-object v1, v1, Lyads/hw;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object v1

    iget-object v1, v1, Lyads/un4;->c:Lyads/r46;

    iget-object v2, p1, Lyads/rd3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lyads/r46;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v5, :cond_0

    iget v4, p1, Lyads/rd3;->a:I

    iget p1, p1, Lyads/rd3;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lyads/r46;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object p0, p0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v1
.end method
