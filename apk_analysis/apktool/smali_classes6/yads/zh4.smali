.class public final Lyads/zh4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Ljava/lang/String;

.field public final c:Lyads/d9;

.field public final d:Lyads/vg4;

.field public final e:Lyads/li4;

.field public f:Lyads/gi4;


# direct methods
.method public constructor <init>(Lyads/e4;Ljava/lang/String;Lyads/d9;Lyads/vg4;Lyads/li4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zh4;->a:Lyads/e4;

    iput-object p2, p0, Lyads/zh4;->b:Ljava/lang/String;

    iput-object p3, p0, Lyads/zh4;->c:Lyads/d9;

    iput-object p4, p0, Lyads/zh4;->d:Lyads/vg4;

    iput-object p5, p0, Lyads/zh4;->e:Lyads/li4;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/zh4;->f:Lyads/gi4;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 4

    iget-object v0, p0, Lyads/zh4;->e:Lyads/li4;

    iget-object v1, p0, Lyads/zh4;->c:Lyads/d9;

    iget-object v2, p0, Lyads/zh4;->d:Lyads/vg4;

    iget-object v3, p0, Lyads/zh4;->a:Lyads/e4;

    invoke-interface {v0, v3, v1, v2}, Lyads/li4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v0

    iget-object v1, p0, Lyads/zh4;->f:Lyads/gi4;

    if-eqz v1, :cond_0

    const-string v2, "bind_type"

    iget-object v1, v1, Lyads/gi4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lyads/zh4;->b:Ljava/lang/String;

    const-string v2, "native_ad_type"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyads/zh4;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->d:Lyads/tl5;

    iget-object v1, v1, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v2

    iget-object v2, v2, Lyads/rl5;->b:Ljava/lang/String;

    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lyads/sl5;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lyads/zh4;->c:Lyads/d9;

    iget-object p0, p0, Lyads/d9;->i:Lyads/c;

    iput-object p0, v0, Lyads/h75;->b:Lyads/c;

    return-object v0
.end method
