.class public final Luy3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lwu0;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lwu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy3$b;->b:Lwu0;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Luy3$b;->b:Lwu0;

    invoke-interface {p0}, Lv48;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final t0(Lbu0;J)J
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget v0, p0, Luy3$b;->f:I

    iget-object v1, p0, Luy3$b;->b:Lwu0;

    const-wide/16 v2, -0x1

    if-nez v0, :cond_4

    iget v0, p0, Luy3$b;->g:I

    int-to-long v4, v0

    invoke-interface {v1, v4, v5}, Lwu0;->skip(J)V

    const/4 v0, 0x0

    iput v0, p0, Luy3$b;->g:I

    iget v0, p0, Luy3$b;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Luy3$b;->e:I

    invoke-static {v1}, Lgb9;->s(Lwu0;)I

    move-result v2

    iput v2, p0, Luy3$b;->f:I

    iput v2, p0, Luy3$b;->c:I

    invoke-interface {v1}, Lwu0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1}, Lwu0;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Luy3$b;->d:I

    sget-object v3, Luy3;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lfy3;->a:Lfy3;

    iget v5, p0, Luy3$b;->e:I

    iget v6, p0, Luy3$b;->c:I

    iget v7, p0, Luy3$b;->d:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v4, v5, v6, v2, v7}, Lfy3;->a(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lwu0;->readInt()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    iput v1, p0, Luy3$b;->e:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "TYPE_CONTINUATION streamId changed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != TYPE_CONTINUATION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v1, p1, p2, p3}, Lv48;->t0(Lbu0;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_5

    :goto_1
    return-wide v2

    :cond_5
    iget p3, p0, Luy3$b;->f:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Luy3$b;->f:I

    return-wide p1
.end method
