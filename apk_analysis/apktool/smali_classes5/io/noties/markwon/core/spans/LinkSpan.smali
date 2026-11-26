.class public Lio/noties/markwon/core/spans/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field public final b:Ld15;

.field public final c:Ljava/lang/String;

.field public final d:Lqq4;


# direct methods
.method public constructor <init>(Ld15;Ljava/lang/String;Lqq4;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/noties/markwon/core/spans/LinkSpan;->b:Ld15;

    iput-object p2, p0, Lio/noties/markwon/core/spans/LinkSpan;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/noties/markwon/core/spans/LinkSpan;->d:Lqq4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->d:Lqq4;

    iget-object p0, p0, Lio/noties/markwon/core/spans/LinkSpan;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lqq4;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    iget-object p0, p0, Lio/noties/markwon/core/spans/LinkSpan;->b:Ld15;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget p0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
