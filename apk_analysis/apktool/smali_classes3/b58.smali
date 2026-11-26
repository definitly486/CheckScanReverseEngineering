.class public final Lb58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final b:Lwu0;


# direct methods
.method public synthetic constructor <init>(Lwu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb58;->b:Lwu0;

    return-void
.end method


# virtual methods
.method public final a(Lbu0;)Lj59;
    .locals 0

    iget-object p0, p0, Lb58;->b:Lwu0;

    invoke-interface {p0, p1}, Lwu0;->o0(Ls18;)J

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lb58;->b:Lwu0;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb58;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lb58;

    iget-object p1, p1, Lb58;->b:Lwu0;

    iget-object p0, p0, Lb58;->b:Lwu0;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lb58;->b:Lwu0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceResponseBody(source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb58;->b:Lwu0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
