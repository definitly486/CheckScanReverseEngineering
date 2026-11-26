.class public final Lyads/jq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# instance fields
.field public final synthetic a:Lyads/a62;


# direct methods
.method public constructor <init>(Lyads/a62;)V
    .locals 0

    iput-object p1, p0, Lyads/jq;->a:Lyads/a62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 1

    iget-object p0, p0, Lyads/jq;->a:Lyads/a62;

    iget-boolean v0, p0, Lyads/oq;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget-object p0, p0, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iq;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/iq;->a()V

    :cond_1
    :goto_0
    return-void
.end method
