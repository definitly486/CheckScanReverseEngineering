.class public final synthetic Lega;
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

    iput-object p1, p0, Lega;->b:Lcom/my/target/wf;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/wf;->z:I

    iget-object p0, p0, Lega;->b:Lcom/my/target/wf;

    iget-object p0, p0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0}, Lcom/my/target/w2$b;->a()V

    :cond_0
    return-void
.end method
