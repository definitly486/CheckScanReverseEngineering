.class public final Lyads/rf3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dg3;

.field public final b:Ly22;

.field public final c:Lyads/rh6;

.field public final d:Lyads/ln3;

.field public e:Lmb4;


# direct methods
.method public constructor <init>(Lyads/ch4;Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Lyads/dg3;

    invoke-direct {v0}, Lyads/dg3;-><init>()V

    new-instance v1, Lyads/i90;

    invoke-direct {v1}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v2

    invoke-static {v2, v1}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v1

    new-instance v2, Lyads/rh6;

    invoke-direct {v2}, Lyads/rh6;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ck5;

    iget v3, v3, Lyads/ck5;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ck5;

    iget v4, v4, Lyads/ck5;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_3
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_4
    :goto_2
    const/16 p2, 0x32

    :goto_3
    new-instance v3, Lyads/ln3;

    invoke-direct {v3, p1, p2}, Lyads/ln3;-><init>(Lyads/ch4;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/rf3;->a:Lyads/dg3;

    iput-object v1, p0, Lyads/rf3;->b:Ly22;

    iput-object v2, p0, Lyads/rf3;->c:Lyads/rh6;

    iput-object v3, p0, Lyads/rf3;->d:Lyads/ln3;

    return-void
.end method
