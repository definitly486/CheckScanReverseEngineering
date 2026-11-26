.class public final synthetic Lg2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/m5;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/m5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2a;->b:Lcom/my/target/m5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/m5;->p:I

    iget-object p0, p0, Lg2a;->b:Lcom/my/target/m5;

    iget-object p1, p0, Lcom/my/target/l2;->i:Ls95;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/my/target/l2;->k:Lbr;

    iget-object p0, p0, Lbr;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/o;

    invoke-virtual {p0, p1}, Lcom/my/target/o;->c(Ls95;)V

    :cond_0
    return-void
.end method
