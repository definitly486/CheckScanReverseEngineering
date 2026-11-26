.class public final Li53;
.super Ld31;
.source "SourceFile"


# instance fields
.field public h:Z

.field public final i:Lh88;

.field public final j:Ldm1$a;

.field public final k:[Lio/grpc/c;


# direct methods
.method public constructor <init>(Lh88;Ldm1$a;[Lio/grpc/c;)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld31;-><init>(I)V

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Li53;->i:Lh88;

    iput-object p2, p0, Li53;->j:Ldm1$a;

    iput-object p3, p0, Li53;->k:[Lio/grpc/c;

    return-void
.end method


# virtual methods
.method public final i(Ldm1;)V
    .locals 5

    iget-boolean v0, p0, Li53;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Li53;->h:Z

    iget-object v0, p0, Li53;->k:[Lio/grpc/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Li53;->i:Lh88;

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ly14;->N(Lh88;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    iget-object p0, p0, Li53;->j:Ldm1$a;

    invoke-interface {p1, v3, p0, v0}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void
.end method

.method public final l(Ly54;)V
    .locals 2

    const-string v0, "error"

    iget-object v1, p0, Li53;->i:Lh88;

    invoke-virtual {p1, v1, v0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    iget-object p0, p0, Li53;->j:Ldm1$a;

    invoke-virtual {p1, p0, v0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
