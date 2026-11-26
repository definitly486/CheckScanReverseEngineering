.class public final Lyads/ql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ol;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lyads/os4;


# direct methods
.method public constructor <init>(Lyads/kl;Lyads/vz2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lyads/kl;->b:Lyads/os4;

    iput-object p1, p0, Lyads/ql;->c:Lyads/os4;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    invoke-virtual {p1}, Lyads/os4;->n()I

    move-result v0

    iget-object v1, p2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lyads/vz2;->B:I

    iget p2, p2, Lyads/vz2;->z:I

    invoke-static {v1, p2}, Lyads/u56;->a(II)I

    move-result p2

    if-eqz v0, :cond_0

    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lyads/ql;->a:I

    invoke-virtual {p1}, Lyads/os4;->n()I

    move-result p1

    iput p1, p0, Lyads/ql;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/ql;->a:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyads/ql;->b:I

    return p0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lyads/ql;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/ql;->c:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->n()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method
