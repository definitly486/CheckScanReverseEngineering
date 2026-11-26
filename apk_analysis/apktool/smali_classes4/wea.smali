.class public final synthetic Lwea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lwea;->b:I

    iput-object p1, p0, Lwea;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lwea;->b:I

    iget-object p0, p0, Lwea;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/c3;

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    iget-boolean v1, p0, Lcom/my/target/c3;->q:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {v0}, Lcom/my/target/hg;->f()V

    iput-boolean v1, p0, Lcom/my/target/c3;->q:Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lyads/wn;

    invoke-static {p0}, Lyads/wn;->c(Lyads/wn;)V

    return-void

    :pswitch_1
    check-cast p0, Lyads/v15;

    invoke-virtual {p0}, Lyads/v15;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
