.class public final synthetic Lnk7;
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

    iput p2, p0, Lnk7;->b:I

    iput-object p1, p0, Lnk7;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lnk7;->b:I

    iget-object p0, p0, Lnk7;->c:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/wf;

    sget v0, Lcom/my/target/wf;->z:I

    iget-object p0, p0, Lcom/my/target/wf;->c:Lp9;

    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    invoke-virtual {p0, p1, v0}, Lp9;->a(Landroid/view/View;Lpfa;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchView;->a(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
