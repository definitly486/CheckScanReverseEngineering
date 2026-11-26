.class public abstract Lyads/oh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v41;


# direct methods
.method public constructor <init>(Lyads/v41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/oh2;->a:Lyads/v41;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 75
    return-void
.end method

.method public a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/oh2;->a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V

    return-void
.end method

.method public final a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Lyads/wh1;

    invoke-interface {v0}, Lyads/wh1;->a()Lyads/br0;

    move-result-object v0

    if-ne p3, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lyads/oh2;->a:Lyads/v41;

    invoke-virtual {v1, p1, p2, p3, v0}, Lyads/v41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/br0;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    move-object v6, v2

    move-object v4, p1

    move-object v3, p2

    move-object v7, p4

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v6, v1

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v7, p4

    :goto_0
    invoke-virtual/range {v2 .. v7}, Lyads/oh2;->a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object p0, v1

    :goto_1
    if-nez p0, :cond_4

    invoke-virtual {p3}, Lyads/br0;->a()Lyads/p41;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v3, v4, p0, v1}, Lyads/oh2;->a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lyads/tt;Lyads/ds1;Lyads/aq0;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/oh2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    return-void
.end method
