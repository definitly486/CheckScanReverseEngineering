.class public final Lyads/i4;
.super Lyads/hi6;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final c:Lyads/o4;


# direct methods
.method public constructor <init>(Lyads/o4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyads/hi6;-><init>(Lyads/en4;)V

    iput-object p1, p0, Lyads/i4;->c:Lyads/o4;

    return-void
.end method

.method public constructor <init>(Lyads/o4;Lyads/en4;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lyads/hi6;-><init>(Lyads/en4;)V

    .line 8
    iput-object p1, p0, Lyads/i4;->c:Lyads/o4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lyads/i4;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/i4;

    iget-object p0, p0, Lyads/i4;->c:Lyads/o4;

    iget-object p1, p1, Lyads/i4;->c:Lyads/o4;

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/i4;->c:Lyads/o4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
