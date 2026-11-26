.class public final synthetic Lpk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lpk7;->b:I

    iput-object p1, p0, Lpk7;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lpk7;->b:I

    iget-object p0, p0, Lpk7;->c:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/wf;

    sget p1, Lcom/my/target/wf;->z:I

    iget-object p0, p0, Lcom/my/target/wf;->v:Lcom/my/target/r0$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/r0$a;->e()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchView;->e(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
