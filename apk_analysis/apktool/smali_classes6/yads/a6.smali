.class public final Lyads/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final g:Lyads/a6;

.field public static final h:Lyads/z5;

.field public static final i:Lyads/jv;


# instance fields
.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:[Lyads/z5;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lyads/a6;

    const/4 v7, 0x0

    new-array v1, v7, [Lyads/z5;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/a6;-><init>([Lyads/z5;JJI)V

    sput-object v0, Lyads/a6;->g:Lyads/a6;

    new-instance v8, Lyads/z5;

    new-array v12, v7, [I

    new-array v13, v7, [Landroid/net/Uri;

    new-array v14, v7, [J

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v8 .. v17}, Lyads/z5;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    invoke-virtual {v8}, Lyads/z5;->a()Lyads/z5;

    move-result-object v0

    sput-object v0, Lyads/a6;->h:Lyads/z5;

    new-instance v0, Lcg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/a6;->i:Lyads/jv;

    return-void
.end method

.method public constructor <init>([Lyads/z5;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyads/a6;->c:J

    iput-wide p4, p0, Lyads/a6;->d:J

    array-length p2, p1

    add-int/2addr p2, p6

    iput p2, p0, Lyads/a6;->b:I

    iput-object p1, p0, Lyads/a6;->f:[Lyads/z5;

    iput p6, p0, Lyads/a6;->e:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/a6;
    .locals 11

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Lyads/z5;

    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lyads/z5;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    sget-object v4, Lyads/z5;->i:Lyads/jv;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v4

    check-cast v4, Lyads/z5;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    new-instance v4, Lyads/a6;

    invoke-direct/range {v4 .. v10}, Lyads/a6;-><init>([Lyads/z5;JJI)V

    return-object v4
.end method


# virtual methods
.method public final a(I)Lyads/z5;
    .locals 1

    .line 90
    iget v0, p0, Lyads/a6;->e:I

    if-ge p1, v0, :cond_0

    .line 91
    sget-object p0, Lyads/a6;->h:Lyads/z5;

    return-object p0

    .line 92
    :cond_0
    iget-object p0, p0, Lyads/a6;->f:[Lyads/z5;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/a6;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/a6;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lyads/a6;->b:I

    iget v3, p1, Lyads/a6;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lyads/a6;->c:J

    iget-wide v4, p1, Lyads/a6;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/a6;->d:J

    iget-wide v4, p1, Lyads/a6;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lyads/a6;->e:I

    iget v3, p1, Lyads/a6;->e:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lyads/a6;->f:[Lyads/z5;

    iget-object p1, p1, Lyads/a6;->f:[Lyads/z5;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/a6;->b:I

    mul-int/lit16 v0, v0, 0x3c1

    iget-wide v1, p0, Lyads/a6;->c:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/a6;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/a6;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/a6;->f:[Lyads/z5;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdPlaybackState(adsId=null, adResumePositionUs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lyads/a6;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lyads/a6;->f:[Lyads/z5;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lyads/a6;->f:[Lyads/z5;

    aget-object v3, v3, v2

    iget-wide v5, v3, Lyads/z5;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_1
    iget-object v5, p0, Lyads/a6;->f:[Lyads/z5;

    aget-object v5, v5, v2

    iget-object v5, v5, Lyads/z5;->e:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lyads/a6;->f:[Lyads/z5;

    aget-object v5, v5, v2

    iget-object v5, v5, Lyads/z5;->e:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lyads/a6;->f:[Lyads/z5;

    aget-object v5, v5, v2

    iget-object v5, v5, Lyads/z5;->f:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lyads/a6;->f:[Lyads/z5;

    aget-object v5, v5, v2

    iget-object v5, v5, Lyads/z5;->e:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lyads/a6;->f:[Lyads/z5;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
