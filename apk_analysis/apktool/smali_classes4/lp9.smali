.class public final synthetic Llp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lrp9;

.field public final synthetic c:Ls95;


# direct methods
.method public synthetic constructor <init>(Lrp9;Ls95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llp9;->b:Lrp9;

    iput-object p2, p0, Llp9;->c:Ls95;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Llp9;->b:Lrp9;

    iget-object p1, p1, Lrp9;->c:Lzu;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzu;->b:Ljava/lang/Object;

    check-cast p1, Lcom/my/target/h0$a;

    check-cast p1, Lcom/my/target/o;

    iget-object p0, p0, Llp9;->c:Ls95;

    invoke-virtual {p1, p0}, Lcom/my/target/o;->c(Ls95;)V

    :cond_0
    return-void
.end method
