.class public final Luk6$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Landroidx/compose/ui/graphics/Color;


# direct methods
.method public constructor <init>(JJJLandroidx/compose/ui/graphics/Color;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Luk6$e;->a:J

    iput-wide p3, p0, Luk6$e;->b:J

    iput-wide p5, p0, Luk6$e;->c:J

    iput-object p7, p0, Luk6$e;->d:Landroidx/compose/ui/graphics/Color;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Luk6$e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Luk6$e;

    iget-wide v0, p0, Luk6$e;->a:J

    iget-wide v2, p1, Luk6$e;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Luk6$e;->b:J

    iget-wide v2, p1, Luk6$e;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Luk6$e;->c:J

    iget-wide v2, p1, Luk6$e;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Luk6$e;->d:Landroidx/compose/ui/graphics/Color;

    iget-object p1, p1, Luk6$e;->d:Landroidx/compose/ui/graphics/Color;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 6

    const v0, 0x261713

    iget-wide v1, p0, Luk6$e;->a:J

    const/16 v3, 0x1f

    invoke-static {v0, v3, v1, v2}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Luk6$e;->b:J

    invoke-static {v0, v3, v1, v2}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Luk6$e;->c:J

    invoke-static {v0, v3, v1, v2}, Lr01;->b(IIJ)I

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Luk6$e;->d:Landroidx/compose/ui/graphics/Color;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    mul-int/2addr v0, v3

    invoke-static {v0, v3, v1}, Ltg;->c(IIZ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Luk6$e;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Luk6$e;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Luk6$e;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", gradientStart="

    const-string v4, ", gradientEnd="

    const-string v5, "Subscription(title=Pro, titleColor="

    invoke-static {v5, v0, v3, v1, v4}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Luk6$e;->d:Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isStrikeThrough=false, avatarUrl=null)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
