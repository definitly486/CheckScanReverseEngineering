.class public final Lyads/y50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds2;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y50;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/fs2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/y50;->a:Ljava/util/List;

    return-object p0
.end method

.method public final a(Lyads/fs2;Lnl3;)Lyads/tp0;
    .locals 0

    .line 3
    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/y50;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/y50;->a:Ljava/util/List;

    check-cast p1, Lyads/y50;

    iget-object p1, p1, Lyads/y50;->a:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object p0, p0, Lyads/y50;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method
