.class public final Lio/grpc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/grpc/b;

.field public final b:I

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lio/grpc/b;IZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/c$b;->a:Lio/grpc/b;

    iput p2, p0, Lio/grpc/c$b;->b:I

    iput-boolean p3, p0, Lio/grpc/c$b;->c:Z

    iput-boolean p4, p0, Lio/grpc/c$b;->d:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "callOptions"

    iget-object v2, p0, Lio/grpc/c$b;->a:Lio/grpc/b;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "previousAttempts"

    iget v2, p0, Lio/grpc/c$b;->b:I

    invoke-virtual {v0, v2, v1}, Lod5$a;->a(ILjava/lang/String;)V

    const-string v1, "isTransparentRetry"

    iget-boolean v2, p0, Lio/grpc/c$b;->c:Z

    invoke-virtual {v0, v1, v2}, Lod5$a;->c(Ljava/lang/String;Z)V

    const-string v1, "isHedging"

    iget-boolean p0, p0, Lio/grpc/c$b;->d:Z

    invoke-virtual {v0, v1, p0}, Lod5$a;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
