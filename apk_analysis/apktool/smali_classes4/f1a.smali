.class public final synthetic Lf1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/my/target/l2;

.field public final synthetic b:Ls95;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/l2;Ls95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1a;->a:Lcom/my/target/l2;

    iput-object p2, p0, Lf1a;->b:Ls95;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    sget p1, Lcom/my/target/l2;->m:I

    if-eqz p2, :cond_0

    iget-object p1, p0, Lf1a;->a:Lcom/my/target/l2;

    iget-object p0, p0, Lf1a;->b:Ls95;

    iput-object p0, p1, Lcom/my/target/l2;->i:Ls95;

    iget-object p0, p1, Lcom/my/target/l2;->d:Landroid/widget/Button;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
