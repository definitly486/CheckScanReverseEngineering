.class public final synthetic Ldga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/wf;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/wf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldga;->b:Lcom/my/target/wf;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/my/target/wf;->z:I

    iget-object p0, p0, Ldga;->b:Lcom/my/target/wf;

    iget-object v0, p0, Lcom/my/target/wf;->x:Le6a;

    new-instance v1, Lup9;

    const/16 v2, 0x2000

    invoke-direct {v1, v2, v0}, Lup9;-><init>(ILe6a;)V

    iget-object p0, p0, Lcom/my/target/wf;->c:Lp9;

    invoke-virtual {p0, p1, v1}, Lp9;->a(Landroid/view/View;Lpfa;)V

    return-void
.end method
