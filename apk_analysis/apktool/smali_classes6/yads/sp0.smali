.class public final Lyads/sp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lyads/sp0;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/sp0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/sp0;-><init>(FFFFFF)V

    sput-object v0, Lyads/sp0;->g:Lyads/sp0;

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/sp0;->a:F

    iput p2, p0, Lyads/sp0;->b:F

    iput p3, p0, Lyads/sp0;->c:F

    iput p4, p0, Lyads/sp0;->d:F

    iput p5, p0, Lyads/sp0;->e:F

    iput p6, p0, Lyads/sp0;->f:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/sp0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/sp0;

    iget v1, p0, Lyads/sp0;->a:F

    iget v3, p1, Lyads/sp0;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lyads/sp0;->b:F

    iget v3, p1, Lyads/sp0;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lyads/sp0;->c:F

    iget v3, p1, Lyads/sp0;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lyads/sp0;->d:F

    iget v3, p1, Lyads/sp0;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lyads/sp0;->e:F

    iget v3, p1, Lyads/sp0;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lyads/sp0;->f:F

    iget p1, p1, Lyads/sp0;->f:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/sp0;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/sp0;->b:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/sp0;->c:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/sp0;->d:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/sp0;->e:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget p0, p0, Lyads/sp0;->f:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lyads/sp0;->a:F

    iget v1, p0, Lyads/sp0;->b:F

    iget v2, p0, Lyads/sp0;->c:F

    iget v3, p0, Lyads/sp0;->d:F

    iget v4, p0, Lyads/sp0;->e:F

    iget p0, p0, Lyads/sp0;->f:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DisplayInsetsF(left="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", top="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bottom="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cutoutTop="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cutoutBottom="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
