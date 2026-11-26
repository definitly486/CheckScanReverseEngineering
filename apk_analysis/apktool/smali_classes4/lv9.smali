.class public final synthetic Llv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/g2;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/g2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv9;->b:Lcom/my/target/g2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/my/target/g2;->s:I

    iget-object p0, p0, Llv9;->b:Lcom/my/target/g2;

    iget-object p0, p0, Lcom/my/target/g2;->r:Lcom/my/target/l$a;

    if-eqz p0, :cond_0

    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    const/4 v0, 0x2

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v0, p1}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_0
    return-void
.end method
