.class public final Lyads/j35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Lyads/jf6;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/jf6;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j35;->a:Lyads/jf6;

    new-instance p1, Lyads/i35;

    sget-object v0, Lyads/gf6;->b:Lyads/gf6;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v0, v1}, Lyads/i35;-><init>(Lyads/gf6;F)V

    new-instance v0, Lyads/i35;

    sget-object v1, Lyads/gf6;->c:Lyads/gf6;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lyads/i35;-><init>(Lyads/gf6;F)V

    new-instance v1, Lyads/i35;

    sget-object v2, Lyads/gf6;->d:Lyads/gf6;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lyads/i35;-><init>(Lyads/gf6;F)V

    filled-new-array {p1, v0, v1}, [Lyads/i35;

    move-result-object p1

    invoke-static {p1}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/j35;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/j35;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/i35;

    iget v2, v1, Lyads/i35;->b:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    long-to-float v3, p3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lyads/j35;->a:Lyads/jf6;

    iget-object v1, v1, Lyads/i35;->a:Lyads/gf6;

    iget-object v2, v2, Lyads/jf6;->a:Lyads/k50;

    invoke-virtual {v2, v1}, Lyads/k50;->a(Lyads/gf6;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
