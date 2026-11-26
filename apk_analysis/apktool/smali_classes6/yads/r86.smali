.class public final Lyads/r86;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x35;

.field public final b:Lyads/t10;

.field public final c:Lyads/qi5;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/x35;

    invoke-direct {v0}, Lyads/x35;-><init>()V

    new-instance v1, Lyads/u75;

    invoke-direct {v1}, Lyads/u75;-><init>()V

    new-instance v2, Lyads/t10;

    invoke-direct {v2, v1}, Lyads/t10;-><init>(Lyads/u75;)V

    new-instance v1, Lyads/qi5;

    invoke-direct {v1}, Lyads/qi5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/r86;->a:Lyads/x35;

    iput-object v2, p0, Lyads/r86;->b:Lyads/t10;

    iput-object v1, p0, Lyads/r86;->c:Lyads/qi5;

    return-void
.end method

.method public static final a(Lyads/r86;Lyads/j86;Lyads/e4;Landroid/content/Context;Lyads/m35;)Lyads/m35;
    .locals 3

    const-string v0, "charset"

    const-string v1, "UTF-8"

    invoke-virtual {p4, v0, v1}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lyads/r86;->a:Lyads/x35;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x55d4a7f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x989680

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rnd"

    invoke-virtual {p4, v1, v0}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lyads/j86;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4, v1, v0}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lyads/e4;->b:Lyads/c40;

    iget-object p1, p1, Lyads/c40;->a:Lyads/vn2;

    iget-object v0, p0, Lyads/r86;->c:Lyads/qi5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lyads/qi5;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lyads/vn2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p4, v1, v0}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mauid"

    iget-object p1, p1, Lyads/vn2;->d:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lyads/r86;->b:Lyads/t10;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p4}, Lyads/t10;->a(Landroid/content/Context;Lyads/m35;)V

    new-instance p0, Lyads/xn2;

    invoke-direct {p0, p3, p2}, Lyads/xn2;-><init>(Landroid/content/Context;Lyads/e4;)V

    invoke-virtual {p0, p3, p4}, Lyads/xn2;->a(Landroid/content/Context;Lyads/m35;)V

    return-object p4
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri;Lyads/e4;Lyads/j86;)Ljava/lang/String;
    .locals 1

    .line 133
    new-instance v0, Lq7a;

    invoke-direct {v0, p0, p4, p3, p1}, Lq7a;-><init>(Lyads/r86;Lyads/j86;Lyads/e4;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lyads/l35;->a(Landroid/net/Uri;Lnl3;)Landroid/net/Uri;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
