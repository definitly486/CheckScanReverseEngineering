.class public final Lz47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz47$a;
    }
.end annotation


# instance fields
.field public final b:Lb37;

.field public final c:Lts6;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Llu3;

.field public final g:Ljv3;

.field public final h:Lb57;

.field public final i:Lz47;

.field public final j:Lz47;

.field public final k:Lz47;

.field public final l:J

.field public final m:J

.field public final n:Ln13;

.field public o:Lmx0;


# direct methods
.method public constructor <init>(Lb37;Lts6;Ljava/lang/String;ILlu3;Ljv3;Lb57;Lz47;Lz47;Lz47;JJLn13;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz47;->b:Lb37;

    iput-object p2, p0, Lz47;->c:Lts6;

    iput-object p3, p0, Lz47;->d:Ljava/lang/String;

    iput p4, p0, Lz47;->e:I

    iput-object p5, p0, Lz47;->f:Llu3;

    iput-object p6, p0, Lz47;->g:Ljv3;

    iput-object p7, p0, Lz47;->h:Lb57;

    iput-object p8, p0, Lz47;->i:Lz47;

    iput-object p9, p0, Lz47;->j:Lz47;

    iput-object p10, p0, Lz47;->k:Lz47;

    iput-wide p11, p0, Lz47;->l:J

    iput-wide p13, p0, Lz47;->m:J

    iput-object p15, p0, Lz47;->n:Ln13;

    return-void
.end method

.method public static n(Lz47;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lz47;->g:Ljv3;

    invoke-virtual {p0, p1}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lz47;->h:Lb57;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb57;->close()V

    return-void

    :cond_0
    const-string p0, "response is not eligible for a body and must not be closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lmx0;
    .locals 1

    iget-object v0, p0, Lz47;->o:Lmx0;

    if-nez v0, :cond_0

    sget v0, Lmx0;->n:I

    iget-object v0, p0, Lz47;->g:Ljv3;

    invoke-static {v0}, Lmx0$b;->a(Ljv3;)Lmx0;

    move-result-object v0

    iput-object v0, p0, Lz47;->o:Lmx0;

    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget p0, p0, Lz47;->e:I

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final p()Lz47$a;
    .locals 3

    new-instance v0, Lz47$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lz47;->b:Lb37;

    iput-object v1, v0, Lz47$a;->a:Lb37;

    iget-object v1, p0, Lz47;->c:Lts6;

    iput-object v1, v0, Lz47$a;->b:Lts6;

    iget v1, p0, Lz47;->e:I

    iput v1, v0, Lz47$a;->c:I

    iget-object v1, p0, Lz47;->d:Ljava/lang/String;

    iput-object v1, v0, Lz47$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lz47;->f:Llu3;

    iput-object v1, v0, Lz47$a;->e:Llu3;

    iget-object v1, p0, Lz47;->g:Ljv3;

    invoke-virtual {v1}, Ljv3;->d()Ljv3$a;

    move-result-object v1

    iput-object v1, v0, Lz47$a;->f:Ljv3$a;

    iget-object v1, p0, Lz47;->h:Lb57;

    iput-object v1, v0, Lz47$a;->g:Lb57;

    iget-object v1, p0, Lz47;->i:Lz47;

    iput-object v1, v0, Lz47$a;->h:Lz47;

    iget-object v1, p0, Lz47;->j:Lz47;

    iput-object v1, v0, Lz47$a;->i:Lz47;

    iget-object v1, p0, Lz47;->k:Lz47;

    iput-object v1, v0, Lz47$a;->j:Lz47;

    iget-wide v1, p0, Lz47;->l:J

    iput-wide v1, v0, Lz47$a;->k:J

    iget-wide v1, p0, Lz47;->m:J

    iput-wide v1, v0, Lz47$a;->l:J

    iget-object p0, p0, Lz47;->n:Ln13;

    iput-object p0, v0, Lz47$a;->m:Ln13;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz47;->c:Lts6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz47;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz47;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz47;->b:Lb37;

    iget-object p0, p0, Lb37;->a:Lfz3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
