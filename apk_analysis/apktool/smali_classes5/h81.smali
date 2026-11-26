.class public final synthetic Lh81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lj81;

.field public final synthetic c:Lk81;


# direct methods
.method public synthetic constructor <init>(Lj81;Lk81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh81;->b:Lj81;

    iput-object p2, p0, Lh81;->c:Lk81;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lh81;->b:Lj81;

    iget-object p1, p1, Lj81;->b:Lne1;

    iget-object p0, p0, Lh81;->c:Lk81;

    iget-object p0, p0, Lk81;->a:Lc81;

    invoke-virtual {p1, p0}, Lne1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
