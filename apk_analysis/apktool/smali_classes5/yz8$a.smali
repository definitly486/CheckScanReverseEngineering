.class public final Lyz8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyz8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz8$a$a;
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

.field private final c:Lyz8$a$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final d:Lyz8$a$a;
    .annotation runtime Lbq7;
        value = "secondButton"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lyz8$a$a;Lyz8$a$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz8$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lyz8$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lyz8$a;->c:Lyz8$a$a;

    iput-object p4, p0, Lyz8$a;->d:Lyz8$a$a;

    iput-object p5, p0, Lyz8$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lxz8$a;
    .locals 6

    new-instance v0, Lxz8$a;

    iget-object v1, p0, Lyz8$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lyz8$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lyz8$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lyz8$a;->c:Lyz8$a$a;

    invoke-virtual {v4}, Lyz8$a$a;->a()Lxz8$a$a;

    move-result-object v4

    iget-object p0, p0, Lyz8$a;->d:Lyz8$a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyz8$a$a;->a()Lxz8$a$a;

    move-result-object p0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v5}, Lxz8$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxz8$a$a;Lxz8$a$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyz8$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyz8$a;

    iget-object v1, p0, Lyz8$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lyz8$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyz8$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lyz8$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyz8$a;->c:Lyz8$a$a;

    iget-object v3, p1, Lyz8$a;->c:Lyz8$a$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyz8$a;->d:Lyz8$a$a;

    iget-object v3, p1, Lyz8$a;->d:Lyz8$a$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyz8$a;->e:Ljava/lang/String;

    iget-object p1, p1, Lyz8$a;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyz8$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyz8$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyz8$a;->c:Lyz8$a$a;

    invoke-virtual {v2}, Lyz8$a$a;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyz8$a;->d:Lyz8$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lyz8$a$a;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyz8$a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyz8$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lyz8$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lyz8$a;->c:Lyz8$a$a;

    iget-object v3, p0, Lyz8$a;->d:Lyz8$a$a;

    iget-object p0, p0, Lyz8$a;->e:Ljava/lang/String;

    const-string v4, ", text="

    const-string v5, ", mainButton="

    const-string v6, "BottomSheetResponse(title="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
