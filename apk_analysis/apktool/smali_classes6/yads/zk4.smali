.class public final Lyads/zk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ac6;


# instance fields
.field public final a:Lyads/e4;


# direct methods
.method public constructor <init>(Lyads/e4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zk4;->a:Lyads/e4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lyads/zk4;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->c:Lyads/ma;

    iget-object v0, v0, Lyads/ma;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "undefined"

    :cond_1
    new-instance v1, Lb36;

    const-string v2, "ad_unit_id"

    invoke-direct {v1, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/zk4;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->a:Lyads/n70;

    iget-object p0, p0, Lyads/n70;->b:Ljava/lang/String;

    new-instance v0, Lb36;

    const-string v2, "ad_type"

    invoke-direct {v0, v2, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
