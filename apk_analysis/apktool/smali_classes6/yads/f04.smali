.class public abstract Lyads/f04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final g:Lyads/jv;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/g04;

    new-instance v0, Lig;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lig;-><init>(I)V

    sput-object v0, Lyads/f04;->g:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Lyads/e04;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lyads/e04;->a:J

    iput-wide v0, p0, Lyads/f04;->b:J

    iget-wide v0, p1, Lyads/e04;->b:J

    iput-wide v0, p0, Lyads/f04;->c:J

    iget-boolean v0, p1, Lyads/e04;->c:Z

    iput-boolean v0, p0, Lyads/f04;->d:Z

    iget-boolean v0, p1, Lyads/e04;->d:Z

    iput-boolean v0, p0, Lyads/f04;->e:Z

    iget-boolean p1, p1, Lyads/e04;->e:Z

    iput-boolean p1, p0, Lyads/f04;->f:Z

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/g04;
    .locals 11

    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    const/4 v8, 0x0

    if-ltz v3, :cond_2

    iput-wide v6, v0, Lyads/e04;->a:J

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {p0, v3, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v3, v9, v6

    if-eqz v3, :cond_1

    cmp-long v3, v9, v4

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-object v8

    :cond_1
    :goto_0
    iput-wide v9, v0, Lyads/e04;->b:J

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lyads/e04;->c:Z

    const/4 v3, 0x3

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lyads/e04;->d:Z

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lyads/e04;->e:Z

    new-instance p0, Lyads/g04;

    invoke-direct {p0, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    return-object p0

    :cond_2
    invoke-static {}, Lmi2;->b()V

    return-object v8
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/f04;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/f04;

    iget-wide v3, p0, Lyads/f04;->b:J

    iget-wide v5, p1, Lyads/f04;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lyads/f04;->c:J

    iget-wide v5, p1, Lyads/f04;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lyads/f04;->d:Z

    iget-boolean v3, p1, Lyads/f04;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lyads/f04;->e:Z

    iget-boolean v3, p1, Lyads/f04;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lyads/f04;->f:Z

    iget-boolean p1, p1, Lyads/f04;->f:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lyads/f04;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lyads/f04;->c:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/f04;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/f04;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lyads/f04;->f:Z

    add-int/2addr v0, p0

    return v0
.end method
