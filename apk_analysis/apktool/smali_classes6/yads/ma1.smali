.class public final Lyads/ma1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oa1;


# instance fields
.field public final b:[Lyads/oa1;


# direct methods
.method public varargs constructor <init>([Lyads/oa1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ma1;->b:[Lyads/oa1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;
    .locals 4

    iget-object p0, p0, Lyads/ma1;->b:[Lyads/oa1;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, p1, Lyads/ka1;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lyads/oa1;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2, p1, p2, p3, p4}, Lyads/oa1;->a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Landroid/view/View;

    iget-object p1, p2, Lyads/vq0;->l:Lyads/pq0;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 38
    iget-object p0, p0, Lyads/ma1;->b:[Lyads/oa1;

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 40
    invoke-interface {v3, p1}, Lyads/oa1;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
