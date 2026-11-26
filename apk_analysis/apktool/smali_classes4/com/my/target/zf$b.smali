.class public final Lcom/my/target/zf$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/zf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/my/target/zf;


# direct methods
.method public constructor <init>(Lcom/my/target/zf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/zf$b;->b:Lcom/my/target/zf;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/zf$b;->b:Lcom/my/target/zf;

    iget-object p1, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/zf;->h()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/my/target/zf;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    invoke-interface {p0}, Lcom/my/target/zf$a;->q()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/zf;->g()Z

    move-result p1

    iget-object p0, p0, Lcom/my/target/zf;->k:Lcom/my/target/zf$a;

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/my/target/zf$a;->l()V

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/my/target/zf$a;->n()V

    return-void
.end method
