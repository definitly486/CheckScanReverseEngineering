.class public final Ld02$a;
.super Ld02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ld02;-><init>()V

    iput-object p1, p0, Ld02$a;->a:Ldf4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;)",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ld02$a;->a:Ldf4;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ld02$a;

    if-eqz v0, :cond_0

    check-cast p1, Ld02$a;

    iget-object p1, p1, Ld02$a;->a:Ldf4;

    iget-object p0, p0, Ld02$a;->a:Ldf4;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ld02$a;->a:Ldf4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
