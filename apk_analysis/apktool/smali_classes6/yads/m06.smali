.class public final Lyads/m06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final d:Lyads/jv;


# instance fields
.field public final b:Lyads/f06;

.field public final c:Lyads/oe3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/m06;->d:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Lyads/f06;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lyads/f06;->b:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv93;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lyads/m06;->b:Lyads/f06;

    invoke-static {p2}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p1

    iput-object p1, p0, Lyads/m06;->c:Lyads/oe3;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/m06;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/f06;->g:Lyads/jv;

    invoke-interface {v2, v0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v0

    check-cast v0, Lyads/f06;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/m06;

    array-length v2, p0

    if-nez v2, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/aq3;

    invoke-direct {v2, p0}, Lyads/aq3;-><init>([I)V

    move-object p0, v2

    :goto_0
    invoke-direct {v1, v0, p0}, Lyads/m06;-><init>(Lyads/f06;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/m06;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/m06;

    iget-object v2, p0, Lyads/m06;->b:Lyads/f06;

    iget-object v3, p1, Lyads/m06;->b:Lyads/f06;

    invoke-virtual {v2, v3}, Lyads/f06;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lyads/m06;->c:Lyads/oe3;

    iget-object p1, p1, Lyads/m06;->c:Lyads/oe3;

    invoke-virtual {p0, p1}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/m06;->b:Lyads/f06;

    invoke-virtual {v0}, Lyads/f06;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyads/m06;->c:Lyads/oe3;

    invoke-virtual {p0}, Lyads/oe3;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method
