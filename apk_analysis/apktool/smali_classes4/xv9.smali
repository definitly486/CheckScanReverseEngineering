.class public final synthetic Lxv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/a0;

.field public final synthetic c:Lvy9;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/a0;Lvy9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv9;->b:Lcom/my/target/a0;

    iput-object p2, p0, Lxv9;->c:Lvy9;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lxv9;->c:Lvy9;

    iget-object p0, p0, Lxv9;->b:Lcom/my/target/a0;

    iget-object p0, p0, Lcom/my/target/a0;->b:Lcom/my/target/t1$a;

    invoke-interface {p0, p1}, Lcom/my/target/t1$a;->e(Lao9;)V

    return-void
.end method
