.class public final Lrv3$b;
.super Lrj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/grpc/h$j;

.field public final b:Lio/grpc/h$l;


# direct methods
.method public constructor <init>(Lio/grpc/h$j;Lio/grpc/h$l;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/h$j;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lrv3$b;->a:Lio/grpc/h$j;

    const-string p1, "healthListener"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lrv3$b;->b:Lio/grpc/h$l;

    return-void
.end method


# virtual methods
.method public final c()Lio/grpc/a;
    .locals 4

    iget-object p0, p0, Lrv3$b;->a:Lio/grpc/h$j;

    invoke-virtual {p0}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/grpc/h;->d:Lio/grpc/a$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/IdentityHashMap;

    iget-object p0, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/grpc/a;

    invoke-direct {p0, v2}, Lio/grpc/a;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p0
.end method

.method public final h(Lio/grpc/h$l;)V
    .locals 1

    new-instance v0, Lrv3$b$a;

    invoke-direct {v0, p0, p1}, Lrv3$b$a;-><init>(Lrv3$b;Lio/grpc/h$l;)V

    iget-object p0, p0, Lrv3$b;->a:Lio/grpc/h$j;

    invoke-virtual {p0, v0}, Lio/grpc/h$j;->h(Lio/grpc/h$l;)V

    return-void
.end method

.method public final j()Lio/grpc/h$j;
    .locals 0

    iget-object p0, p0, Lrv3$b;->a:Lio/grpc/h$j;

    return-object p0
.end method
