.class public final Lyads/kf6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/no6;

.field public final b:Lyads/cm5;


# direct methods
.method public constructor <init>(Lyads/no6;)V
    .locals 1

    new-instance v0, Lyads/cm5;

    invoke-direct {v0}, Lyads/cm5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kf6;->a:Lyads/no6;

    iput-object v0, p0, Lyads/kf6;->b:Lyads/cm5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ja6;Lyads/jb6;)Lyads/jf6;
    .locals 5

    new-instance v0, Lyads/ff6;

    invoke-direct {v0, p1}, Lyads/ff6;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/hd6;

    invoke-direct {v1, p1}, Lyads/hd6;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/k50;

    invoke-direct {v2}, Lyads/k50;-><init>()V

    new-instance v3, Lyads/z90;

    iget-object v4, p2, Lyads/ja6;->a:Lyads/p90;

    invoke-direct {v3, v4, v0, v1}, Lyads/z90;-><init>(Lyads/p90;Lyads/ff6;Lyads/hd6;)V

    iget-object v1, v2, Lyads/k50;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lyads/hc6;

    iget-object v3, p2, Lyads/ja6;->b:Lyads/t96;

    invoke-direct {v1, v3, v0}, Lyads/hc6;-><init>(Lyads/t96;Lyads/ff6;)V

    iget-object v0, v2, Lyads/k50;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyads/kf6;->b:Lyads/cm5;

    iget-object v1, p2, Lyads/ja6;->a:Lyads/p90;

    invoke-virtual {v0, v1}, Lyads/cm5;->a(Lyads/p90;)Lyads/bc6;

    move-result-object v0

    iget-object p2, p2, Lyads/ja6;->b:Lyads/t96;

    iget-object p2, p2, Lyads/t96;->n:Ljava/util/ArrayList;

    iget-object p0, p0, Lyads/kf6;->a:Lyads/no6;

    iget-object p0, p0, Lyads/no6;->a:Lyads/eq4;

    invoke-virtual {p0, p1}, Lyads/eq4;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lyads/mo6;

    invoke-direct {p0, p1, p3, v0, p2}, Lyads/mo6;-><init>(Landroid/content/Context;Lyads/jb6;Lyads/bc6;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, v2, Lyads/k50;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Lyads/jf6;

    invoke-direct {p0, v2}, Lyads/jf6;-><init>(Lyads/k50;)V

    return-object p0
.end method
