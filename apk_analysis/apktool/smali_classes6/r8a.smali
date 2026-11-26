.class public final synthetic Lr8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lr8a;->b:I

    iput-object p2, p0, Lr8a;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lr8a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lr8a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr8a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lr8a;->c:Z

    invoke-static {v0, p0}, Lyads/wf6;->b(Landroid/view/ViewGroup;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr8a;->d:Ljava/lang/Object;

    check-cast v0, Lz8a;

    iget-boolean p0, p0, Lr8a;->c:Z

    iget v1, v0, Lz8a;->h:I

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    iput p0, v0, Lz8a;->h:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
