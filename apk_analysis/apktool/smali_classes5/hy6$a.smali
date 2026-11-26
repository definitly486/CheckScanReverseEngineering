.class public final Lhy6$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhy6;->v0()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lhy6;


# direct methods
.method public constructor <init>(Lhy6;)V
    .locals 0

    iput-object p1, p0, Lhy6$a;->b:Lhy6;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lhy6$a;->b:Lhy6;

    invoke-virtual {p0}, Lhy6;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object p0, p0, Lhy6$a;->b:Lhy6;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lhy6;->flush()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lhy6$a;->b:Lhy6;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(I)V
    .locals 1

    .line 24
    iget-object p0, p0, Lhy6$a;->b:Lhy6;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lhy6;->c:Lbu0;

    int-to-byte p1, p1

    .line 26
    invoke-virtual {v0, p1}, Lbu0;->A0(I)V

    .line 27
    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-void

    .line 28
    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lhy6$a;->b:Lhy6;

    iget-boolean v0, p0, Lhy6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhy6;->c:Lbu0;

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->write([BII)V

    invoke-virtual {p0}, Lhy6;->m()Lvu0;

    return-void

    :cond_0
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method
