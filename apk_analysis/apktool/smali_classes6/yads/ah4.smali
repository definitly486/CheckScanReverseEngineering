.class public final Lyads/ah4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/xh4;

.field public final c:Lyads/u64;

.field public d:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/e4;)V
    .locals 2

    new-instance v0, Lyads/xh4;

    invoke-direct {v0}, Lyads/xh4;-><init>()V

    new-instance v1, Lyads/u64;

    invoke-direct {v1}, Lyads/u64;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ah4;->a:Lyads/e4;

    iput-object v0, p0, Lyads/ah4;->b:Lyads/xh4;

    iput-object v1, p0, Lyads/ah4;->c:Lyads/u64;

    return-void
.end method


# virtual methods
.method public final a()Lyads/h75;
    .locals 5

    new-instance v0, Lyads/h75;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    iget-object v1, p0, Lyads/ah4;->d:Lyads/d9;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lyads/ah4;->b:Lyads/xh4;

    iget-object v3, v1, Lyads/d9;->t:Ljava/lang/Object;

    check-cast v3, Lyads/vg4;

    iget-object v4, p0, Lyads/ah4;->a:Lyads/e4;

    invoke-virtual {v2, v4, v1, v3}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object v0

    iget-object v1, p0, Lyads/ah4;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->k:Lyads/x54;

    iget-object p0, p0, Lyads/ah4;->c:Lyads/u64;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/u64;->a(Lyads/x54;)Lyads/h75;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/h75;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {p0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
