.class public final synthetic Lrh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lth6;

.field public final synthetic c:Luh6;


# direct methods
.method public synthetic constructor <init>(Lth6;Luh6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh6;->b:Lth6;

    iput-object p2, p0, Lrh6;->c:Luh6;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lrh6;->b:Lth6;

    iget-object p1, p1, Lth6;->b:Lq61;

    iget-object p0, p0, Lrh6;->c:Luh6;

    iget-object p0, p0, Luh6;->a:Lvg6;

    invoke-virtual {p1, p0}, Lq61;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
