.class public final synthetic Lv7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7a;->b:Lcom/my/target/k1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/ra;->j:I

    iget-object p0, p0, Lv7a;->b:Lcom/my/target/k1;

    iget-object p1, p0, Lcom/my/target/k1;->h:Lcom/my/target/n0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/my/target/n0;->d()V

    :cond_0
    iget-object p1, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-object p0, p0, Lcom/my/target/k1;->d:Lj1a;

    invoke-virtual {p1, p0}, Lcom/my/target/u0;->e(Lao9;)V

    return-void
.end method
