.class public final Lyads/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final h:Lyads/am;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:Lyads/zl;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/am;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lyads/am;-><init>(IIIII)V

    sput-object v0, Lyads/am;->h:Lyads/am;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/am;->b:I

    iput p2, p0, Lyads/am;->c:I

    iput p3, p0, Lyads/am;->d:I

    iput p4, p0, Lyads/am;->e:I

    iput p5, p0, Lyads/am;->f:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/am;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/am;

    iget v2, p0, Lyads/am;->b:I

    iget v3, p1, Lyads/am;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lyads/am;->c:I

    iget v3, p1, Lyads/am;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lyads/am;->d:I

    iget v3, p1, Lyads/am;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lyads/am;->e:I

    iget v3, p1, Lyads/am;->e:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lyads/am;->f:I

    iget p1, p1, Lyads/am;->f:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lyads/am;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/am;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/am;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/am;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lyads/am;->f:I

    add-int/2addr v0, p0

    return v0
.end method
