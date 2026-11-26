.class public abstract Lnj3;
.super Lio/grpc/l;
.source "SourceFile"


# instance fields
.field public final b:Lio/grpc/l;


# direct methods
.method public constructor <init>(Lio/grpc/l;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/l;-><init>()V

    iput-object p1, p0, Lnj3;->b:Lio/grpc/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnj3;->b:Lio/grpc/l;

    invoke-virtual {p0}, Lio/grpc/l;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lnj3;->b:Lio/grpc/l;

    invoke-virtual {p0}, Lio/grpc/l;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lnj3;->b:Lio/grpc/l;

    invoke-virtual {p0}, Lio/grpc/l;->c()V

    return-void
.end method

.method public d(Lio/grpc/l$d;)V
    .locals 0

    iget-object p0, p0, Lnj3;->b:Lio/grpc/l;

    invoke-virtual {p0, p1}, Lio/grpc/l;->d(Lio/grpc/l$d;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    iget-object p0, p0, Lnj3;->b:Lio/grpc/l;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
