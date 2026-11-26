.class public final synthetic Lk3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lyads/ni5;

.field public final synthetic c:Lyads/mi5;


# direct methods
.method public synthetic constructor <init>(Lyads/ni5;Lyads/mi5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3a;->b:Lyads/ni5;

    iput-object p2, p0, Lk3a;->c:Lyads/mi5;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lk3a;->b:Lyads/ni5;

    iget-object v1, p0, Lk3a;->c:Lyads/mi5;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lyads/ni5;->a(Lyads/ni5;Lyads/mi5;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
