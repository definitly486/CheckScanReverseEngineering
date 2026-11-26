.class public final Lyads/bn3;
.super Lyads/es;
.source "SourceFile"


# instance fields
.field public final w:Landroid/content/Context;

.field public final x:Lyads/a85;

.field public final y:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyads/a85;Ljava/util/Map;Lyads/ch3;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lyads/es;-><init>(Landroid/content/Context;ILjava/lang/String;Lyads/ds;Lyads/w75;)V

    iput-object v1, v0, Lyads/bn3;->w:Landroid/content/Context;

    iput-object p3, v0, Lyads/bn3;->x:Lyads/a85;

    iput-object p4, v0, Lyads/bn3;->y:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)Lyads/hi6;
    .locals 0

    .line 52
    return-object p1
.end method

.method public final a(Lyads/en4;)Lyads/z85;
    .locals 2

    iget v0, p1, Lyads/en4;->a:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lyads/bn3;->x:Lyads/a85;

    invoke-interface {p0, p1}, Lyads/a85;->a(Lyads/en4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dg0;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p1

    new-instance v0, Lyads/z85;

    invoke-direct {v0, p0, p1}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object v0

    :cond_0
    new-instance p0, Lyads/i4;

    sget-object v0, Lyads/o4;->c:Lyads/o4;

    invoke-direct {p0, v0, p1}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p1

    :cond_1
    new-instance p0, Lyads/i4;

    sget-object v0, Lyads/o4;->e:Lyads/o4;

    invoke-direct {p0, v0, p1}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p1
.end method

.method public final d()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lyads/bn3;->w:Landroid/content/Context;

    invoke-static {v1, v0}, Lyads/qa3;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    iget-object p0, p0, Lyads/bn3;->y:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
