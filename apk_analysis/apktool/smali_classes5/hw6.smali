.class public final synthetic Lhw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw6;->b:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->f:[Lze4;

    iget-object p0, p0, Lhw6;->b:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
