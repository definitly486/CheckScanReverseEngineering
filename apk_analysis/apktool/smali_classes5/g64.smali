.class public final Lg64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg64$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lg64;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:Lg64;

.field public static final e:Lg64;


# instance fields
.field public final b:J

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg64;

    const-wide v1, -0x701cefeb9bec00L

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lg64;-><init>(JI)V

    sput-object v0, Lg64;->d:Lg64;

    new-instance v0, Lg64;

    const-wide v1, 0x701cd2fa9578ffL

    const v3, 0x3b9ac9ff

    invoke-direct {v0, v1, v2, v3}, Lg64;-><init>(JI)V

    sput-object v0, Lg64;->e:Lg64;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg64;->b:J

    iput p3, p0, Lg64;->c:I

    const-wide v0, -0x701cefeb9bec00L

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const-wide v0, 0x701cd2fa957900L

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Instant exceeds minimum or maximum instant"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 3

    sget v0, Ll64;->a:I

    new-instance v0, Lp64;

    iget-wide v1, p0, Lg64;->b:J

    iget p0, p0, Lg64;->c:I

    invoke-direct {v0, v1, v2, p0}, Lp64;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lg64;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lg64;->b:J

    iget-wide v2, p1, Lg64;->b:J

    invoke-static {v0, v1, v2, v3}, Laa4;->g(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lg64;->c:I

    iget p1, p1, Lg64;->c:I

    invoke-static {p0, p1}, Laa4;->f(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg64;

    if-eqz v0, :cond_0

    check-cast p1, Lg64;

    iget-wide v0, p1, Lg64;->b:J

    iget-wide v2, p0, Lg64;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget p0, p0, Lg64;->c:I

    iget p1, p1, Lg64;->c:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lg64;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget p0, p0, Lg64;->c:I

    mul-int/lit8 p0, p0, 0x33

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lb59;->h:Lb59$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v0, Lg64;->b:J

    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-wide/16 v12, -0x1

    if-gez v8, :cond_0

    mul-long v8, v6, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_0

    add-long/2addr v6, v12

    :cond_0
    rem-long/2addr v2, v4

    xor-long v8, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v8, v14

    const/16 v14, 0x3f

    shr-long/2addr v8, v14

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    long-to-int v2, v2

    const-wide/32 v3, 0xafa6c

    add-long/2addr v3, v6

    cmp-long v5, v3, v10

    const-wide/16 v8, 0x190

    const-wide/32 v14, 0x23ab1

    if-gez v5, :cond_1

    const-wide/32 v16, 0xafa6d

    add-long v6, v6, v16

    div-long/2addr v6, v14

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    mul-long v16, v6, v8

    neg-long v5, v6

    mul-long/2addr v5, v14

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v10

    :goto_0
    mul-long v5, v8, v3

    const-wide/16 v18, 0x24f

    add-long v5, v5, v18

    div-long/2addr v5, v14

    const-wide/16 v14, 0x16d

    mul-long v18, v14, v5

    const-wide/16 v20, 0x4

    div-long v22, v5, v20

    add-long v22, v22, v18

    const-wide/16 v18, 0x64

    div-long v24, v5, v18

    sub-long v22, v22, v24

    div-long v24, v5, v8

    add-long v24, v24, v22

    sub-long v22, v3, v24

    cmp-long v7, v22, v10

    if-gez v7, :cond_2

    add-long/2addr v5, v12

    mul-long/2addr v14, v5

    div-long v10, v5, v20

    add-long/2addr v10, v14

    div-long v12, v5, v18

    sub-long/2addr v10, v12

    div-long v7, v5, v8

    add-long/2addr v7, v10

    sub-long v22, v3, v7

    :cond_2
    move-wide/from16 v3, v22

    add-long v5, v5, v16

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x99

    add-int/lit8 v7, v4, 0x2

    rem-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    add-int/lit8 v11, v7, 0x1

    mul-int/lit16 v7, v4, 0x132

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v3, v7

    add-int/lit8 v12, v3, 0x1

    div-int/lit8 v4, v4, 0xa

    int-to-long v3, v4

    add-long/2addr v5, v3

    long-to-int v10, v5

    div-int/lit16 v13, v2, 0xe10

    mul-int/lit16 v3, v13, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x3c

    mul-int/lit8 v3, v14, 0x3c

    sub-int v15, v2, v3

    new-instance v9, Lb59;

    iget v0, v0, Lg64;->c:I

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lb59;-><init>(IIIIIII)V

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/16 v4, 0x2710

    if-ge v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v10, :cond_3

    add-int/2addr v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sub-int/2addr v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-lt v10, v4, :cond_5

    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v1, v11}, Lm64;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v1, v12}, Lm64;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x54

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v1, v13}, Lm64;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v1, v14}, Lm64;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v1, v15}, Lm64;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    if-eqz v16, :cond_7

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lm64;->a:[I

    aget v4, v2, v0

    iget v5, v9, Lb59;->g:I

    rem-int v4, v5, v4

    if-nez v4, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    rem-int/lit8 v0, v3, 0x3

    sub-int/2addr v3, v0

    aget v0, v2, v3

    div-int/2addr v5, v0

    rsub-int/lit8 v0, v3, 0x9

    aget v0, v2, v0

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
