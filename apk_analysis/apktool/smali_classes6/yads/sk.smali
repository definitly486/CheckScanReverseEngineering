.class public final Lyads/sk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n70;

.field public final b:Ljava/lang/String;

.field public final c:Lyads/y2;

.field public final d:Lyads/g9;

.field public e:Lyads/zh4;


# direct methods
.method public constructor <init>(Lyads/n5;Lyads/n70;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lyads/n5;->a()Lyads/y2;

    move-result-object v0

    invoke-interface {p1}, Lyads/n5;->b()Lyads/g9;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/sk;->a:Lyads/n70;

    iput-object p3, p0, Lyads/sk;->b:Ljava/lang/String;

    iput-object v0, p0, Lyads/sk;->c:Lyads/y2;

    iput-object p1, p0, Lyads/sk;->d:Lyads/g9;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 3

    iget-object v0, p0, Lyads/sk;->d:Lyads/g9;

    invoke-interface {v0}, Lyads/g9;->a()Lyads/h75;

    move-result-object v0

    iget-object v1, p0, Lyads/sk;->a:Lyads/n70;

    iget-object v1, v1, Lyads/n70;->b:Ljava/lang/String;

    const-string v2, "ad_type"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/sk;->b:Ljava/lang/String;

    const-string v2, "ad_id"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/sk;->c:Lyads/y2;

    invoke-interface {v1}, Lyads/y2;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lyads/sk;->e:Lyads/zh4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/zh4;->a()Lyads/h75;

    move-result-object p0

    invoke-static {v0, p0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
