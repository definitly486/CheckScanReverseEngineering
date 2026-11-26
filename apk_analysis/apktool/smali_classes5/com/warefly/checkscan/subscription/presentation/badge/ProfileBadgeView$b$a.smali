.class public final Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;
.super Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    iput p2, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;

    iget v0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    iget v1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    iget p1, p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const v0, 0x2fdd501d

    const/4 v1, -0x1

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lej0;->b(III)I

    move-result v0

    iget v1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    invoke-static {v1, v0, v2}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", endGradientColor="

    const-string v1, ")"

    iget v2, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->a:I

    iget p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$a;->b:I

    const-string v3, "Anon(title=\u0412\u043e\u0439\u0442\u0438, titleColor=-1, startGradientColor="

    invoke-static {v2, p0, v3, v0, v1}, Lln;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
