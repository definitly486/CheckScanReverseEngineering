.class public final Lyads/bx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/l15;

.field public final b:Lyads/b3;

.field public final c:Lyads/ek0;

.field public final d:Lyads/y00;

.field public final e:Lyads/l10;


# direct methods
.method public synthetic constructor <init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;)V
    .locals 6

    .line 14
    new-instance v5, Lyads/l10;

    invoke-direct {v5}, Lyads/l10;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;Lyads/l10;)V

    return-void
.end method

.method public constructor <init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;Lyads/l10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bx5;->a:Lyads/l15;

    iput-object p2, p0, Lyads/bx5;->b:Lyads/b3;

    iput-object p3, p0, Lyads/bx5;->c:Lyads/ek0;

    iput-object p4, p0, Lyads/bx5;->d:Lyads/y00;

    iput-object p5, p0, Lyads/bx5;->e:Lyads/l10;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/bx5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/bx5;

    iget-object v1, p0, Lyads/bx5;->a:Lyads/l15;

    iget-object v3, p1, Lyads/bx5;->a:Lyads/l15;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/bx5;->b:Lyads/b3;

    iget-object v3, p1, Lyads/bx5;->b:Lyads/b3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/bx5;->c:Lyads/ek0;

    iget-object v3, p1, Lyads/bx5;->c:Lyads/ek0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/bx5;->d:Lyads/y00;

    iget-object v3, p1, Lyads/bx5;->d:Lyads/y00;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyads/bx5;->e:Lyads/l10;

    iget-object p1, p1, Lyads/bx5;->e:Lyads/l10;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/bx5;->a:Lyads/l15;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/bx5;->b:Lyads/b3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/bx5;->c:Lyads/ek0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/bx5;->d:Lyads/y00;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/bx5;->e:Lyads/l10;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lyads/bx5;->a:Lyads/l15;

    iget-object v1, p0, Lyads/bx5;->b:Lyads/b3;

    iget-object v2, p0, Lyads/bx5;->c:Lyads/ek0;

    iget-object v3, p0, Lyads/bx5;->d:Lyads/y00;

    iget-object p0, p0, Lyads/bx5;->e:Lyads/l10;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TimeProviderContainer(progressIncrementer="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adBlockDurationProvider="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultContentDelayProvider="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closableAdChecker="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closeTimerProgressIncrementer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
