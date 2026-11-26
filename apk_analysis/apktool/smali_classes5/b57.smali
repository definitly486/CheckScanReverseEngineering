.class public abstract Lb57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb57$a;
    }
.end annotation


# instance fields
.field public b:Lb57$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract L()Lwu0;
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lb57;->L()Lwu0;

    move-result-object p0

    invoke-static {p0}, Lgb9;->d(Ljava/io/Closeable;)V

    return-void
.end method

.method public final m()[B
    .locals 5

    invoke-virtual {p0}, Lb57;->o()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lb57;->L()Lwu0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lwu0;->C()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    array-length p0, v2

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    int-to-long v3, p0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") disagree"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string p0, "Cannot buffer entire body for content length: "

    invoke-static {v0, v1, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lb57;->b:Lb57$a;

    if-nez v0, :cond_2

    new-instance v0, Lb57$a;

    invoke-virtual {p0}, Lb57;->L()Lwu0;

    move-result-object v1

    invoke-virtual {p0}, Lb57;->p()Lj95;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lj95;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    :cond_1
    invoke-direct {v0, v1, v2}, Lb57$a;-><init>(Lwu0;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lb57;->b:Lb57$a;

    :cond_2
    return-object v0
.end method

.method public abstract o()J
.end method

.method public abstract p()Lj95;
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lb57;->L()Lwu0;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lb57;->p()Lj95;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Lj95;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lha1;->b:Ljava/nio/charset/Charset;

    :cond_1
    invoke-static {v0, p0}, Lgb9;->r(Lwu0;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-interface {v0, p0}, Lwu0;->F(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
