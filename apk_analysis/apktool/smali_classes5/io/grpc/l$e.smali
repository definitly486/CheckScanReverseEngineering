.class public final Lio/grpc/l$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/l$e$a;
    }
.end annotation


# instance fields
.field public final a:Ln88;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln88<",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lio/grpc/a;

.field public final c:Lio/grpc/l$b;


# direct methods
.method public constructor <init>(Ln88;Lio/grpc/a;Lio/grpc/l$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln88<",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;>;",
            "Lio/grpc/a;",
            "Lio/grpc/l$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/l$e;->a:Ln88;

    const-string p1, "attributes"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/l$e;->b:Lio/grpc/a;

    iput-object p3, p0, Lio/grpc/l$e;->c:Lio/grpc/l$b;

    return-void
.end method

.method public static a()Lio/grpc/l$e$a;
    .locals 4

    new-instance v0, Lio/grpc/l$e$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    new-instance v2, Ln88;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Ln88;-><init>(Lh88;Ljava/lang/Object;)V

    iput-object v2, v0, Lio/grpc/l$e$a;->a:Ln88;

    sget-object v1, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v1, v0, Lio/grpc/l$e$a;->b:Lio/grpc/a;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/grpc/l$e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/grpc/l$e;

    iget-object v0, p0, Lio/grpc/l$e;->a:Ln88;

    iget-object v1, p1, Lio/grpc/l$e;->a:Ln88;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/l$e;->b:Lio/grpc/a;

    iget-object v1, p1, Lio/grpc/l$e;->b:Lio/grpc/a;

    invoke-virtual {v0, v1}, Lio/grpc/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/grpc/l$e;->c:Lio/grpc/l$b;

    iget-object p1, p1, Lio/grpc/l$e;->c:Lio/grpc/l$b;

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
    .locals 2

    iget-object v0, p0, Lio/grpc/l$e;->b:Lio/grpc/a;

    iget-object v1, p0, Lio/grpc/l$e;->c:Lio/grpc/l$b;

    iget-object p0, p0, Lio/grpc/l$e;->a:Ln88;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/l$e;->a:Ln88;

    invoke-virtual {v1}, Ln88;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addressesOrError"

    invoke-virtual {v0, v1, v2}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributes"

    iget-object v2, p0, Lio/grpc/l$e;->b:Lio/grpc/a;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceConfigOrError"

    iget-object p0, p0, Lio/grpc/l$e;->c:Lio/grpc/l$b;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
