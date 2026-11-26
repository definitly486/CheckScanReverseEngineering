.class public final Lmc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;
.implements Lf34;


# instance fields
.field public final a:Lhc0$b;


# direct methods
.method public constructor <init>(Lhc0$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmc0;->a:Lhc0$b;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    iget p0, p0, Lhc0$b;->e:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc0;

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    iget-object p1, p1, Lmc0;->a:Lhc0$b;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    invoke-virtual {p0}, Lhc0$b;->hashCode()I

    move-result p0

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    iget p0, p0, Lhc0$b;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BannerViewModel(banner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmc0;->a:Lhc0$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
