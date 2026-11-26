.class public final Lxc8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc8$a;
    }
.end annotation


# instance fields
.field private final a:Lxc8$a;
    .annotation runtime Lbq7;
        value = "splash"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxc8$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc8;->a:Lxc8$a;

    return-void
.end method


# virtual methods
.method public final a()Lwc8;
    .locals 6

    iget-object p0, p0, Lxc8;->a:Lxc8$a;

    if-eqz p0, :cond_0

    new-instance v0, Lwc8;

    invoke-virtual {p0}, Lxc8$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lxc8$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lxc8$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lxc8$a;->b()Lxc8$a$a;

    move-result-object v4

    invoke-virtual {v4}, Lxc8$a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lxc8$a;->b()Lxc8$a$a;

    move-result-object p0

    invoke-virtual {p0}, Lxc8$a$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lwc8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lxc8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lxc8;

    iget-object p0, p0, Lxc8;->a:Lxc8$a;

    iget-object p1, p1, Lxc8;->a:Lxc8$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lxc8;->a:Lxc8$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lxc8$a;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lxc8;->a:Lxc8$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionSplashResponse(splash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
