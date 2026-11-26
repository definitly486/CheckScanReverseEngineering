.class public final Lrm6$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field private final a:Lrm6$o;
    .annotation runtime Lbq7;
        value = "state"
    .end annotation
.end field

.field private final b:Lrm6$b;
    .annotation runtime Lbq7;
        value = "activeBanner"
    .end annotation
.end field

.field private final c:Lrm6$i;
    .annotation runtime Lbq7;
        value = "expiredBanner"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrm6$o;Lrm6$b;Lrm6$i;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm6$n;->a:Lrm6$o;

    iput-object p2, p0, Lrm6$n;->b:Lrm6$b;

    iput-object p3, p0, Lrm6$n;->c:Lrm6$i;

    return-void
.end method


# virtual methods
.method public final a()Lrm6$b;
    .locals 0

    iget-object p0, p0, Lrm6$n;->b:Lrm6$b;

    return-object p0
.end method

.method public final b()Lrm6$i;
    .locals 0

    iget-object p0, p0, Lrm6$n;->c:Lrm6$i;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrm6$n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrm6$n;

    iget-object v1, p0, Lrm6$n;->a:Lrm6$o;

    iget-object v3, p1, Lrm6$n;->a:Lrm6$o;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrm6$n;->b:Lrm6$b;

    iget-object v3, p1, Lrm6$n;->b:Lrm6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lrm6$n;->c:Lrm6$i;

    iget-object p1, p1, Lrm6$n;->c:Lrm6$i;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lrm6$n;->a:Lrm6$o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrm6$n;->b:Lrm6$b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lrm6$b;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lrm6$n;->c:Lrm6$i;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lrm6$i;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lrm6$n;->a:Lrm6$o;

    iget-object v1, p0, Lrm6$n;->b:Lrm6$b;

    iget-object p0, p0, Lrm6$n;->c:Lrm6$i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pro(state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", activeBanner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expiredBanner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
