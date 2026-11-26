.class public final Lyads/yn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/yn0;->b:I

    iput p2, p0, Lyads/yn0;->c:I

    iput p3, p0, Lyads/yn0;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/yn0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/yn0;

    iget v1, p0, Lyads/yn0;->b:I

    iget v3, p1, Lyads/yn0;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lyads/yn0;->c:I

    iget v3, p1, Lyads/yn0;->c:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lyads/yn0;->d:I

    iget p1, p1, Lyads/yn0;->d:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lyads/yn0;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/yn0;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lyads/yn0;->d:I

    add-int/2addr v0, p0

    return v0
.end method
