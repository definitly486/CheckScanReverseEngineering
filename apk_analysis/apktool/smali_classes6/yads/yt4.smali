.class public final Lyads/yt4;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final b:Lyads/tt;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/tt;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lyads/yt4;->b:Lyads/tt;

    iput-object p2, p0, Lyads/yt4;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lyads/yt4;->b:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v0, v0, Lyads/vq0;->n:Lyads/nq0;

    iget-object v0, v0, Lyads/nq0;->G:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bt0;

    iget-object v1, p0, Lyads/yt4;->b:Lyads/tt;

    iget-object p0, p0, Lyads/yt4;->c:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p0}, Lyads/bt0;->a(Lyads/tt;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
