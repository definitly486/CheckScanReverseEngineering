.class public final Lio/grpc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lio/grpc/a;

.field public b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/a$b<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/a;
    .locals 2

    iget-object v0, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    new-instance v0, Lio/grpc/a;

    iget-object v1, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1}, Lio/grpc/a;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object p0, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    return-object p0
.end method

.method public final b(I)Ljava/util/IdentityHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/a$b<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    iget-object v1, v1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    iget-object p1, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    iget-object p1, p1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/a$a;->a:Lio/grpc/a;

    :cond_0
    iget-object p0, p0, Lio/grpc/a$a;->b:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method public final c(Lio/grpc/a$b;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/a$a;->b(I)Ljava/util/IdentityHashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
