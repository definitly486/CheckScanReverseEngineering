.class public final Lfm1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lio/grpc/a;

.field public c:Lxy3;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lfm1$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lfm1$a;

    iget-object v0, p0, Lfm1$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lfm1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfm1$a;->b:Lio/grpc/a;

    iget-object v1, p1, Lfm1$a;->b:Lio/grpc/a;

    invoke-virtual {v0, v1}, Lio/grpc/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lfm1$a;->c:Lxy3;

    iget-object p1, p1, Lfm1$a;->c:Lxy3;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lfm1$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lfm1$a;->b:Lio/grpc/a;

    const/4 v2, 0x0

    iget-object p0, p0, Lfm1$a;->c:Lxy3;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
