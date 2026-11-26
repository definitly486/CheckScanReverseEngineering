.class public final Lyads/od5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g9;


# instance fields
.field public final a:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/od5;->a:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 3

    new-instance v0, Lyads/h75;

    sget-object v1, Lmx2;->b:Lmx2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->l:Ljava/lang/String;

    const-string v2, "ad_source"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->b:Ljava/lang/String;

    const-string v2, "ad_type_format"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->e:Ljava/lang/String;

    const-string v2, "ad_unit_id"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->d:Ljava/lang/String;

    const-string v2, "product_type"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->o:Ljava/lang/String;

    const-string v2, "server_log_id"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    invoke-virtual {v1}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v1

    iget-object v1, v1, Lyads/wx2;->a:Lyads/rl5;

    iget-object v1, v1, Lyads/rl5;->b:Ljava/lang/String;

    const-string v2, "size_type"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    invoke-virtual {v1}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v1

    iget v1, v1, Lyads/wx2;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/od5;->a:Lyads/d9;

    invoke-virtual {v1}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v1

    iget v1, v1, Lyads/wx2;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyads/od5;->a:Lyads/d9;

    iget-object p0, p0, Lyads/d9;->i:Lyads/c;

    iput-object p0, v0, Lyads/h75;->b:Lyads/c;

    return-object v0
.end method
