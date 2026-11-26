.class public final Lyads/e40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e95;

.field public final b:Lyads/u8;

.field public final c:Lyads/o50;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/e95;

    invoke-direct {v0}, Lyads/e95;-><init>()V

    new-instance v1, Lyads/u8;

    invoke-direct {v1}, Lyads/u8;-><init>()V

    new-instance v2, Lyads/o50;

    invoke-direct {v2}, Lyads/o50;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/e40;->a:Lyads/e95;

    iput-object v1, p0, Lyads/e40;->b:Lyads/u8;

    iput-object v2, p0, Lyads/e40;->c:Lyads/o50;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e4;Lyads/d9;)Lyads/h75;
    .locals 3

    iget-object v0, p0, Lyads/e40;->a:Lyads/e95;

    invoke-virtual {v0, p1, p2}, Lyads/e95;->b(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p2

    iget-object v0, p0, Lyads/e40;->b:Lyads/u8;

    iget-object v1, p1, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {v0, v1}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v0

    iget-object p0, p0, Lyads/e40;->c:Lyads/o50;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    iget p1, p1, Lyads/e4;->n:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const-string p1, "undefined"

    goto :goto_1

    :cond_2
    const-string p1, "landscape"

    goto :goto_1

    :cond_3
    const-string p1, "portrait"

    :goto_1
    const-string v1, "orientation"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p1

    iget-object p2, p1, Lyads/h75;->b:Lyads/c;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p2

    :goto_2
    iget-object p1, p1, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p1, p0}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Lyads/h75;

    invoke-direct {p1, p0, v2}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method
