.class public final Lul1$e;
.super Lul1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lul1$b<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lul1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lul1$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lul1$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lul1$a<",
            "TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrl1$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lul1$e;->c:Z

    iput-object p1, p0, Lul1$e;->a:Lul1$a;

    return-void
.end method


# virtual methods
.method public final a(Lh88;Lla5;)V
    .locals 2

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    iget-object v1, p0, Lul1$e;->a:Lul1$a;

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lul1$e;->c:Z

    if-nez p1, :cond_0

    sget-object p1, Lh88;->l:Lh88;

    const-string v0, "No value received for unary call"

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1, p2}, Lio/grpc/StatusRuntimeException;-><init>(Lh88;Lla5;)V

    invoke-virtual {v1, v0}, Ll0;->m(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object p0, p0, Lul1$e;->b:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ll0;->l(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Lio/grpc/StatusRuntimeException;

    invoke-direct {p0, p1, p2}, Lio/grpc/StatusRuntimeException;-><init>(Lh88;Lla5;)V

    invoke-virtual {v1, p0}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Lla5;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lul1$e;->c:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lul1$e;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lul1$e;->c:Z

    return-void

    :cond_0
    sget-object p0, Lh88;->l:Lh88;

    const-string p1, "More than one value received for unary call"

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0
.end method
