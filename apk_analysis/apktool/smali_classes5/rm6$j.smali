.class public final Lrm6$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private final a:Lrm6$m;
    .annotation runtime Lbq7;
        value = "policy"
    .end annotation
.end field

.field private final b:Lrm6$p;
    .annotation runtime Lbq7;
        value = "logout"
    .end annotation
.end field

.field private final c:Lrm6$p;
    .annotation runtime Lbq7;
        value = "deleteAccount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrm6$m;Lrm6$p;Lrm6$p;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm6$j;->a:Lrm6$m;

    iput-object p2, p0, Lrm6$j;->b:Lrm6$p;

    iput-object p3, p0, Lrm6$j;->c:Lrm6$p;

    return-void
.end method


# virtual methods
.method public final a()Lrm6$p;
    .locals 0

    iget-object p0, p0, Lrm6$j;->c:Lrm6$p;

    return-object p0
.end method

.method public final b()Lrm6$p;
    .locals 0

    iget-object p0, p0, Lrm6$j;->b:Lrm6$p;

    return-object p0
.end method

.method public final c()Lrm6$m;
    .locals 0

    iget-object p0, p0, Lrm6$j;->a:Lrm6$m;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrm6$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrm6$j;

    iget-object v1, p0, Lrm6$j;->a:Lrm6$m;

    iget-object v3, p1, Lrm6$j;->a:Lrm6$m;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrm6$j;->b:Lrm6$p;

    iget-object v3, p1, Lrm6$j;->b:Lrm6$p;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lrm6$j;->c:Lrm6$p;

    iget-object p1, p1, Lrm6$j;->c:Lrm6$p;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lrm6$j;->a:Lrm6$m;

    invoke-virtual {v0}, Lrm6$m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrm6$j;->b:Lrm6$p;

    invoke-virtual {v1}, Lrm6$p;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lrm6$j;->c:Lrm6$p;

    invoke-virtual {p0}, Lrm6$p;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lrm6$j;->a:Lrm6$m;

    iget-object v1, p0, Lrm6$j;->b:Lrm6$p;

    iget-object p0, p0, Lrm6$j;->c:Lrm6$p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Footer(policy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logout="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deleteAccount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
