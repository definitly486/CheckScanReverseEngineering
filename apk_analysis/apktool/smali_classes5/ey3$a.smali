.class public final Ley3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Liy6;

.field public c:I

.field public d:B

.field public e:I

.field public f:I

.field public g:S


# direct methods
.method public constructor <init>(Liy6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley3$a;->b:Liy6;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Ley3$a;->b:Liy6;

    iget-object p0, p0, Liy6;->b:Lv48;

    invoke-interface {p0}, Lv48;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public final t0(Lbu0;J)J
    .locals 9

    :goto_0
    iget v0, p0, Ley3$a;->f:I

    iget-object v1, p0, Ley3$a;->b:Liy6;

    const-wide/16 v2, -0x1

    if-nez v0, :cond_4

    iget-short v0, p0, Ley3$a;->g:S

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Liy6;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Ley3$a;->g:S

    iget-byte v4, p0, Ley3$a;->d:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Ley3$a;->e:I

    invoke-static {v1}, Ley3;->c(Liy6;)I

    move-result v3

    iput v3, p0, Ley3$a;->f:I

    iput v3, p0, Ley3$a;->c:I

    invoke-virtual {v1}, Liy6;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v1}, Liy6;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Ley3$a;->d:B

    sget-object v4, Ley3;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Ley3$a;->e:I

    iget v6, p0, Ley3$a;->c:I

    iget-byte v7, p0, Ley3$a;->d:B

    const/4 v8, 0x1

    invoke-static {v8, v5, v6, v3, v7}, Ley3$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Liy6;->readInt()I

    move-result v1

    const v4, 0x7fffffff

    and-int/2addr v1, v4

    iput v1, p0, Ley3$a;->e:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "TYPE_CONTINUATION streamId changed"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s != TYPE_CONTINUATION"

    invoke-static {p1, p0}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Liy6;->t0(Lbu0;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_5

    :goto_1
    return-wide v2

    :cond_5
    iget p3, p0, Ley3$a;->f:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Ley3$a;->f:I

    return-wide p1
.end method
