.class public final Lyads/yb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rp;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/util/ArrayList;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yb;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/yb;->b:Ljava/lang/String;

    iput-object p3, p0, Lyads/yb;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lyads/yb;->d:Z

    iput-object p5, p0, Lyads/yb;->e:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lyads/yb;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/yb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/yb;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/yb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/yb;

    iget-object v1, p0, Lyads/yb;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/yb;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/yb;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/yb;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/yb;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/yb;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lyads/yb;->d:Z

    iget-boolean v3, p1, Lyads/yb;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/yb;->e:Ljava/util/ArrayList;

    iget-object v3, p1, Lyads/yb;->e:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lyads/yb;->f:Z

    iget-boolean p1, p1, Lyads/yb;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/yb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/yb;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyads/yb;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lyads/yb;->d:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object v2, p0, Lyads/yb;->e:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ltg;->d(Ljava/util/ArrayList;II)I

    move-result v0

    iget-boolean p0, p0, Lyads/yb;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyads/yb;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/yb;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/yb;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lyads/yb;->d:Z

    iget-object v4, p0, Lyads/yb;->e:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lyads/yb;->f:Z

    const-string v5, ", adtuneUrl="

    const-string v6, ", optOutUrl="

    const-string v7, "AdtuneAction(actionType="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", darkTheme="

    const-string v5, ", trackingUrls="

    invoke-static {v0, v2, v1, v3, v5}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showInline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
