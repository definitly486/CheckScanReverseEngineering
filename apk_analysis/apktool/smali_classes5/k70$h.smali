.class public final Lk70$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk70$h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final c:Lk70$h$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final d:Lk70$h$a;
    .annotation runtime Lbq7;
        value = "secondButton"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "preview"
    .end annotation
.end field

.field public final h:Lk70$b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk70$h$a;Lk70$h$a;Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p1, p2, p5}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$h;->a:Ljava/lang/String;

    iput-object p2, p0, Lk70$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lk70$h;->c:Lk70$h$a;

    iput-object p4, p0, Lk70$h;->d:Lk70$h$a;

    iput-object p5, p0, Lk70$h;->e:Ljava/lang/String;

    iput p6, p0, Lk70$h;->f:I

    iput-boolean p7, p0, Lk70$h;->g:Z

    sget-object p1, Lk70$b$a;->MINI_LOGO_BANNER:Lk70$b$a;

    iput-object p1, p0, Lk70$h;->h:Lk70$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 7

    new-instance v0, Luj9;

    iget-object v1, p0, Lk70$h;->e:Ljava/lang/String;

    iget-object v2, p0, Lk70$h;->a:Ljava/lang/String;

    iget-object v3, p0, Lk70$h;->b:Ljava/lang/String;

    iget-object v4, p0, Lk70$h;->c:Lk70$h$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lk70$h$a;->a()Luj9$a;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object p0, p0, Lk70$h;->d:Lk70$h$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk70$h$a;->a()Luj9$a;

    move-result-object v5

    :cond_1
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Luj9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luj9$a;Luj9$a;Lpw7;)V

    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lk70$h;->f:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lk70$h;->g:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$h;

    iget-object v1, p0, Lk70$h;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$h;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk70$h;->b:Ljava/lang/String;

    iget-object v3, p1, Lk70$h;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk70$h;->c:Lk70$h$a;

    iget-object v3, p1, Lk70$h;->c:Lk70$h$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lk70$h;->d:Lk70$h$a;

    iget-object v3, p1, Lk70$h;->d:Lk70$h$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lk70$h;->e:Ljava/lang/String;

    iget-object v3, p1, Lk70$h;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lk70$h;->f:I

    iget v3, p1, Lk70$h;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lk70$h;->g:Z

    iget-boolean p1, p1, Lk70$h;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    iget-object p0, p0, Lk70$h;->h:Lk70$b$a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lk70$h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$h;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lk70$h;->c:Lk70$h$a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lk70$h$a;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$h;->d:Lk70$h$a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lk70$h$a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$h;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lk70$h;->f:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lk70$h;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lk70$h;->a:Ljava/lang/String;

    iget-object v1, p0, Lk70$h;->b:Ljava/lang/String;

    iget-object v2, p0, Lk70$h;->c:Lk70$h$a;

    iget-object v3, p0, Lk70$h;->d:Lk70$h$a;

    iget-object v4, p0, Lk70$h;->e:Ljava/lang/String;

    iget v5, p0, Lk70$h;->f:I

    iget-boolean p0, p0, Lk70$h;->g:Z

    const-string v6, ", text="

    const-string v7, ", mainButton="

    const-string v8, "MiniLogoBlockResponse(title="

    invoke-static {v8, v0, v6, v1, v7}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    const-string v2, ", preview="

    invoke-static {v0, v4, v1, v5, v2}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
