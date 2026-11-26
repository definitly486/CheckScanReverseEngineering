.class public final synthetic Le0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k;

.field public final synthetic c:Ls95;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k;Ls95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0a;->b:Lcom/my/target/k;

    iput-object p2, p0, Le0a;->c:Ls95;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/k;->l:I

    iget-object p1, p0, Le0a;->b:Lcom/my/target/k;

    iget-object p1, p1, Lcom/my/target/k;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr95;

    if-nez p1, :cond_0

    const-string p0, "AdChoicesOptionsView: listener is null, can\'t call on action click."

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Le0a;->c:Ls95;

    invoke-interface {p1, p0}, Lr95;->a(Ls95;)V

    return-void
.end method
