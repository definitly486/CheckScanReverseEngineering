.class public final synthetic Lad8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad8;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->f:[Lze4;

    iget-object p0, p0, Lad8;->b:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
