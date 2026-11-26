.class public final Lhf9;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ljf9;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

.field public final t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lhf9;->i:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lhf9;->t:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lhf9;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lhf9;->t:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgf9;

    invoke-virtual {p0}, Lgf9;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Ljf9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lhf9;->t:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgf9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Ljf9;->l:Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvSum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lgf9;->g()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvDateTime:Landroid/widget/TextView;

    sget-object v1, Lpb2;->a:Lpb2;

    invoke-virtual {p0}, Lgf9;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v1, Lpb2;->l:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lpb2;->i(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lpb2;->f:Lfh8;

    invoke-virtual {v4}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :try_start_1
    sget-object v1, Lpb2;->m:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lpb2;->i(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lpb2;->f:Lfh8;

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :catch_1
    const-string v1, "Invalid dateString: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lif9;

    invoke-direct {v1, p1}, Lif9;-><init>(Ljf9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lgf9;->f()Lnz6;

    move-result-object v0

    sget-object v1, Ljf9$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x7f140571

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v1, 0x7f140481

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    const v0, 0x7f140562

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v2, 0x7f14056f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v2, 0x7f140572

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v2, 0x7f14047e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v2, 0x7f140570

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopAddress:Landroid/widget/TextView;

    const v2, 0x7f140573

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iput-object p0, p1, Ljf9;->n:Lgf9;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Ljf9;->o:I

    iget-object p0, p0, Lhf9;->i:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljf9;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1, p0}, Ljf9;-><init>(Lcom/warefly/checkscan/databinding/ItemQueueChequeBinding;Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;)V

    return-object p2
.end method
