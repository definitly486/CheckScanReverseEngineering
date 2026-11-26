.class public final Lyads/q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g85;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/u8;


# direct methods
.method public constructor <init>(Lyads/e4;)V
    .locals 1

    new-instance v0, Lyads/u8;

    invoke-direct {v0}, Lyads/u8;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/q8;->a:Lyads/e4;

    iput-object v0, p0, Lyads/q8;->b:Lyads/u8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lyads/q8;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->a:Lyads/n70;

    iget-object v0, v0, Lyads/n70;->b:Ljava/lang/String;

    new-instance v1, Lb36;

    const-string v2, "ad_type"

    invoke-direct {v1, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lyads/q8;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->c:Lyads/ma;

    iget-object v1, v1, Lyads/ma;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "ad_unit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lyads/q8;->b:Lyads/u8;

    iget-object p0, p0, Lyads/q8;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {v1, p0}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object p0

    iget-object p0, p0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
