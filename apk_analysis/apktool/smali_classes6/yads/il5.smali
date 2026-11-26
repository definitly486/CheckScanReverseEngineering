.class public final Lyads/il5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/li4;


# instance fields
.field public final a:Lyads/sd4;

.field public final b:Lyads/e95;

.field public final c:Lyads/u8;

.field public final d:Lyads/o50;


# direct methods
.method public constructor <init>(Lyads/sd4;)V
    .locals 3

    new-instance v0, Lyads/e95;

    invoke-direct {v0}, Lyads/e95;-><init>()V

    new-instance v1, Lyads/u8;

    invoke-direct {v1}, Lyads/u8;-><init>()V

    new-instance v2, Lyads/o50;

    invoke-direct {v2}, Lyads/o50;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/il5;->a:Lyads/sd4;

    iput-object v0, p0, Lyads/il5;->b:Lyads/e95;

    iput-object v1, p0, Lyads/il5;->c:Lyads/u8;

    iput-object v2, p0, Lyads/il5;->d:Lyads/o50;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;
    .locals 2

    iget-object v0, p0, Lyads/il5;->b:Lyads/e95;

    iget-object v1, p0, Lyads/il5;->a:Lyads/sd4;

    invoke-virtual {v0, p1, p2}, Lyads/e95;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p2

    if-eqz p3, :cond_0

    iget-object v0, v0, Lyads/e95;->b:Lyads/yg4;

    invoke-virtual {v0, p3}, Lyads/yg4;->a(Lyads/vg4;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image_sizes"

    invoke-virtual {p2, p3, v0}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string p3, "ad_id"

    iget-object v0, v1, Lyads/sd4;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, v1, Lyads/sd4;->k:Lyads/ai4;

    iget-object p3, p3, Lyads/ai4;->a:Ljava/util/LinkedHashMap;

    if-eqz p3, :cond_1

    iget-object v0, p2, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object p3, p0, Lyads/il5;->c:Lyads/u8;

    iget-object v0, p1, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {p3, v0}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object p3

    iget-object p0, p0, Lyads/il5;->d:Lyads/o50;

    invoke-virtual {p0, p1}, Lyads/o50;->a(Lyads/e4;)Lyads/h75;

    move-result-object p0

    invoke-static {p2, p3}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p1

    invoke-static {p1, p0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p0

    return-object p0
.end method
