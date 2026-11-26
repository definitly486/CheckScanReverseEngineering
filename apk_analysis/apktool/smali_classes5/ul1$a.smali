.class public final Lul1$a;
.super Ll0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ll0<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final i:Lrl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1<",
            "*TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrl1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1<",
            "*TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ll0;-><init>()V

    iput-object p1, p0, Lul1$a;->i:Lrl1;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 2

    const-string v0, "GrpcFuture was cancelled"

    const/4 v1, 0x0

    iget-object p0, p0, Lul1$a;->i:Lrl1;

    invoke-virtual {p0, v0, v1}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "clientCall"

    iget-object p0, p0, Lul1$a;->i:Lrl1;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
