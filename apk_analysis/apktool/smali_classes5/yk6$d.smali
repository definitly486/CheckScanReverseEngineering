.class public final Lyk6$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk6$d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "iconUrl"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final d:Lyk6$d$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final e:Lyk6$d$a;
    .annotation runtime Lbq7;
        value = "secondaryButton"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyk6$d$a;Lyk6$d$a;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk6$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lyk6$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lyk6$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lyk6$d;->d:Lyk6$d$a;

    iput-object p5, p0, Lyk6$d;->e:Lyk6$d$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;
    .locals 8

    iget-object v1, p0, Lyk6$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lyk6$d;->c:Ljava/lang/String;

    iget-object v0, p0, Lyk6$d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    iget-object v0, p0, Lyk6$d;->d:Lyk6$d$a;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$a;

    invoke-virtual {v0}, Lyk6$d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    iget-object v0, p0, Lyk6$d;->e:Lyk6$d$a;

    if-eqz v0, :cond_3

    new-instance v4, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;

    invoke-virtual {v0}, Lyk6$d$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lyk6$d;->e:Lyk6$d$a;

    invoke-virtual {p0}, Lyk6$d$a;->b()Lyk6$d$a$a;

    move-result-object p0

    sget-object v6, Lyk6$d$a$a;->CONTINUE:Lyk6$d$a$a;

    if-eq p0, v6, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-direct {v4, v0, p0}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;-><init>(Ljava/lang/String;Z)V

    :cond_3
    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$a;Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyk6$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyk6$d;

    iget-object v1, p0, Lyk6$d;->a:Ljava/lang/String;

    iget-object v3, p1, Lyk6$d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyk6$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lyk6$d;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyk6$d;->c:Ljava/lang/String;

    iget-object v3, p1, Lyk6$d;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyk6$d;->d:Lyk6$d$a;

    iget-object v3, p1, Lyk6$d;->d:Lyk6$d$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyk6$d;->e:Lyk6$d$a;

    iget-object p1, p1, Lyk6$d;->e:Lyk6$d$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyk6$d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyk6$d;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lyk6$d;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lyk6$d;->d:Lyk6$d$a;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lyk6$d$a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lyk6$d;->e:Lyk6$d$a;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lyk6$d$a;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyk6$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lyk6$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lyk6$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lyk6$d;->d:Lyk6$d$a;

    iget-object p0, p0, Lyk6$d;->e:Lyk6$d$a;

    const-string v4, ", title="

    const-string v5, ", text="

    const-string v6, "IncompleteWarningResponse(iconUrl="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
