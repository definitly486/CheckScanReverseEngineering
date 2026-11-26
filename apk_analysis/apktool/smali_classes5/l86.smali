.class public final Ll86;
.super Lio/grpc/h$h;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/b;

.field public final b:Lla5;

.field public final c:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "**>;"
        }
    .end annotation
.end field

.field public final d:Lio/grpc/h$f;


# direct methods
.method public constructor <init>(Lra5;Lla5;Lio/grpc/b;Lio/grpc/h$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lra5<",
            "**>;",
            "Lla5;",
            "Lio/grpc/b;",
            "Lio/grpc/h$f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "method"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ll86;->c:Lra5;

    const-string p1, "headers"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ll86;->b:Lla5;

    const-string p1, "callOptions"

    invoke-static {p3, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ll86;->a:Lio/grpc/b;

    const-string p1, "pickDetailsConsumer"

    invoke-static {p4, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Ll86;->d:Lio/grpc/h$f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Ll86;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ll86;

    iget-object v2, p0, Ll86;->a:Lio/grpc/b;

    iget-object v3, p1, Ll86;->a:Lio/grpc/b;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ll86;->b:Lla5;

    iget-object v3, p1, Ll86;->b:Lla5;

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ll86;->c:Lra5;

    iget-object v3, p1, Ll86;->c:Lra5;

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Ll86;->d:Lio/grpc/h$f;

    iget-object p1, p1, Ll86;->d:Lio/grpc/h$f;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ll86;->c:Lra5;

    iget-object v1, p0, Ll86;->d:Lio/grpc/h$f;

    iget-object v2, p0, Ll86;->a:Lio/grpc/b;

    iget-object p0, p0, Ll86;->b:Lla5;

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll86;->c:Lra5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll86;->b:Lla5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll86;->a:Lio/grpc/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
