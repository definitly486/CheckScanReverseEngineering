.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "TV;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;->a:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    iput p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;->a:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$g;->b:I

    iput p0, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->L:I

    iget-object v0, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->n(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
