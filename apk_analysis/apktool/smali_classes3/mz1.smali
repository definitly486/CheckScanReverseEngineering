.class public final synthetic Lmz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/androidadvance/topsnackbar/TSnackbar;


# direct methods
.method public synthetic constructor <init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmz1;->b:Lcom/androidadvance/topsnackbar/TSnackbar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmz1;->b:Lcom/androidadvance/topsnackbar/TSnackbar;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/androidadvance/topsnackbar/TSnackbar;->b(I)V

    return-void
.end method
