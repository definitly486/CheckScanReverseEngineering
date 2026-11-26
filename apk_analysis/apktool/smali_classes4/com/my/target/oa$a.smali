.class public final Lcom/my/target/oa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/oa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/k1;


# direct methods
.method public constructor <init>(Lcom/my/target/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/oa$a;->a:Lcom/my/target/k1;

    return-void
.end method


# virtual methods
.method public onCTAClicked()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/my/target/oa$a;->a:Lcom/my/target/k1;

    invoke-virtual {p0}, Lcom/my/target/k1;->c()V

    return-void
.end method

.method public onInteractiveFinished()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/my/target/oa$a;->a:Lcom/my/target/k1;

    iget-object v0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget-object v1, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->e:Z

    return-void
.end method
