.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;->b:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$f;->b:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    iget-object v1, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->i:Landroid/widget/Scroller;

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j0:Z

    if-nez v3, :cond_5

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    neg-int v4, v4

    div-int/2addr v4, v3

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    add-int/2addr v4, v3

    rem-int/2addr v4, v2

    if-gez v4, :cond_3

    add-int/2addr v4, v2

    :cond_3
    iput v4, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iget-object v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->T:I

    neg-int v1, v1

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->H:I

    div-int/2addr v1, v3

    iget v3, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->K:I

    add-int/2addr v1, v3

    rem-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getLastScrollPosition()I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setLastScrollPosition(I)V

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void
.end method
