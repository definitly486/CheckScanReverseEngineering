.class public abstract Llj3;
.super Ldz4;
.source "SourceFile"


# instance fields
.field public final a:Lez4;


# direct methods
.method public constructor <init>(Lez4;)V
    .locals 0

    invoke-direct {p0}, Ly81;-><init>()V

    iput-object p1, p0, Llj3;->a:Lez4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llj3;->a:Lez4;

    iget-object p0, p0, Lez4;->u:Ly81;

    invoke-virtual {p0}, Ly81;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lra5;Lio/grpc/b;)Lrl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/b;",
            ")",
            "Lrl1<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    iget-object p0, p0, Llj3;->a:Lez4;

    iget-object p0, p0, Lez4;->u:Ly81;

    invoke-virtual {p0, p1, p2}, Ly81;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    iget-object p0, p0, Llj3;->a:Lez4;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
