.class public abstract Lz03;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz03$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lz03;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()Lsx2;
.end method

.method public abstract e()J
.end method

.method public abstract f()[B
.end method

.method public abstract g()[B
.end method

.method public final h(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lz03;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public abstract i()Ljava/lang/Integer;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()J
.end method

.method public final m()Lsy$a;
    .locals 3

    new-instance v0, Lsy$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lz03;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v1, v0, Lsy$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lz03;->c()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lsy$a;->b:Ljava/lang/Integer;

    invoke-virtual {p0}, Lz03;->i()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lsy$a;->g:Ljava/lang/Integer;

    invoke-virtual {p0}, Lz03;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsy$a;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lz03;->f()[B

    move-result-object v1

    iput-object v1, v0, Lsy$a;->i:[B

    invoke-virtual {p0}, Lz03;->g()[B

    move-result-object v1

    iput-object v1, v0, Lsy$a;->j:[B

    invoke-virtual {p0}, Lz03;->d()Lsx2;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v0, Lsy$a;->c:Lsx2;

    invoke-virtual {p0}, Lz03;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lsy$a;->d:Ljava/lang/Long;

    invoke-virtual {p0}, Lz03;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lsy$a;->e:Ljava/lang/Long;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lz03;->b()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lsy$a;->f:Ljava/util/HashMap;

    return-object v0

    :cond_0
    const-string p0, "Null encodedPayload"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "Null transportName"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v2
.end method
