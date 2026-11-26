.class public final Lra5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lra5$a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lns6$a;

.field public final e:Lns6$a;


# direct methods
.method public constructor <init>(Lra5$a;Ljava/lang/String;Lns6$a;Lns6$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lra5;->a:Lra5$a;

    iput-object p2, p0, Lra5;->b:Ljava/lang/String;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lra5;->c:Ljava/lang/String;

    iput-object p3, p0, Lra5;->d:Lns6$a;

    iput-object p4, p0, Lra5;->e:Lns6$a;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "fullMethodName"

    iget-object v2, p0, Lra5;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lra5;->a:Lra5$a;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idempotent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lod5$a;->c(Ljava/lang/String;Z)V

    const-string v1, "safe"

    invoke-virtual {v0, v1, v2}, Lod5$a;->c(Ljava/lang/String;Z)V

    const-string v1, "sampledToLocalTracing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lod5$a;->c(Ljava/lang/String;Z)V

    const-string v1, "requestMarshaller"

    iget-object v3, p0, Lra5;->d:Lns6$a;

    invoke-virtual {v0, v3, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "responseMarshaller"

    iget-object p0, p0, Lra5;->e:Lns6$a;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "schemaDescriptor"

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, v0, Lod5$a;->d:Z

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
