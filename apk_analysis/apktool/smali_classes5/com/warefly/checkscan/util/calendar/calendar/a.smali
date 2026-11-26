.class public final Lcom/warefly/checkscan/util/calendar/calendar/a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final l:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;Lcom/warefly/checkscan/util/calendar/calendar/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/a;->l:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p2}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->setOnDayClickListener(Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;)V

    return-void
.end method
