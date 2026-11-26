.class public final Lcom/my/target/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/g2;


# direct methods
.method public constructor <init>(Lcom/my/target/g2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/y;->b:Lcom/my/target/g2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/y;->b:Lcom/my/target/g2;

    iget-object p0, p0, Lcom/my/target/g2;->r:Lcom/my/target/l$a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0}, Lcom/my/target/w2$b;->a()V

    :cond_0
    return-void
.end method
