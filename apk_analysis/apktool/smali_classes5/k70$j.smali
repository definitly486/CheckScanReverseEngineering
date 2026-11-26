.class public final Lk70$j;
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
    name = "j"
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

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final d:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final e:Z
    .annotation runtime Lbq7;
        value = "preview"
    .end annotation
.end field

.field public final f:Lk70$b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk70$j;->a:Ljava/lang/String;

    iput-object p2, p0, Lk70$j;->b:Ljava/lang/String;

    iput-object p3, p0, Lk70$j;->c:Ljava/lang/String;

    iput p4, p0, Lk70$j;->d:I

    iput-boolean p5, p0, Lk70$j;->e:Z

    sget-object p1, Lk70$b$a;->PHONE:Lk70$b$a;

    iput-object p1, p0, Lk70$j;->f:Lk70$b$a;

    return-void
.end method


# virtual methods
.method public final a()Lhk9;
    .locals 6

    new-instance v0, Llj9;

    iget v1, p0, Lk70$j;->d:I

    iget-object v2, p0, Lk70$j;->a:Ljava/lang/String;

    iget-object v3, p0, Lk70$j;->b:Ljava/lang/String;

    iget-object v4, p0, Lk70$j;->c:Ljava/lang/String;

    new-instance v5, Lwi9$g;

    invoke-direct {v5, v2}, Lwi9$g;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Llj9;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwi9;)V

    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lk70$j;->d:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lk70$j;->e:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk70$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk70$j;

    iget-object v1, p0, Lk70$j;->a:Ljava/lang/String;

    iget-object v3, p1, Lk70$j;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk70$j;->b:Ljava/lang/String;

    iget-object v3, p1, Lk70$j;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk70$j;->c:Ljava/lang/String;

    iget-object v3, p1, Lk70$j;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lk70$j;->d:I

    iget v3, p1, Lk70$j;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lk70$j;->e:Z

    iget-boolean p1, p1, Lk70$j;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getType()Lk70$b$a;
    .locals 0

    iget-object p0, p0, Lk70$j;->f:Lk70$b$a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk70$j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk70$j;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lk70$j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lk70$j;->d:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lk70$j;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lk70$j;->a:Ljava/lang/String;

    iget-object v1, p0, Lk70$j;->b:Ljava/lang/String;

    iget-object v2, p0, Lk70$j;->c:Ljava/lang/String;

    iget v3, p0, Lk70$j;->d:I

    iget-boolean p0, p0, Lk70$j;->e:Z

    const-string v4, ", text="

    const-string v5, ", logoUrl="

    const-string v6, "PhoneBlockResponse(title="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sort="

    const-string v4, ", preview="

    invoke-static {v0, v2, v1, v3, v4}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
