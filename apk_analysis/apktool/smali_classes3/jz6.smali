.class public final Ljz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljz6$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lrf9;

.field public final c:Ljz6$b;


# direct methods
.method public constructor <init>(JLrf9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljz6;->a:J

    iput-object p3, p0, Ljz6;->b:Lrf9;

    new-instance p3, Ljz6$b;

    invoke-direct {p3, p0, p1, p2}, Ljz6$b;-><init>(Ljz6;J)V

    iput-object p3, p0, Ljz6;->c:Ljz6$b;

    return-void
.end method


# virtual methods
.method public final a(Lo95$b;)Lo95$c;
    .locals 1

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    iget-object p0, p0, Lhy4;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljz6$a;

    if-eqz p0, :cond_0

    new-instance p1, Lo95$c;

    iget-object v0, p0, Ljz6$a;->a:Lx04;

    iget-object p0, p0, Ljz6$a;->b:Ljava/util/Map;

    invoke-direct {p1, v0, p0}, Lo95$c;-><init>(Lx04;Ljava/util/Map;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    iput-wide p1, p0, Lhy4;->b:J

    invoke-virtual {p0, p1, p2}, Lhy4;->d(J)V

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Ljz6;->a:J

    return-wide v0
.end method

.method public final clear()V
    .locals 2

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lhy4;->d(J)V

    return-void
.end method

.method public final d(Lo95$b;Lx04;Ljava/util/Map;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo95$b;",
            "Lx04;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Ljz6;->c:Ljz6$b;

    iget-wide v1, v0, Lhy4;->b:J

    iget-object v3, v0, Lhy4;->a:Ljava/util/LinkedHashMap;

    cmp-long v1, p4, v1

    if-gtz v1, :cond_1

    new-instance p0, Ljz6$a;

    invoke-direct {p0, p2, p3, p4, p5}, Ljz6$a;-><init>(Lx04;Ljava/util/Map;J)V

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Lhy4;->b()J

    move-result-wide p3

    invoke-virtual {v0, p1, p0}, Lhy4;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    add-long/2addr v1, p3

    iput-wide v1, v0, Lhy4;->c:J

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lhy4;->b()J

    move-result-wide p3

    invoke-virtual {v0, p1, p2}, Lhy4;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, v0, Lhy4;->c:J

    invoke-virtual {v0, p1, p2, p0}, Ljz6$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-wide p0, v0, Lhy4;->b:J

    invoke-virtual {v0, p0, p1}, Lhy4;->d(J)V

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lhy4;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1}, Lhy4;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lhy4;->c:J

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ljz6$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Ljz6;->b:Lrf9;

    invoke-interface/range {p0 .. p5}, Lrf9;->d(Lo95$b;Lx04;Ljava/util/Map;J)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    invoke-virtual {p0, p1, p2}, Lhy4;->d(J)V

    return-void
.end method

.method public final f(Lo95$b;)Z
    .locals 5

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    iget-object v0, p0, Lhy4;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhy4;->b()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0}, Lhy4;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lhy4;->c:J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljz6$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getSize()J
    .locals 2

    iget-object p0, p0, Ljz6;->c:Ljz6$b;

    invoke-virtual {p0}, Lhy4;->b()J

    move-result-wide v0

    return-wide v0
.end method
